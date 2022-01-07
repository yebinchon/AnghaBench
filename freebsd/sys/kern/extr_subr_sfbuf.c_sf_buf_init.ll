; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sfbuf.c_sf_buf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sfbuf.c_sf_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buf = type { i64 }

@PMAP_HAS_DMAP = common dso_local global i64 0, align 8
@NSFBUFS = common dso_local global i32 0, align 4
@nsfbufs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kern.ipc.nsfbufs\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@sf_buf_hashmask = common dso_local global i32 0, align 4
@sf_buf_active = common dso_local global i32 0, align 4
@sf_buf_freelist = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@free_entry = common dso_local global i32 0, align 4
@sf_buf_alloc_want = common dso_local global i64 0, align 8
@sf_buf_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sf_buf\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sf_buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sf_buf_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sf_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* @PMAP_HAS_DMAP, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @NSFBUFS, align 4
  store i32 %10, i32* @nsfbufs, align 4
  %11 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* @nsfbufs)
  %12 = load i32, i32* @nsfbufs, align 4
  %13 = load i32, i32* @M_TEMP, align 4
  %14 = call i32 @hashinit(i32 %12, i32 %13, i32* @sf_buf_hashmask)
  store i32 %14, i32* @sf_buf_active, align 4
  %15 = call i32 @TAILQ_INIT(i32* @sf_buf_freelist)
  %16 = load i32, i32* @nsfbufs, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i64 @kva_alloc(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i32, i32* @nsfbufs, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_TEMP, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.sf_buf* @malloc(i32 %23, i32 %24, i32 %27)
  store %struct.sf_buf* %28, %struct.sf_buf** %3, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %51, %9
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @nsfbufs, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = load %struct.sf_buf*, %struct.sf_buf** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sf_buf, %struct.sf_buf* %40, i64 %42
  %44 = getelementptr inbounds %struct.sf_buf, %struct.sf_buf* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load %struct.sf_buf*, %struct.sf_buf** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sf_buf, %struct.sf_buf* %45, i64 %47
  %49 = load i32, i32* @free_entry, align 4
  %50 = call i32 @TAILQ_INSERT_TAIL(i32* @sf_buf_freelist, %struct.sf_buf* %48, i32 %49)
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %29

54:                                               ; preds = %29
  store i64 0, i64* @sf_buf_alloc_want, align 8
  %55 = load i32, i32* @MTX_DEF, align 4
  %56 = call i32 @mtx_init(i32* @sf_buf_lock, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %55)
  br label %57

57:                                               ; preds = %54, %8
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @kva_alloc(i32) #1

declare dso_local %struct.sf_buf* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sf_buf*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
