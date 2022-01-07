; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_shmem_mf_cfg_info_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_shmem_mf_cfg_info_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bxe_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bxe_mf_info }
%struct.bxe_mf_info = type { i32, i32*, i32, i32, i64 }

@func_mf_config = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Invalid VLAN (%d)\0A\00", align 1
@FUNC_MF_CFG_PROTOCOL_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_PROTOCOL_ISCSI = common dso_local global i32 0, align 4
@MF_PROTO_SUPPORT_ISCSI = common dso_local global i32 0, align 4
@FUNC_MF_CFG_PROTOCOL_FCOE = common dso_local global i32 0, align 4
@MF_PROTO_SUPPORT_FCOE = common dso_local global i32 0, align 4
@MF_PROTO_SUPPORT_ETHERNET = common dso_local global i32 0, align 4
@CHIP_4_PORT_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_get_shmem_mf_cfg_info_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_get_shmem_mf_cfg_info_sd(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_mf_info*, align 8
  %5 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.bxe_mf_info* %8, %struct.bxe_mf_info** %4, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = call i64 @SC_ABS_FUNC(%struct.bxe_softc* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @MFCFG_RD(%struct.bxe_softc* %9, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %19 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %18, i32 0, i32 4
  store i64 %17, i64* %19, align 8
  %20 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %21 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %23 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @VALID_OVLAN(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %29 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %30 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @BLOGE(%struct.bxe_softc* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 1, i32* %2, align 4
  br label %85

33:                                               ; preds = %1
  %34 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %35 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = call i64 @SC_VN(%struct.bxe_softc* %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_ISCSI, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i32, i32* @MF_PROTO_SUPPORT_ISCSI, align 4
  %47 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %48 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %76

51:                                               ; preds = %33
  %52 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %53 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %56 = call i64 @SC_VN(%struct.bxe_softc* %55)
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_FCOE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load i32, i32* @MF_PROTO_SUPPORT_FCOE, align 4
  %65 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %66 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %75

69:                                               ; preds = %51
  %70 = load i32, i32* @MF_PROTO_SUPPORT_ETHERNET, align 4
  %71 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %72 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %45
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %78 = call i64 @CHIP_PORT_MODE(%struct.bxe_softc* %77)
  %79 = load i64, i64* @CHIP_4_PORT_MODE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 2, i32 4
  %83 = load %struct.bxe_mf_info*, %struct.bxe_mf_info** %4, align 8
  %84 = getelementptr inbounds %struct.bxe_mf_info, %struct.bxe_mf_info* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %76, %27
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @MFCFG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @VALID_OVLAN(i64) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i64) #1

declare dso_local i64 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_PORT_MODE(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
