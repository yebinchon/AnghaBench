; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmc_state = type { i32, i32 }
%struct.mca_record = type { i32 }

@cmc_state = common dso_local global %struct.cmc_state** null, align 8
@cpuid = common dso_local global i32 0, align 4
@MC_STATUS_COR_COUNT = common dso_local global i32 0, align 4
@MC_CTL2_THRESHOLD = common dso_local global i32 0, align 4
@CMCI = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.mca_record*)* @cmci_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmci_update(i32 %0, i32 %1, i32 %2, %struct.mca_record* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mca_record*, align 8
  %9 = alloca %struct.cmc_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mca_record* %3, %struct.mca_record** %8, align 8
  %14 = load %struct.cmc_state**, %struct.cmc_state*** @cmc_state, align 8
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i64 @PCPU_GET(i32 %15)
  %17 = getelementptr inbounds %struct.cmc_state*, %struct.cmc_state** %14, i64 %16
  %18 = load %struct.cmc_state*, %struct.cmc_state** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %18, i64 %20
  store %struct.cmc_state* %21, %struct.cmc_state** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MSR_MC_CTL2(i32 %22)
  %24 = call i32 @rdmsr(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mca_record*, %struct.mca_record** %8, align 8
  %26 = getelementptr inbounds %struct.mca_record, %struct.mca_record* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MC_STATUS_COR_COUNT, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 38
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.cmc_state*, %struct.cmc_state** %9, align 8
  %37 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.cmc_state*, %struct.cmc_state** %9, align 8
  %42 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @update_threshold(i32 %34, i32 %35, i32 %38, i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CMCI, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @time_uptime, align 4
  %53 = load %struct.cmc_state*, %struct.cmc_state** %9, align 8
  %54 = getelementptr inbounds %struct.cmc_state, %struct.cmc_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %48, %4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* @MC_CTL2_THRESHOLD, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @MSR_MC_CTL2(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @wrmsr(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %55
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @MSR_MC_CTL2(i32) #1

declare dso_local i32 @update_threshold(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
