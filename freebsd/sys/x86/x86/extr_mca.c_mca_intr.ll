; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_MCA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MC Type: 0x%jx  Address: 0x%jx\0A\00", align 1
@MSR_P5_MC_TYPE = common dso_local global i32 0, align 4
@MSR_P5_MC_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Machine check\00", align 1
@MCE = common dso_local global i32 0, align 4
@MSR_MCG_STATUS = common dso_local global i32 0, align 4
@MCG_STATUS_RIPV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unrecoverable machine check exception\00", align 1
@MCG_STATUS_MCIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mca_intr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpu_feature, align 4
  %5 = load i32, i32* @CPUID_MCA, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @MSR_P5_MC_TYPE, align 4
  %10 = call i32 @rdmsr(i32 %9)
  %11 = load i32, i32* @MSR_P5_MC_ADDR, align 4
  %12 = call i32 @rdmsr(i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %8, %0
  %16 = load i32, i32* @MCE, align 4
  %17 = call i32 @mca_scan(i32 %16, i32* %2)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @MSR_MCG_STATUS, align 4
  %19 = call i32 @rdmsr(i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @MCG_STATUS_RIPV, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %32, %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @cpu_spinwait()
  br label %29

34:                                               ; preds = %29
  %35 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* @MSR_MCG_STATUS, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @MCG_STATUS_MCIP, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @wrmsr(i32 %37, i32 %41)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mca_scan(i32, i32*) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
