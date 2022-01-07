; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.amd_et_state = type { i64 }

@amd_elvt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"ELVT offset is not set\00", align 1
@mca_msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MC_MISC_AMD_INT_MASK = common dso_local global i32 0, align 4
@MC_MISC_AMD_INT_LVT = common dso_local global i32 0, align 4
@MC_MISC_AMD_LVT_MASK = common dso_local global i32 0, align 4
@MC_MISC_AMD_LVT_SHIFT = common dso_local global i32 0, align 4
@MC_MISC_AMD_CNT_MASK = common dso_local global i32 0, align 4
@MC_MISC_AMD_CNT_MAX = common dso_local global i64 0, align 8
@MC_MISC_AMD_CNT_SHIFT = common dso_local global i32 0, align 4
@MC_MISC_AMD_OVERFLOW = common dso_local global i32 0, align 4
@MC_MISC_AMD_CNTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_et_state*, i32)* @amd_thresholding_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_thresholding_start(%struct.amd_et_state* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_et_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amd_et_state* %0, %struct.amd_et_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @amd_elvt, align 8
  %7 = icmp sge i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 %10(i32 %11)
  %13 = call i32 @rdmsr(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @MC_MISC_AMD_INT_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MC_MISC_AMD_INT_LVT, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @MC_MISC_AMD_LVT_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* @amd_elvt, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @MC_MISC_AMD_LVT_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @MC_MISC_AMD_CNT_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i64, i64* @MC_MISC_AMD_CNT_MAX, align 8
  %36 = load %struct.amd_et_state*, %struct.amd_et_state** %3, align 8
  %37 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @MC_MISC_AMD_CNT_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @MC_MISC_AMD_OVERFLOW, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @MC_MISC_AMD_CNTEN, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_msr_ops, i32 0, i32 0), align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %52(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @wrmsr(i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
