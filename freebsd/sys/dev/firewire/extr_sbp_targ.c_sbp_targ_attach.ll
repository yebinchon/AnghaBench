; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp_targ.c_sbp_targ_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp_targ.c_sbp_targ_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_targ_softc = type { i32*, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i32, %struct.firewire_comm* }
%struct.firewire_comm = type { i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"sbp_targ\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@sbp_targ_post_explore = common dso_local global i64 0, align 8
@sbp_targ_post_busreset = common dso_local global i64 0, align 8
@MAX_LUN = common dso_local global i32 0, align 4
@MAX_INITIATORS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@sbp_targ_action = common dso_local global i32 0, align 4
@sbp_targ_poll = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@SBP_TARG_BIND_START = common dso_local global i32 0, align 4
@SBP_TARG_BIND_END = common dso_local global i32 0, align 4
@M_SBP_TARG = common dso_local global i32 0, align 4
@SBP_TARG_RECV_LEN = common dso_local global i32 0, align 4
@sbp_targ_recv = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbp_targ_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_targ_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbp_targ_softc*, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca %struct.firewire_comm*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.sbp_targ_softc*
  store %struct.sbp_targ_softc* %9, %struct.sbp_targ_softc** %4, align 8
  %10 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %11 = bitcast %struct.sbp_targ_softc* %10 to i8*
  %12 = call i32 @bzero(i8* %11, i32 64)
  %13 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %14 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %13, i32 0, i32 3
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.firewire_comm* @device_get_ivars(i32 %17)
  store %struct.firewire_comm* %18, %struct.firewire_comm** %6, align 8
  %19 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %20 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store %struct.firewire_comm* %18, %struct.firewire_comm** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %24 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load i64, i64* @sbp_targ_post_explore, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %29 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i64, i64* @sbp_targ_post_busreset, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %34 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @MAX_LUN, align 4
  %37 = load i32, i32* @MAX_INITIATORS, align 4
  %38 = mul nsw i32 %36, %37
  %39 = call %struct.cam_devq* @cam_simq_alloc(i32 %38)
  store %struct.cam_devq* %39, %struct.cam_devq** %5, align 8
  %40 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %41 = icmp eq %struct.cam_devq* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %132

44:                                               ; preds = %1
  %45 = load i32, i32* @sbp_targ_action, align 4
  %46 = load i32, i32* @sbp_targ_poll, align 4
  %47 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_get_unit(i32 %48)
  %50 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %51 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %50, i32 0, i32 3
  %52 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %53 = call i32* @cam_sim_alloc(i32 %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.sbp_targ_softc* %47, i32 %49, i32* %51, i32 1, i32 1, %struct.cam_devq* %52)
  %54 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %55 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %57 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %62 = call i32 @cam_simq_free(%struct.cam_devq* %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %132

64:                                               ; preds = %44
  %65 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %66 = call i32 @SBP_LOCK(%struct.sbp_targ_softc* %65)
  %67 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %68 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @xpt_bus_register(i32* %69, i32 %70, i32 0)
  %72 = load i64, i64* @CAM_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %123

75:                                               ; preds = %64
  %76 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %77 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %76, i32 0, i32 2
  %78 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %79 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @cam_sim_path(i32* %80)
  %82 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %83 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %84 = call i64 @xpt_create_path(i32* %77, i32* null, i32 %81, i32 %82, i32 %83)
  %85 = load i64, i64* @CAM_REQ_CMP, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %89 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @cam_sim_path(i32* %90)
  %92 = call i32 @xpt_bus_deregister(i32 %91)
  br label %123

93:                                               ; preds = %75
  %94 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %95 = call i32 @SBP_UNLOCK(%struct.sbp_targ_softc* %94)
  %96 = load i32, i32* @SBP_TARG_BIND_START, align 4
  %97 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %98 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @SBP_TARG_BIND_END, align 4
  %101 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %102 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %105 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32 @STAILQ_INIT(i32* %106)
  %108 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %109 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* @M_SBP_TARG, align 4
  %112 = load i32, i32* @SBP_TARG_RECV_LEN, align 4
  %113 = load i32, i32* @MAX_LUN, align 4
  %114 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %115 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %116 = bitcast %struct.sbp_targ_softc* %115 to i8*
  %117 = load i32, i32* @sbp_targ_recv, align 4
  %118 = call i32 @fw_xferlist_add(i32* %110, i32 %111, i32 0, i32 %112, i32 %113, %struct.firewire_comm* %114, i8* %116, i32 %117)
  %119 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %120 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %121 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %120, i32 0, i32 1
  %122 = call i32 @fw_bindadd(%struct.firewire_comm* %119, %struct.TYPE_4__* %121)
  store i32 0, i32* %2, align 4
  br label %132

123:                                              ; preds = %87, %74
  %124 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %125 = call i32 @SBP_UNLOCK(%struct.sbp_targ_softc* %124)
  %126 = load %struct.sbp_targ_softc*, %struct.sbp_targ_softc** %4, align 8
  %127 = getelementptr inbounds %struct.sbp_targ_softc, %struct.sbp_targ_softc* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @TRUE, align 4
  %130 = call i32 @cam_sim_free(i32* %128, i32 %129)
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %123, %93, %60, %42
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.firewire_comm* @device_get_ivars(i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.sbp_targ_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @SBP_LOCK(%struct.sbp_targ_softc*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @SBP_UNLOCK(%struct.sbp_targ_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @fw_xferlist_add(i32*, i32, i32, i32, i32, %struct.firewire_comm*, i8*, i32) #1

declare dso_local i32 @fw_bindadd(%struct.firewire_comm*, %struct.TYPE_4__*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
