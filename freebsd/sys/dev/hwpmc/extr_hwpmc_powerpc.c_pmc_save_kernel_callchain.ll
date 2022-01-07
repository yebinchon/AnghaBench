; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_powerpc.c_pmc_save_kernel_callchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_powerpc.c_pmc_save_kernel_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@OFFSET = common dso_local global i64 0, align 8
@trapexit = common dso_local global i32 0, align 4
@asttrapexit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_save_kernel_callchain(i64* %0, i32 %1, %struct.trapframe* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trapframe* %2, %struct.trapframe** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %12 = call i64 @PMC_TRAPFRAME_TO_PC(%struct.trapframe* %11)
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* %10, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  store i64 %12, i64* %17, align 8
  %18 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %19 = call i64 @PMC_TRAPFRAME_TO_FP(%struct.trapframe* %18)
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %8, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %7, align 8
  br label %23

23:                                               ; preds = %64, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load i64*, i64** %8, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = icmp ule i64* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %67

32:                                               ; preds = %27
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %36, 3
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %40, 256
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %32
  br label %67

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @OFFSET, align 8
  %46 = add i64 %44, %45
  %47 = icmp eq i64 %46, ptrtoint (i32* @trapexit to i64)
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @OFFSET, align 8
  %51 = add i64 %49, %50
  %52 = icmp eq i64 %51, ptrtoint (i32* @asttrapexit to i64)
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  br label %67

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  %60 = load i64*, i64** %8, align 8
  store i64* %60, i64** %7, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64* %63, i64** %8, align 8
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %23

67:                                               ; preds = %53, %42, %31, %23
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i64 @PMC_TRAPFRAME_TO_PC(%struct.trapframe*) #1

declare dso_local i64 @PMC_TRAPFRAME_TO_FP(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
