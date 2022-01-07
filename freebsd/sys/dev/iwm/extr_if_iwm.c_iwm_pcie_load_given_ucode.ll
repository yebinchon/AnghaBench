; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_given_ucode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_given_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_fw_img = type { i64 }

@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"working with %s CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Dual\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@IWM_LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR = common dso_local global i32 0, align 4
@IWM_LMPM_SECURE_CPU2_HDR_MEM_SPACE = common dso_local global i32 0, align 4
@IWM_CSR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_fw_img*)* @iwm_pcie_load_given_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_pcie_load_given_ucode(%struct.iwm_softc* %0, %struct.iwm_fw_img* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_fw_img*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_fw_img* %1, %struct.iwm_fw_img** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %9 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %10 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %11 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %8, i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %18 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %19 = call i32 @iwm_pcie_load_cpu_sections(%struct.iwm_softc* %17, %struct.iwm_fw_img* %18, i32 1, i32* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %26 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %31 = call i64 @iwm_nic_lock(%struct.iwm_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %35 = load i32, i32* @IWM_LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR, align 4
  %36 = load i32, i32* @IWM_LMPM_SECURE_CPU2_HDR_MEM_SPACE, align 4
  %37 = call i32 @iwm_write_prph(%struct.iwm_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %39 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %42 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %43 = call i32 @iwm_pcie_load_cpu_sections(%struct.iwm_softc* %41, %struct.iwm_fw_img* %42, i32 2, i32* %7)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %51 = call i32 @iwm_enable_interrupts(%struct.iwm_softc* %50)
  %52 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %53 = load i32, i32* @IWM_CSR_RESET, align 4
  %54 = call i32 @IWM_WRITE(%struct.iwm_softc* %52, i32 %53, i32 0)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %46, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i8*) #1

declare dso_local i32 @iwm_pcie_load_cpu_sections(%struct.iwm_softc*, %struct.iwm_fw_img*, i32, i32*) #1

declare dso_local i64 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_write_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_enable_interrupts(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
