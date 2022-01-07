; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_default_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s: unable to allocate ahd_tmode_tstate.  Failing attach\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@AHD_SYNCRATE_160 = common dso_local global i32 0, align 4
@MAX_OFFSET = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RD_STRM = common dso_local global i32 0, align 4
@MSG_EXT_PPR_WR_FLOW = common dso_local global i32 0, align 4
@MSG_EXT_PPR_HOLD_MCS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@AHD_RTI = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RTI = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHD_SYNCRATE_DT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_default_config(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahd_devinfo, align 4
  %6 = alloca %struct.ahd_initiator_tinfo*, align 8
  %7 = alloca %struct.ahd_tmode_tstate*, align 8
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 0
  store i32 7, i32* %10, align 4
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @ahd_alloc_tstate(%struct.ahd_softc* %11, i32 %14, i8 signext 65)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = call i8* @ahd_name(%struct.ahd_softc* %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %141

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %137, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %140

29:                                               ; preds = %25
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %30, i8 signext 65, i32 %33, i32 %34, %struct.ahd_tmode_tstate** %7)
  store %struct.ahd_initiator_tinfo* %35, %struct.ahd_initiator_tinfo** %6, align 8
  %36 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %37 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %40 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 4, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %7, align 8
  %51 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @AHD_SYNCRATE_160, align 4
  %60 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %61 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @MAX_OFFSET, align 4
  %64 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %65 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @MSG_EXT_PPR_RD_STRM, align 4
  %68 = load i32, i32* @MSG_EXT_PPR_WR_FLOW, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MSG_EXT_PPR_HOLD_MCS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %79 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AHD_RTI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %29
  %88 = load i32, i32* @MSG_EXT_PPR_RTI, align 4
  %89 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %90 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %29
  %95 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %96 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %97 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %100 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 2, i32* %101, align 4
  %102 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %103 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 2, i32* %104, align 4
  %105 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %106 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 2, i32* %107, align 4
  %108 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %109 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 2, i32* %110, align 4
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %116 = load i32, i32* @ROLE_INITIATOR, align 4
  %117 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %5, i32 %113, i32 %114, i32 %115, i8 signext 65, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %7, align 8
  %121 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %125 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %126 = load i32, i32* @AHD_TRANS_CUR, align 4
  %127 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @TRUE, align 4
  %130 = call i32 @ahd_set_width(%struct.ahd_softc* %124, %struct.ahd_devinfo* %5, i32 %125, i32 %128, i32 %129)
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %132 = load i32, i32* @AHD_TRANS_CUR, align 4
  %133 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @TRUE, align 4
  %136 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %131, %struct.ahd_devinfo* %5, i32 0, i32 0, i32 0, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %94
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %25

140:                                              ; preds = %25
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %17
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32* @ahd_alloc_tstate(%struct.ahd_softc*, i32, i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
