; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_et_state = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@amd_et_state = common dso_local global %struct.amd_et_state** null, align 8
@cpuid = common dso_local global i32 0, align 4
@mca_msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MC_MISC_AMD_CNT_MASK = common dso_local global i32 0, align 4
@MC_MISC_AMD_CNT_SHIFT = common dso_local global i32 0, align 4
@MC_MISC_AMD_CNT_MAX = common dso_local global i32 0, align 4
@MC_MISC_AMD_OVERFLOW = common dso_local global i32 0, align 4
@CMCI = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @amd_thresholding_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_thresholding_update(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd_et_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.amd_et_state**, %struct.amd_et_state*** @amd_et_state, align 8
  %12 = load i32, i32* @cpuid, align 4
  %13 = call i64 @PCPU_GET(i32 %12)
  %14 = getelementptr inbounds %struct.amd_et_state*, %struct.amd_et_state** %11, i64 %13
  %15 = load %struct.amd_et_state*, %struct.amd_et_state** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %15, i64 %17
  store %struct.amd_et_state* %18, %struct.amd_et_state** %7, align 8
  %19 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 %19(i32 %20)
  %22 = call i32 @rdmsr(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MC_MISC_AMD_CNT_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MC_MISC_AMD_CNT_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @MC_MISC_AMD_CNT_MAX, align 4
  %30 = load %struct.amd_et_state*, %struct.amd_et_state** %7, align 8
  %31 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = sub nsw i32 %28, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.amd_et_state*, %struct.amd_et_state** %7, align 8
  %38 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.amd_et_state*, %struct.amd_et_state** %7, align 8
  %42 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MC_MISC_AMD_CNT_MAX, align 4
  %45 = call i32 @update_threshold(i32 %35, i32 %36, i32 %39, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.amd_et_state*, %struct.amd_et_state** %7, align 8
  %48 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MC_MISC_AMD_CNT_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @MC_MISC_AMD_CNT_MAX, align 4
  %54 = load %struct.amd_et_state*, %struct.amd_et_state** %7, align 8
  %55 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = load i32, i32* @MC_MISC_AMD_CNT_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @MC_MISC_AMD_OVERFLOW, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %66(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @wrmsr(i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @CMCI, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %3
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @time_uptime, align 4
  %79 = load %struct.amd_et_state*, %struct.amd_et_state** %7, align 8
  %80 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74, %3
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @update_threshold(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
