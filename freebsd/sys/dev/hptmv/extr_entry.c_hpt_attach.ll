; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hpt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hpt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.cam_sim*, i32, i32 }
%struct.cam_sim = type { i32 }
%struct.cam_devq = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s Version %s \0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@DRIVER_VERSION = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@hpt_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CAM_UNQUEUED_INDEX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ENXIO\0A\00", align 1
@hpt_action = common dso_local global i32 0, align 4
@hpt_poll = common dso_local global i32 0, align 4
@PROC_DIR_NAME = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@hpt_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hpt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.cam_devq*, align 8
  %8 = alloca %struct.cam_sim*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %union.ccb* @device_get_softc(i32 %9)
  store %union.ccb* %10, %union.ccb** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DRIVER_NAME, align 4
  %13 = load i32, i32* @DRIVER_VERSION, align 4
  %14 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = bitcast %union.ccb* %16 to i32*
  store i32 %15, i32* %17, align 8
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = call i32 @init_adapter(%union.ccb* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %182

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %25 = load %union.ccb*, %union.ccb** %4, align 8
  %26 = bitcast %union.ccb* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = load i32, i32* @RF_SHAREABLE, align 4
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @bus_alloc_resource_any(i32 %27, i32 %28, i32* %5, i32 %31)
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to i32**
  store i32* %32, i32** %34, align 8
  %35 = icmp eq i32* %32, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = call i32 @hpt_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %182

39:                                               ; preds = %24
  %40 = load %union.ccb*, %union.ccb** %4, align 8
  %41 = bitcast %union.ccb* %40 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to i32**
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @INTR_TYPE_CAM, align 4
  %47 = load i32, i32* @INTR_MPSAFE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @hpt_intr, align 4
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = bitcast %union.ccb* %51 to i32*
  %53 = call i64 @bus_setup_intr(i32 %42, i32* %45, i32 %48, i32* null, i32 %49, %union.ccb* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %39
  %56 = call i32 @hpt_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(%union.ccb* %57, i32 %58)
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %182

61:                                               ; preds = %39
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = call i64 @malloc(i32 16, i32 %62, i32 %63)
  %65 = inttoptr i64 %64 to %union.ccb*
  store %union.ccb* %65, %union.ccb** %6, align 8
  %66 = icmp ne %union.ccb* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %union.ccb*, %union.ccb** %6, align 8
  %69 = call i32 @bzero(%union.ccb* %68, i32 16)
  %70 = load %union.ccb*, %union.ccb** %6, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @CAM_UNQUEUED_INDEX, align 4
  %75 = load %union.ccb*, %union.ccb** %6, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  br label %81

79:                                               ; preds = %61
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* %2, align 4
  br label %182

81:                                               ; preds = %67
  %82 = call %struct.cam_devq* @cam_simq_alloc(i32 8)
  store %struct.cam_devq* %82, %struct.cam_devq** %7, align 8
  %83 = icmp eq %struct.cam_devq* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = call i32 @KdPrint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  store i32 %86, i32* %2, align 4
  br label %182

87:                                               ; preds = %81
  %88 = load i32, i32* @hpt_action, align 4
  %89 = load i32, i32* @hpt_poll, align 4
  %90 = load i32, i32* @PROC_DIR_NAME, align 4
  %91 = call i32 @__str(i32 %90)
  %92 = load %union.ccb*, %union.ccb** %4, align 8
  %93 = load %union.ccb*, %union.ccb** %4, align 8
  %94 = bitcast %union.ccb* %93 to i32*
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_get_unit(i32 %95)
  %97 = load %union.ccb*, %union.ccb** %4, align 8
  %98 = bitcast %union.ccb* %97 to i32*
  %99 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %100 = call %struct.cam_sim* @cam_sim_alloc(i32 %88, i32 %89, i32 %91, %union.ccb* %92, i32 %96, i32* %98, i32 1, i32 8, %struct.cam_devq* %99)
  store %struct.cam_sim* %100, %struct.cam_sim** %8, align 8
  %101 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %102 = icmp eq %struct.cam_sim* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %105 = call i32 @cam_simq_free(%struct.cam_devq* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %2, align 4
  br label %182

107:                                              ; preds = %87
  %108 = load %union.ccb*, %union.ccb** %4, align 8
  %109 = bitcast %union.ccb* %108 to i32*
  %110 = call i32 @mtx_lock(i32* %109)
  %111 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %112 = load i32, i32* %3, align 4
  %113 = call i64 @xpt_bus_register(%struct.cam_sim* %111, i32 %112, i32 0)
  %114 = load i64, i64* @CAM_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @cam_sim_free(%struct.cam_sim* %117, i32 %118)
  %120 = load %union.ccb*, %union.ccb** %4, align 8
  %121 = bitcast %union.ccb* %120 to i32*
  %122 = call i32 @mtx_unlock(i32* %121)
  store %struct.cam_sim* null, %struct.cam_sim** %8, align 8
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %2, align 4
  br label %182

124:                                              ; preds = %107
  %125 = load %union.ccb*, %union.ccb** %4, align 8
  %126 = bitcast %union.ccb* %125 to i32*
  %127 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %128 = call i32 @cam_sim_path(%struct.cam_sim* %127)
  %129 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %130 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %131 = call i64 @xpt_create_path(i32* %126, i32* null, i32 %128, i32 %129, i32 %130)
  %132 = load i64, i64* @CAM_REQ_CMP, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %124
  %135 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %136 = call i32 @cam_sim_path(%struct.cam_sim* %135)
  %137 = call i32 @xpt_bus_deregister(i32 %136)
  %138 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %139 = load i32, i32* @TRUE, align 4
  %140 = call i32 @cam_sim_free(%struct.cam_sim* %138, i32 %139)
  %141 = load %union.ccb*, %union.ccb** %4, align 8
  %142 = bitcast %union.ccb* %141 to i32*
  %143 = call i32 @mtx_unlock(i32* %142)
  store %struct.cam_sim* null, %struct.cam_sim** %8, align 8
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %2, align 4
  br label %182

145:                                              ; preds = %124
  %146 = load %union.ccb*, %union.ccb** %4, align 8
  %147 = bitcast %union.ccb* %146 to i32*
  %148 = call i32 @mtx_unlock(i32* %147)
  %149 = load %union.ccb*, %union.ccb** %6, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_6__*
  %151 = load %union.ccb*, %union.ccb** %4, align 8
  %152 = bitcast %union.ccb* %151 to i32*
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %150, i32 %153, i32 5)
  %155 = load i32, i32* @XPT_SASYNC_CB, align 4
  %156 = load %union.ccb*, %union.ccb** %6, align 8
  %157 = bitcast %union.ccb* %156 to %struct.TYPE_6__*
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* @AC_LOST_DEVICE, align 4
  %160 = load %union.ccb*, %union.ccb** %6, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_5__*
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @hpt_async, align 4
  %164 = load %union.ccb*, %union.ccb** %6, align 8
  %165 = bitcast %union.ccb* %164 to %struct.TYPE_5__*
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 8
  %167 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %168 = load %union.ccb*, %union.ccb** %6, align 8
  %169 = bitcast %union.ccb* %168 to %struct.TYPE_5__*
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store %struct.cam_sim* %167, %struct.cam_sim** %170, align 8
  %171 = load %union.ccb*, %union.ccb** %6, align 8
  %172 = call i32 @xpt_action(%union.ccb* %171)
  %173 = load %union.ccb*, %union.ccb** %6, align 8
  %174 = load i32, i32* @M_DEVBUF, align 4
  %175 = call i32 @free(%union.ccb* %173, i32 %174)
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @device_get_unit(i32 %176)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %145
  %180 = call i32 (...) @launch_worker_thread()
  br label %181

181:                                              ; preds = %179, %145
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %134, %116, %103, %84, %79, %55, %36, %22
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %union.ccb* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @init_adapter(%union.ccb*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @hpt_printk(i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %union.ccb*, i32*) #1

declare dso_local i32 @free(%union.ccb*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i32, %union.ccb*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @__str(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @launch_worker_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
