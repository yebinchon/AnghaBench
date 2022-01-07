; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_powerpc.c_pmc_save_user_callchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_powerpc.c_pmc_save_user_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@PSL_SF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_save_user_callchain(i64* %0, i32 %1, %struct.trapframe* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trapframe* %2, %struct.trapframe** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %11 = call i64 @PMC_TRAPFRAME_TO_PC(%struct.trapframe* %10)
  %12 = load i64*, i64** %4, align 8
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  store i64 %11, i64* %16, align 8
  %17 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %18 = call i64 @PMC_TRAPFRAME_TO_FP(%struct.trapframe* %17)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %8, align 8
  store i64* null, i64** %7, align 8
  br label %20

20:                                               ; preds = %41, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i64*, i64** %8, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ule i64* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %44

29:                                               ; preds = %24
  %30 = load i64*, i64** %8, align 8
  store i64* %30, i64** %7, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = call i64 @fuword32(i64* %32)
  %34 = load i64*, i64** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %33, i64* %37, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = call i64 @fuword32(i64* %38)
  %40 = inttoptr i64 %39 to i64*
  store i64* %40, i64** %8, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %20

44:                                               ; preds = %28, %20
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i64 @PMC_TRAPFRAME_TO_PC(%struct.trapframe*) #1

declare dso_local i64 @PMC_TRAPFRAME_TO_FP(%struct.trapframe*) #1

declare dso_local i64 @fuword32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
