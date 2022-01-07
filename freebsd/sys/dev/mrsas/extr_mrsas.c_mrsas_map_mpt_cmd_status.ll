; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_map_mpt_cmd_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_map_mpt_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { %struct.mrsas_softc* }
%struct.mrsas_softc = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FW cmd complete status %x\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_map_mpt_cmd_status(%struct.mrsas_mpt_cmd* %0, %union.ccb* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.mrsas_mpt_cmd*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mrsas_softc*, align 8
  %14 = alloca i32*, align 8
  store %struct.mrsas_mpt_cmd* %0, %struct.mrsas_mpt_cmd** %7, align 8
  store %union.ccb* %1, %union.ccb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %15, i32 0, i32 0
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %16, align 8
  store %struct.mrsas_softc* %17, %struct.mrsas_softc** %13, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %76 [
    i32 130, label %19
    i32 128, label %24
    i32 129, label %24
    i32 131, label %48
    i32 132, label %48
    i32 133, label %69
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* @CAM_REQ_CMP, align 4
  %21 = load %union.ccb*, %union.ccb** %8, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %90

24:                                               ; preds = %6, %6
  %25 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %26 = load %union.ccb*, %union.ccb** %8, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %union.ccb*, %union.ccb** %8, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load i32*, i32** %14, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @memcpy(i32* %35, i32* %36, i32 18)
  %38 = load %union.ccb*, %union.ccb** %8, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 18, i32* %40, align 4
  %41 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %42 = load %union.ccb*, %union.ccb** %8, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %34, %24
  br label %90

48:                                               ; preds = %6, %6
  %49 = load %union.ccb*, %union.ccb** %8, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @CAM_LUN_INVALID, align 4
  %56 = load %union.ccb*, %union.ccb** %8, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %63 = load %union.ccb*, %union.ccb** %8, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %54
  br label %90

69:                                               ; preds = %6
  %70 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %71 = load %union.ccb*, %union.ccb** %8, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %90

76:                                               ; preds = %6
  %77 = load %struct.mrsas_softc*, %struct.mrsas_softc** %13, align 8
  %78 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %83 = load %union.ccb*, %union.ccb** %8, align 8
  %84 = bitcast %union.ccb* %83 to %struct.TYPE_3__*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %union.ccb*, %union.ccb** %8, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %76, %69, %68, %47, %19
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
