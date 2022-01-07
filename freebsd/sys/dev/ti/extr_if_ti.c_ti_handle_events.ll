; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_handle_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, %struct.TYPE_7__, i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ti_event_desc* }
%struct.ti_event_desc = type { i32 }
%struct.TYPE_5__ = type { i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@TI_EV_CODE_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"10/100 link up\0A\00", align 1
@TI_EV_CODE_GIG_LINK_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"gigabit link up\0A\00", align 1
@TI_EV_CODE_LINK_DOWN = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@TI_EV_CODE_ERR_INVAL_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid command\0A\00", align 1
@TI_EV_CODE_ERR_UNIMP_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"unknown command\0A\00", align 1
@TI_EV_CODE_ERR_BADCFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"bad config data\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"unknown event: %d\0A\00", align 1
@TI_EVENT_RING_CNT = common dso_local global i32 0, align 4
@TI_GCR_EVENTCONS_IDX = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_handle_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_handle_events(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ti_event_desc*, align 8
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %4 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.ti_event_desc*, %struct.ti_event_desc** %6, align 8
  %8 = icmp eq %struct.ti_event_desc* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %189

10:                                               ; preds = %1
  %11 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %20 = call i32 @bus_dmamap_sync(i32 %14, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %166, %10
  %22 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %178

30:                                               ; preds = %21
  %31 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.ti_event_desc*, %struct.ti_event_desc** %33, align 8
  %35 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ti_event_desc, %struct.ti_event_desc* %34, i64 %37
  store %struct.ti_event_desc* %38, %struct.ti_event_desc** %3, align 8
  %39 = load %struct.ti_event_desc*, %struct.ti_event_desc** %3, align 8
  %40 = call i32 @TI_EVENT_EVENT(%struct.ti_event_desc* %39)
  switch i32 %40, label %159 [
    i32 131, label %41
    i32 133, label %122
    i32 132, label %155
    i32 128, label %158
    i32 129, label %158
    i32 130, label %158
  ]

41:                                               ; preds = %30
  %42 = load %struct.ti_event_desc*, %struct.ti_event_desc** %3, align 8
  %43 = call i32 @TI_EVENT_CODE(%struct.ti_event_desc* %42)
  %44 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TI_EV_CODE_LINK_UP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %41
  %52 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* @LINK_STATE_UP, align 4
  %56 = call i32 @if_link_state_change(%struct.TYPE_8__* %54, i32 %55)
  %57 = call i32 @IF_Mbps(i32 100)
  %58 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @bootverbose, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %51
  br label %121

70:                                               ; preds = %41
  %71 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TI_EV_CODE_GIG_LINK_UP, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* @LINK_STATE_UP, align 4
  %81 = call i32 @if_link_state_change(%struct.TYPE_8__* %79, i32 %80)
  %82 = call i32 @IF_Gbps(i64 1)
  %83 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @bootverbose, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %76
  br label %120

95:                                               ; preds = %70
  %96 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TI_EV_CODE_LINK_DOWN, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* @LINK_STATE_DOWN, align 4
  %106 = call i32 @if_link_state_change(%struct.TYPE_8__* %104, i32 %105)
  %107 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* @bootverbose, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %101
  br label %119

119:                                              ; preds = %118, %95
  br label %120

120:                                              ; preds = %119, %94
  br label %121

121:                                              ; preds = %120, %69
  br label %166

122:                                              ; preds = %30
  %123 = load %struct.ti_event_desc*, %struct.ti_event_desc** %3, align 8
  %124 = call i32 @TI_EVENT_CODE(%struct.ti_event_desc* %123)
  %125 = load i32, i32* @TI_EV_CODE_ERR_INVAL_CMD, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %154

132:                                              ; preds = %122
  %133 = load %struct.ti_event_desc*, %struct.ti_event_desc** %3, align 8
  %134 = call i32 @TI_EVENT_CODE(%struct.ti_event_desc* %133)
  %135 = load i32, i32* @TI_EV_CODE_ERR_UNIMP_CMD, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %153

142:                                              ; preds = %132
  %143 = load %struct.ti_event_desc*, %struct.ti_event_desc** %3, align 8
  %144 = call i32 @TI_EVENT_CODE(%struct.ti_event_desc* %143)
  %145 = load i32, i32* @TI_EV_CODE_ERR_BADCFG, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %149 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %137
  br label %154

154:                                              ; preds = %153, %127
  br label %166

155:                                              ; preds = %30
  %156 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %157 = call i32 @ti_init2(%struct.ti_softc* %156)
  br label %166

158:                                              ; preds = %30, %30, %30
  br label %166

159:                                              ; preds = %30
  %160 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %161 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ti_event_desc*, %struct.ti_event_desc** %3, align 8
  %164 = call i32 @TI_EVENT_EVENT(%struct.ti_event_desc* %163)
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %159, %158, %155, %154, %121
  %167 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @TI_EVENT_RING_CNT, align 4
  %171 = call i32 @TI_INC(i64 %169, i32 %170)
  %172 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %173 = load i32, i32* @TI_GCR_EVENTCONS_IDX, align 4
  %174 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %175 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @CSR_WRITE_4(%struct.ti_softc* %172, i32 %173, i64 %176)
  br label %21

178:                                              ; preds = %21
  %179 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %180 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %184 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %188 = call i32 @bus_dmamap_sync(i32 %182, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %178, %9
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @TI_EVENT_EVENT(%struct.ti_event_desc*) #1

declare dso_local i32 @TI_EVENT_CODE(%struct.ti_event_desc*) #1

declare dso_local i32 @if_link_state_change(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @IF_Mbps(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @IF_Gbps(i64) #1

declare dso_local i32 @ti_init2(%struct.ti_softc*) #1

declare dso_local i32 @TI_INC(i64, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
