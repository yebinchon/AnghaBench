; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cfumass_softc* }
%struct.cfumass_softc = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"go\00", align 1
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid CTL status %#x\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"sc_ctl_io is %p, should be NULL\00", align 1
@CTL_IO_TASK = common dso_local global i64 0, align 8
@CTL_TASK_I_T_NEXUS_RESET = common dso_local global i64 0, align 8
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT_STATUS = common dso_local global i32 0, align 4
@CTL_FLAG_STATUS_SENT = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_SCSI_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i64 0, align 8
@CFUMASS_T_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @cfumass_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfumass_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.cfumass_softc*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_7__*
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.cfumass_softc*, %struct.cfumass_softc** %10, align 8
  store %struct.cfumass_softc* %11, %struct.cfumass_softc** %3, align 8
  %12 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %13 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %15 = bitcast %union.ctl_io* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CTL_STATUS_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CTL_STATUS_NONE, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %22, i8* %28)
  %30 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %31 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %36 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 @KASSERT(i32 %34, i8* %38)
  %40 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CTL_IO_TASK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %1
  %47 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %48 = bitcast %union.ctl_io* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CTL_TASK_I_T_NEXUS_RESET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %55 = call i32 @ctl_free_io(%union.ctl_io* %54)
  br label %131

56:                                               ; preds = %46, %1
  %57 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %58 = bitcast %union.ctl_io* %57 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %66 = bitcast %union.ctl_io* %65 to %struct.TYPE_7__*
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CTL_FLAG_ABORT_STATUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64, %56
  %73 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %74 = bitcast %union.ctl_io* %73 to %struct.TYPE_7__*
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CTL_FLAG_STATUS_SENT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %64
  %81 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %82 = call i32 @ctl_free_io(%union.ctl_io* %81)
  br label %131

83:                                               ; preds = %72
  %84 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %85 = bitcast %union.ctl_io* %84 to %struct.TYPE_7__*
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CTL_STATUS_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @CTL_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %94 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %98

95:                                               ; preds = %83
  %96 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %97 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %100 = bitcast %union.ctl_io* %99 to %struct.TYPE_7__*
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CTL_STATUS_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @CTL_SCSI_ERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %98
  %108 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %109 = bitcast %union.ctl_io* %108 to %struct.TYPE_8__*
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SCSI_STATUS_CHECK_COND, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %116 = call i32 @ctl_queue_sense(%union.ctl_io* %115)
  br label %120

117:                                              ; preds = %107, %98
  %118 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %119 = call i32 @ctl_free_io(%union.ctl_io* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %122 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %121)
  %123 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %124 = load i32, i32* @CFUMASS_T_STATUS, align 4
  %125 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %123, i32 %124)
  %126 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %127 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %126)
  %128 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %129 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %128, i32 0, i32 1
  %130 = call i32 @refcount_release(i32* %129)
  br label %131

131:                                              ; preds = %120, %80, %53
  ret void
}

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

declare dso_local i32 @ctl_queue_sense(%union.ctl_io*) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @cfumass_transfer_start(%struct.cfumass_softc*, i32) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
