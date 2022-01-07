; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_slot = type { i64, i32, %struct.TYPE_5__*, i32, %struct.fsl_sata_channel* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fsl_sata_channel = type { i32, i32, i32, %union.ccb*, i32, i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FSL_SATA_SLOT_RUNNING = common dso_local global i64 0, align 8
@FSL_SATA_SLOT_EXECUTING = common dso_local global i64 0, align 8
@FSL_SATA_P_CAR = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Timeout on slot %d port %d\0A\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c" ... waiting for slots %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_slot*)* @fsl_sata_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_timeout(%struct.fsl_sata_slot* %0) #0 {
  %2 = alloca %struct.fsl_sata_slot*, align 8
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.ccb*, align 8
  store %struct.fsl_sata_slot* %0, %struct.fsl_sata_slot** %2, align 8
  %7 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %7, i32 0, i32 4
  %9 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %8, align 8
  store %struct.fsl_sata_channel* %9, %struct.fsl_sata_channel** %3, align 8
  %10 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FSL_SATA_SLOT_RUNNING, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FSL_SATA_SLOT_EXECUTING, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  %26 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FSL_SATA_P_CAR, align 4
  %30 = call i32 @ATA_INL(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %33 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  %36 = and i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load i64, i64* @FSL_SATA_SLOT_EXECUTING, align 8
  %40 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %41 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %25
  %43 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %44 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %43, i32 0, i32 3
  %45 = load i32, i32* @SBT_1MS, align 4
  %46 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %47 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %45, %51
  %53 = sdiv i32 %52, 2
  %54 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %55 = call i32 @callout_reset_sbt(i32* %44, i32 %53, i32 0, i32* bitcast (void (%struct.fsl_sata_slot*)* @fsl_sata_timeout to i32*), %struct.fsl_sata_slot* %54, i32 0)
  br label %150

56:                                               ; preds = %19
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %59 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %62 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 15
  %68 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %67)
  %69 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %69, i32 0, i32 3
  %71 = load %union.ccb*, %union.ccb** %70, align 8
  %72 = icmp ne %union.ccb* %71, null
  br i1 %72, label %73, label %108

73:                                               ; preds = %56
  %74 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %75 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %74, i32 0, i32 3
  %76 = load %union.ccb*, %union.ccb** %75, align 8
  store %union.ccb* %76, %union.ccb** %6, align 8
  %77 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %77, i32 0, i32 3
  store %union.ccb* null, %union.ccb** %78, align 8
  %79 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %80 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %81 = or i32 %79, %80
  %82 = load %union.ccb*, %union.ccb** %6, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %union.ccb*, %union.ccb** %6, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %73
  %93 = load %union.ccb*, %union.ccb** %6, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @xpt_freeze_devq(i32 %96, i32 1)
  %98 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %99 = load %union.ccb*, %union.ccb** %6, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_6__*
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %92, %73
  %105 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %106 = load %union.ccb*, %union.ccb** %6, align 8
  %107 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %105, %union.ccb* %106)
  br label %108

108:                                              ; preds = %104, %56
  %109 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %110 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %115 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @xpt_freeze_simq(i32 %116, i32 1)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %120 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 1, %121
  %123 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %124 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %128 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %131 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = xor i32 %132, -1
  %134 = and i32 %129, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %118
  %137 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %138 = call i32 @fsl_sata_process_timeout(%struct.fsl_sata_channel* %137)
  br label %150

139:                                              ; preds = %118
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %142 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %145 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = xor i32 %146, -1
  %148 = and i32 %143, %147
  %149 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %18, %42, %139, %136
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.fsl_sata_slot*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @fsl_sata_process_timeout(%struct.fsl_sata_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
