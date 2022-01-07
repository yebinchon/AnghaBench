; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_coal_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_coal_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*, i32, i32, i32, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*)* @bnxt_hwrm_set_coal_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_coal_params(%struct.bnxt_softc* %0, i32 %1, i32 %2, i32 %3, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %4) #0 {
  %6 = alloca %struct.bnxt_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %4, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i8* @htole16(i32 %11)
  %13 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %14 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %13, i32 0, i32 7
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @htole16(i32 %15)
  %17 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %18 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 16
  %21 = call i8* @htole16(i32 %20)
  %22 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %23 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @htole16(i32 %24)
  %26 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %27 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 16
  %30 = call i8* @htole16(i32 %29)
  %31 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %32 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 2
  %35 = call i8* @htole16(i32 %34)
  %36 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %37 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 4
  %40 = call i8* @htole16(i32 %39)
  %41 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %42 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 4
  %45 = call i8* @htole16(i32 %44)
  %46 = load %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input*, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input** %10, align 8
  %47 = getelementptr inbounds %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input, %struct.hwrm_ring_cmpl_ring_cfg_aggint_params_input* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  ret void
}

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
