; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/usb/extr_r21au_attach.c_r21a_attach_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/usb/extr_r21au_attach.c_r21a_attach_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc*, i32 }
%struct.r12a_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@M_RTWN_PRIV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@R12A_RXCKSUM_EN = common dso_local global i32 0, align 4
@R12A_RXCKSUM6_EN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"radar_detection\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Enable radar detection (untested)\00", align 1
@rtwn_nop_softc_chan = common dso_local global i32 0, align 4
@r21a_set_band_2ghz = common dso_local global i32 0, align 4
@r21a_set_band_5ghz = common dso_local global i32 0, align 4
@r12au_init_burstlen_usb2 = common dso_local global i32 0, align 4
@r21a_init_ampdu_fwhw = common dso_local global i32 0, align 4
@r21a_crystalcap_write = common dso_local global i32 0, align 4
@r21a_iq_calib_fw_supported = common dso_local global i32 0, align 4
@r21a_iq_calib_sw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r21a_attach_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r21a_attach_private(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %4, align 8
  %14 = load i32, i32* @M_RTWN_PRIV, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.r12a_softc* @malloc(i32 56, i32 %14, i32 %17)
  store %struct.r12a_softc* %18, %struct.r12a_softc** %5, align 8
  %19 = load i32, i32* @R12A_RXCKSUM_EN, align 4
  %20 = load i32, i32* @R12A_RXCKSUM6_EN, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %23 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %25 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %24, i32 0, i32 12
  store i64 0, i64* %25, align 8
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %27 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %28 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %27)
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %31 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %32 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %31, i32 0, i32 12
  %33 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %34 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %26, i32 %28, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30, i64* %32, i64 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @rtwn_nop_softc_chan, align 4
  %38 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %39 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @r21a_set_band_2ghz, align 4
  %41 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %42 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @r21a_set_band_5ghz, align 4
  %44 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %45 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @r12au_init_burstlen_usb2, align 4
  %47 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %48 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @r21a_init_ampdu_fwhw, align 4
  %50 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %51 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @r21a_crystalcap_write, align 4
  %53 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %54 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @r21a_iq_calib_fw_supported, align 4
  %56 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %57 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @r21a_iq_calib_sw, align 4
  %59 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %60 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %62 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %61, i32 0, i32 1
  store i32 94, i32* %62, align 4
  %63 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %64 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %66 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %65, i32 0, i32 3
  store i32 16, i32* %66, align 4
  %67 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %68 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %69 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %68, i32 0, i32 0
  store %struct.r12a_softc* %67, %struct.r12a_softc** %69, align 8
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.r12a_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i64*, i64, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
