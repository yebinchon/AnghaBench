; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_process_request_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_process_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i32, %struct.TYPE_6__**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*, %union.ccb*)* @fsl_sata_process_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_process_request_sense(%struct.fsl_sata_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %6 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %union.ccb*, %union.ccb** %4, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAM_STATUS_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CAM_REQ_CMP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %22 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %21
  store i32 %32, i32* %30, align 4
  br label %59

33:                                               ; preds = %2
  %34 = load i32, i32* @CAM_STATUS_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %35
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %48 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %49 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %47
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %33, %20
  %60 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %61 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %62 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %60, %struct.TYPE_6__* %67)
  %69 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %73
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %76 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load %union.ccb*, %union.ccb** %4, align 8
  %80 = call i32 @xpt_free_ccb(%union.ccb* %79)
  %81 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %82 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @xpt_release_simq(i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %struct.TYPE_6__*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
