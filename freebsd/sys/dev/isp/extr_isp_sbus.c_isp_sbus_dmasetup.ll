; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_dmasetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_dmasetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ccb_scsiio = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, %struct.ccb_scsiio*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%union.ccb = type { i32 }

@dma2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"deferred dma allocation not supported\00", align 1
@CMD_COMPLETE = common dso_local global i32 0, align 4
@MUSHERR_NOQENTRIES = common dso_local global i32 0, align 4
@CMD_EAGAIN = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_UNREC_HBA_ERROR = common dso_local global i32 0, align 4
@CMD_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.ccb_scsiio*, i8*)* @isp_sbus_dmasetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_sbus_dmasetup(%struct.TYPE_10__* %0, %struct.ccb_scsiio* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %14, align 8
  %15 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store %struct.ccb_scsiio* %15, %struct.ccb_scsiio** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %28 = call %struct.TYPE_11__* @PISP_PCMD(%struct.ccb_scsiio* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %32 = bitcast %struct.ccb_scsiio* %31 to %union.ccb*
  %33 = load i32, i32* @dma2, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = call i32 @bus_dmamap_load_ccb(i32 %26, i32 %30, %union.ccb* %32, i32 %33, %struct.TYPE_9__* %34, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EINPROGRESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %45 = call %struct.TYPE_11__* @PISP_PCMD(%struct.ccb_scsiio* %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bus_dmamap_unload(i32 %43, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load i32, i32* @ISP_LOGERR, align 4
  %54 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @isp_prt(%struct.TYPE_10__* %52, i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %68

55:                                               ; preds = %3
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %58, %55
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  %74 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MUSHERR_NOQENTRIES, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %81, i32* %11, align 4
  br label %108

82:                                               ; preds = %73
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @EFBIG, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %90 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %91 = call i32 @XS_SETERR(%struct.ccb_scsiio* %89, i32 %90)
  br label %107

92:                                               ; preds = %82
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EINVAL, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %100 = load i32, i32* @CAM_REQ_INVALID, align 4
  %101 = call i32 @XS_SETERR(%struct.ccb_scsiio* %99, i32 %100)
  br label %106

102:                                              ; preds = %92
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %104 = load i32, i32* @CAM_UNREC_HBA_ERROR, align 4
  %105 = call i32 @XS_SETERR(%struct.ccb_scsiio* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %112

110:                                              ; preds = %68
  %111 = load i32, i32* @CMD_QUEUED, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_11__* @PISP_PCMD(%struct.ccb_scsiio*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @isp_prt(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @XS_SETERR(%struct.ccb_scsiio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
