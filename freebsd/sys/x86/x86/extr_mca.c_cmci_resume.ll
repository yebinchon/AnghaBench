; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmc_state = type { i64 }

@mca_banks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CPU %d has more MC banks\00", align 1
@cpuid = common dso_local global i32 0, align 4
@cmci_mask = common dso_local global i32 0, align 4
@cmc_state = common dso_local global %struct.cmc_state** null, align 8
@MC_CTL2_THRESHOLD = common dso_local global i32 0, align 4
@MC_CTL2_CMCI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cmci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmc_state*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @mca_banks, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @cpuid, align 4
  %10 = call i64 @PCPU_GET(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @KASSERT(i32 %8, i8* %11)
  %13 = load i32, i32* @cmci_mask, align 4
  %14 = call i64 @PCPU_GET(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.cmc_state**, %struct.cmc_state*** @cmc_state, align 8
  %23 = load i32, i32* @cpuid, align 4
  %24 = call i64 @PCPU_GET(i32 %23)
  %25 = getelementptr inbounds %struct.cmc_state*, %struct.cmc_state** %22, i64 %24
  %26 = load %struct.cmc_state*, %struct.cmc_state** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %26, i64 %28
  store %struct.cmc_state* %29, %struct.cmc_state** %3, align 8
  %30 = load %struct.cmc_state*, %struct.cmc_state** %3, align 8
  %31 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @MSR_MC_CTL2(i32 %32)
  %34 = call i32 @rdmsr(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @MC_CTL2_CMCI_EN, align 4
  %40 = or i32 %39, 1
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @MSR_MC_CTL2(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @wrmsr(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @MSR_MC_CTL2(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
