; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_shmem_mf_cfg_info_si.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_shmem_mf_cfg_info_si.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bxe_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bxe_mf_info }
%struct.bxe_mf_info = type { i32, i32, i32 }

@func_ext_config = common dso_local global %struct.TYPE_4__* null, align 8
@MACP_FUNC_CFG_FLAGS_MASK = common dso_local global i32 0, align 4
@CHIP_4_PORT_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_get_shmem_mf_cfg_info_si to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_shmem_mf_cfg_info_si(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_mf_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.bxe_mf_info* %7, %struct.bxe_mf_info** %3, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_ext_config, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = call i64 @SC_ABS_FUNC(%struct.bxe_softc* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MFCFG_RD(%struct.bxe_softc* %8, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MACP_FUNC_CFG_FLAGS_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %3, align 8
  %22 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = call i32 @bxe_get_shmem_ext_proto_support_flags(%struct.bxe_softc* %23)
  %25 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %3, align 8
  %26 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %28 = call i64 @CHIP_PORT_MODE(%struct.bxe_softc* %27)
  %29 = load i64, i64* @CHIP_4_PORT_MODE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 4
  %33 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %3, align 8
  %34 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret i32 0
}

declare dso_local i32 @MFCFG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_get_shmem_ext_proto_support_flags(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_PORT_MODE(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
