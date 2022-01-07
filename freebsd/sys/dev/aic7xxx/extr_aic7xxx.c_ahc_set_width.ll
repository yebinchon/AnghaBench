; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_set_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_set_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i32 }
%struct.ahc_initiator_tinfo = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }

@AHC_TRANS_ACTIVE = common dso_local global i32 0, align 4
@AHC_TRANS_USER = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@AHC_TRANS_CUR = common dso_local global i32 0, align 4
@WIDEXFER = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@SCSIRATE = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: target %d using %dbit transfers\0A\00", align 1
@AHC_NEG_TO_GOAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_set_width(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_devinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahc_initiator_tinfo*, align 8
  %12 = alloca %struct.ahc_tmode_tstate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %24 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %25 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %28 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %31 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %23, i32 %26, i32 %29, i32 %32, %struct.ahc_tmode_tstate** %12)
  store %struct.ahc_initiator_tinfo* %33, %struct.ahc_initiator_tinfo** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @AHC_TRANS_USER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %5
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %41 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %5
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %51 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %55 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @AHC_TRANS_CUR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %122

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %122

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %70 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* @WIDEXFER, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %16, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load i32, i32* @WIDEXFER, align 4
  %81 = load i32, i32* %16, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %79, %66
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %86 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %91 = load i32, i32* @SCSIRATE, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @ahc_outb(%struct.ahc_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %97 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %100 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %101 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %104 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %107 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %108 = call i32 @ahc_send_async(%struct.ahc_softc* %99, i32 %102, i32 %105, i32 %106, i32 %107, i32* null)
  %109 = load i64, i64* @bootverbose, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %94
  %112 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %113 = call i8* @ahc_name(%struct.ahc_softc* %112)
  %114 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %115 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 1, %117
  %119 = mul nsw i32 8, %118
  %120 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %111, %94
  br label %122

122:                                              ; preds = %121, %62, %53
  %123 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %124 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %125 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %12, align 8
  %126 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %127 = load i32, i32* @AHC_NEG_TO_GOAL, align 4
  %128 = call i64 @ahc_update_neg_request(%struct.ahc_softc* %123, %struct.ahc_devinfo* %124, %struct.ahc_tmode_tstate* %125, %struct.ahc_initiator_tinfo* %126, i32 %127)
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %137 = call i32 @ahc_update_pending_scbs(%struct.ahc_softc* %136)
  br label %138

138:                                              ; preds = %135, %122
  ret void
}

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_send_async(%struct.ahc_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_update_neg_request(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_tmode_tstate*, %struct.ahc_initiator_tinfo*, i32) #1

declare dso_local i32 @ahc_update_pending_scbs(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
