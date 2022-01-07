; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_pic_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_pic_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_pic = type { i64, i32, i32, i32 }

@pic_list_lock = common dso_local global i32 0, align 4
@M_INTRNG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pic child lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@pic_list = common dso_local global i32 0, align 4
@pic_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intr_pic* (i32, i64, i32)* @pic_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intr_pic* @pic_create(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.intr_pic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intr_pic*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @mtx_lock(i32* @pic_list_lock)
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.intr_pic* @pic_lookup_locked(i32 %10, i64 %11, i32 %12)
  store %struct.intr_pic* %13, %struct.intr_pic** %8, align 8
  %14 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %15 = icmp ne %struct.intr_pic* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @mtx_unlock(i32* @pic_list_lock)
  %18 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  store %struct.intr_pic* %18, %struct.intr_pic** %4, align 8
  br label %48

19:                                               ; preds = %3
  %20 = load i32, i32* @M_INTRNG, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.intr_pic* @malloc(i32 24, i32 %20, i32 %23)
  store %struct.intr_pic* %24, %struct.intr_pic** %8, align 8
  %25 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %26 = icmp eq %struct.intr_pic* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @mtx_unlock(i32* @pic_list_lock)
  store %struct.intr_pic* null, %struct.intr_pic** %4, align 8
  br label %48

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %32 = getelementptr inbounds %struct.intr_pic, %struct.intr_pic* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %35 = getelementptr inbounds %struct.intr_pic, %struct.intr_pic* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %38 = getelementptr inbounds %struct.intr_pic, %struct.intr_pic* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %40 = getelementptr inbounds %struct.intr_pic, %struct.intr_pic* %39, i32 0, i32 2
  %41 = load i32, i32* @MTX_SPIN, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  %44 = load i32, i32* @pic_next, align 4
  %45 = call i32 @SLIST_INSERT_HEAD(i32* @pic_list, %struct.intr_pic* %43, i32 %44)
  %46 = call i32 @mtx_unlock(i32* @pic_list_lock)
  %47 = load %struct.intr_pic*, %struct.intr_pic** %8, align 8
  store %struct.intr_pic* %47, %struct.intr_pic** %4, align 8
  br label %48

48:                                               ; preds = %29, %27, %16
  %49 = load %struct.intr_pic*, %struct.intr_pic** %4, align 8
  ret %struct.intr_pic* %49
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.intr_pic* @pic_lookup_locked(i32, i64, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.intr_pic* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.intr_pic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
