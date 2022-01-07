; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_datamove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_datamove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cfumass_softc* }
%struct.cfumass_softc = type { i64, %union.ctl_io* }
%struct.TYPE_6__ = type { i32 (%union.ctl_io.0*)* }
%union.ctl_io.0 = type opaque

@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"sc_ctl_io is %p, should be NULL\00", align 1
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@CBWFLAGS_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"wrong bCBWFlags 0x%x, should be 0x%x\00", align 1
@CFUMASS_T_DATA_IN = common dso_local global i32 0, align 4
@CBWFLAGS_OUT = common dso_local global i64 0, align 8
@CFUMASS_T_DATA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @cfumass_datamove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfumass_datamove(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.cfumass_softc*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_5__*
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.cfumass_softc*, %struct.cfumass_softc** %10, align 8
  store %struct.cfumass_softc* %11, %struct.cfumass_softc** %3, align 8
  %12 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %13 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %15 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %14)
  %16 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %16, i32 0, i32 1
  %18 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %19 = icmp eq %union.ctl_io* %18, null
  %20 = zext i1 %19 to i32
  %21 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %21, i32 0, i32 1
  %23 = load %union.ctl_io*, %union.ctl_io** %22, align 8
  %24 = bitcast %union.ctl_io* %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  %26 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %27 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %28 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %27, i32 0, i32 1
  store %union.ctl_io* %26, %union.ctl_io** %28, align 8
  %29 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %30 = bitcast %union.ctl_io* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %1
  %38 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %39 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CBWFLAGS_IN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %45 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %46 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CBWFLAGS_IN, align 8
  %49 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %47, i64 %48)
  br label %74

50:                                               ; preds = %37
  %51 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %52 = load i32, i32* @CFUMASS_T_DATA_IN, align 4
  %53 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %51, i32 %52)
  br label %71

54:                                               ; preds = %1
  %55 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %56 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CBWFLAGS_OUT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %62 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %63 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CBWFLAGS_OUT, align 8
  %66 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %65)
  br label %74

67:                                               ; preds = %54
  %68 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %69 = load i32, i32* @CFUMASS_T_DATA_OUT, align 4
  %70 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %50
  %72 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %73 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %72)
  br label %87

74:                                               ; preds = %60, %43
  %75 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %76 = bitcast %union.ctl_io* %75 to %struct.TYPE_6__*
  %77 = call i32 @ctl_set_data_phase_error(%struct.TYPE_6__* %76)
  %78 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32 (%union.ctl_io.0*)*, i32 (%union.ctl_io.0*)** %80, align 8
  %82 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %83 = bitcast %union.ctl_io* %82 to %union.ctl_io.0*
  %84 = call i32 %81(%union.ctl_io.0* %83)
  %85 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %86 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %85, i32 0, i32 1
  store %union.ctl_io* null, %union.ctl_io** %86, align 8
  br label %87

87:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CFUMASS_WARN(%struct.cfumass_softc*, i8*, i64, i64) #1

declare dso_local i32 @cfumass_transfer_start(%struct.cfumass_softc*, i32) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @ctl_set_data_phase_error(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
