; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_report_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_report_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, %struct.bnxt_link_info, i32 }
%struct.bnxt_link_info = type { i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@HWRM_PORT_PHY_QCFG_OUTPUT_DUPLEX_CFG_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"full duplex\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"half duplex\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FC - receive & transmit\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"FC - transmit\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"FC - receive\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"FC - none\00", align 1
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Link is UP %s, %s - %d Mbps \0A\00", align 1
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Link is Down\0A\00", align 1
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_report_link(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.bnxt_link_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 2
  store %struct.bnxt_link_info* %7, %struct.bnxt_link_info** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %152

21:                                               ; preds = %15
  %22 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %31 = call i32 @BNXT_IS_FLOW_CTRL_CHANGED(%struct.bnxt_link_info* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %152

34:                                               ; preds = %29, %21
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %35
  %41 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %42 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HWRM_PORT_PHY_QCFG_OUTPUT_DUPLEX_CFG_FULL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %48

47:                                               ; preds = %40
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %77

60:                                               ; preds = %48
  %61 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %62 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %76

67:                                               ; preds = %60
  %68 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %69 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %75

74:                                               ; preds = %67
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %66
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %79 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LINK_STATE_UP, align 4
  %82 = call i32 @IF_Gbps(i32 100)
  %83 = call i32 @iflib_link_state_change(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %85 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %90 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 100
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %87, i8* %88, i32 %92)
  br label %107

94:                                               ; preds = %35
  %95 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %96 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @LINK_STATE_DOWN, align 4
  %99 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %99, i32 0, i32 2
  %101 = call i32 @bnxt_get_baudrate(%struct.bnxt_link_info* %100)
  %102 = call i32 @iflib_link_state_change(i32 %97, i32 %98, i32 %101)
  %103 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %107

107:                                              ; preds = %94, %77
  %108 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %109 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %112 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %114 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %117 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %119 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %123 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %126 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %130 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %133 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %137 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %140 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ifmedia_removeall(i32 %141)
  %143 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %144 = call i32 @bnxt_add_media_types(%struct.bnxt_softc* %143)
  %145 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %146 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IFM_ETHER, align 4
  %149 = load i32, i32* @IFM_AUTO, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @ifmedia_set(i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %107, %33, %20
  ret void
}

declare dso_local i32 @BNXT_IS_FLOW_CTRL_CHANGED(%struct.bnxt_link_info*) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bnxt_get_baudrate(%struct.bnxt_link_info*) #1

declare dso_local i32 @ifmedia_removeall(i32) #1

declare dso_local i32 @bnxt_add_media_types(%struct.bnxt_softc*) #1

declare dso_local i32 @ifmedia_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
