; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmc_state = type { i32 }

@mca_banks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CPU %d has more MC banks\00", align 1
@cpuid = common dso_local global i32 0, align 4
@MC_CTL2_CMCI_EN = common dso_local global i32 0, align 4
@MC_CTL2_THRESHOLD = common dso_local global i32 0, align 4
@cmc_state = common dso_local global %struct.cmc_state** null, align 8
@cmci_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cmci_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmci_monitor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmc_state*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @mca_banks, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @cpuid, align 4
  %10 = call i32 @PCPU_GET(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(i32 %8, i8* %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @MSR_MC_CTL2(i32 %14)
  %16 = call i32 @rdmsr(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MC_CTL2_CMCI_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %88

22:                                               ; preds = %1
  %23 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @MC_CTL2_CMCI_EN, align 4
  %28 = or i32 %27, 1
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @MSR_MC_CTL2(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @wrmsr(i32 %32, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @MSR_MC_CTL2(i32 %35)
  %37 = call i32 @rdmsr(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MC_CTL2_CMCI_EN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %22
  br label %88

43:                                               ; preds = %22
  %44 = load %struct.cmc_state**, %struct.cmc_state*** @cmc_state, align 8
  %45 = load i32, i32* @cpuid, align 4
  %46 = call i32 @PCPU_GET(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cmc_state*, %struct.cmc_state** %44, i64 %47
  %49 = load %struct.cmc_state*, %struct.cmc_state** %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %49, i64 %51
  store %struct.cmc_state* %52, %struct.cmc_state** %3, align 8
  %53 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, 32767
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @MSR_MC_CTL2(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wrmsr(i32 %60, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @MSR_MC_CTL2(i32 %63)
  %65 = call i32 @rdmsr(i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.cmc_state*, %struct.cmc_state** %3, align 8
  %70 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @MSR_MC_CTL2(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @wrmsr(i32 %78, i32 %79)
  %81 = load i32, i32* @cmci_mask, align 4
  %82 = load i32, i32* @cmci_mask, align 4
  %83 = call i32 @PCPU_GET(i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = shl i32 1, %84
  %86 = or i32 %83, %85
  %87 = call i32 @PCPU_SET(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %43, %42, %21
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @MSR_MC_CTL2(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
