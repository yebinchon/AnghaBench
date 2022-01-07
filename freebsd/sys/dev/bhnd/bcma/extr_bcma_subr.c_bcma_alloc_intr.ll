; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_alloc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_alloc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_intr = type { i32, i64, i64, i64, i64 }

@BCMA_OOB_NUM_BANKS = common dso_local global i64 0, align 8
@BCMA_OOB_NUM_SEL = common dso_local global i64 0, align 8
@BCMA_OOB_NUM_BUSLINES = common dso_local global i64 0, align 8
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcma_intr* @bcma_alloc_intr(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bcma_intr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bcma_intr*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @BCMA_OOB_NUM_BANKS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.bcma_intr* null, %struct.bcma_intr** %4, align 8
  br label %45

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BCMA_OOB_NUM_SEL, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.bcma_intr* null, %struct.bcma_intr** %4, align 8
  br label %45

18:                                               ; preds = %13
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @BCMA_OOB_NUM_BUSLINES, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.bcma_intr* null, %struct.bcma_intr** %4, align 8
  br label %45

23:                                               ; preds = %18
  %24 = load i32, i32* @M_BHND, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = call %struct.bcma_intr* @malloc(i32 40, i32 %24, i32 %25)
  store %struct.bcma_intr* %26, %struct.bcma_intr** %8, align 8
  %27 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  %28 = icmp eq %struct.bcma_intr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.bcma_intr* null, %struct.bcma_intr** %4, align 8
  br label %45

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  %33 = getelementptr inbounds %struct.bcma_intr, %struct.bcma_intr* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  %36 = getelementptr inbounds %struct.bcma_intr, %struct.bcma_intr* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  %39 = getelementptr inbounds %struct.bcma_intr, %struct.bcma_intr* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  %41 = getelementptr inbounds %struct.bcma_intr, %struct.bcma_intr* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  %43 = getelementptr inbounds %struct.bcma_intr, %struct.bcma_intr* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.bcma_intr*, %struct.bcma_intr** %8, align 8
  store %struct.bcma_intr* %44, %struct.bcma_intr** %4, align 8
  br label %45

45:                                               ; preds = %30, %29, %22, %17, %12
  %46 = load %struct.bcma_intr*, %struct.bcma_intr** %4, align 8
  ret %struct.bcma_intr* %46
}

declare dso_local %struct.bcma_intr* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
