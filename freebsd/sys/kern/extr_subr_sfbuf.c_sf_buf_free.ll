; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sfbuf.c_sf_buf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sfbuf.c_sf_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buf = type { i64, i32* }

@PMAP_HAS_DMAP = common dso_local global i64 0, align 8
@sf_buf_lock = common dso_local global i32 0, align 4
@sf_buf_freelist = common dso_local global i32 0, align 4
@free_entry = common dso_local global i32 0, align 4
@nsfbufsused = common dso_local global i32 0, align 4
@list_entry = common dso_local global i32 0, align 4
@sf_buf_alloc_want = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sf_buf_free(%struct.sf_buf* %0) #0 {
  %2 = alloca %struct.sf_buf*, align 8
  store %struct.sf_buf* %0, %struct.sf_buf** %2, align 8
  %3 = load i64, i64* @PMAP_HAS_DMAP, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = call i32 @mtx_lock(i32* @sf_buf_lock)
  %8 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %9 = getelementptr inbounds %struct.sf_buf, %struct.sf_buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %13 = getelementptr inbounds %struct.sf_buf, %struct.sf_buf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %6
  %17 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %18 = load i32, i32* @free_entry, align 4
  %19 = call i32 @TAILQ_INSERT_TAIL(i32* @sf_buf_freelist, %struct.sf_buf* %17, i32 %18)
  %20 = load i32, i32* @nsfbufsused, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @nsfbufsused, align 4
  %22 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %23 = call i64 @sf_buf_unmap(%struct.sf_buf* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %27 = getelementptr inbounds %struct.sf_buf, %struct.sf_buf* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %29 = load i32, i32* @list_entry, align 4
  %30 = call i32 @LIST_REMOVE(%struct.sf_buf* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %16
  %32 = load i64, i64* @sf_buf_alloc_want, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @wakeup(i32* @sf_buf_freelist)
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %6
  %38 = call i32 @mtx_unlock(i32* @sf_buf_lock)
  br label %39

39:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sf_buf*, i32) #1

declare dso_local i64 @sf_buf_unmap(%struct.sf_buf*) #1

declare dso_local i32 @LIST_REMOVE(%struct.sf_buf*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
