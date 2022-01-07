; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32*, i32, i32*, i32*, i32**, i32, %struct.ifnet*, i32*, i32*, i32*, i32*, i32*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@ifaddr_event = common dso_local global i32 0, align 4
@ifnet_event = common dso_local global i32 0, align 4
@ether_ifattach_event = common dso_local global i32 0, align 4
@ifnet_departure_event = common dso_local global i32 0, align 4
@ifnet_link_event = common dso_local global i32 0, align 4
@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hn_tx_taskque = common dso_local global i32** null, align 8
@hn_tx_taskq_cnt = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hn_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.hn_softc* @device_get_softc(i32 %7)
  store %struct.hn_softc* %8, %struct.hn_softc** %3, align 8
  %9 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 14
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %18 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @vmbus_chan_is_revoked(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @vmbus_xact_ctx_orphan(i32* %25)
  br label %27

27:                                               ; preds = %22, %16, %1
  %28 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %28, i32 0, i32 13
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @ifaddr_event, align 4
  %34 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 13
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @EVENTHANDLER_DEREGISTER(i32 %33, i32* %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 12
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @ifnet_event, align 4
  %45 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %46 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %45, i32 0, i32 12
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @EVENTHANDLER_DEREGISTER(i32 %44, i32* %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %51 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %50, i32 0, i32 11
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @ether_ifattach_event, align 4
  %56 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %57 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %56, i32 0, i32 11
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @EVENTHANDLER_DEREGISTER(i32 %55, i32* %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %62 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %61, i32 0, i32 10
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @ifnet_departure_event, align 4
  %67 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %68 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @EVENTHANDLER_DEREGISTER(i32 %66, i32* %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %73 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @ifnet_link_event, align 4
  %78 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %79 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %78, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @EVENTHANDLER_DEREGISTER(i32 %77, i32* %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %84 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %83, i32 0, i32 8
  %85 = load %struct.ifnet*, %struct.ifnet** %84, align 8
  store %struct.ifnet* %85, %struct.ifnet** %5, align 8
  %86 = call i32 (...) @__compiler_membar()
  %87 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %88 = icmp ne %struct.ifnet* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %91 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %92 = call i32 @hn_ifnet_detevent(%struct.hn_softc* %90, %struct.ifnet* %91)
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* %2, align 4
  %95 = call i64 @device_is_attached(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %93
  %98 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %99 = call i32 @HN_LOCK(%struct.hn_softc* %98)
  %100 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %101 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %97
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %115 = call i32 @hn_stop(%struct.hn_softc* %114, i32 1)
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %118 = call i32 @hn_suspend_mgmt(%struct.hn_softc* %117)
  %119 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %120 = call i32 @hn_synth_detach(%struct.hn_softc* %119)
  br label %121

121:                                              ; preds = %116, %97
  %122 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %123 = call i32 @HN_UNLOCK(%struct.hn_softc* %122)
  %124 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %125 = call i32 @ether_ifdetach(%struct.ifnet* %124)
  br label %126

126:                                              ; preds = %121, %93
  %127 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %128 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %127, i32 0, i32 7
  %129 = call i32 @ifmedia_removeall(i32* %128)
  %130 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %131 = call i32 @hn_destroy_rx_data(%struct.hn_softc* %130)
  %132 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %133 = call i32 @hn_destroy_tx_data(%struct.hn_softc* %132)
  %134 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %135 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %134, i32 0, i32 6
  %136 = load i32**, i32*** %135, align 8
  %137 = icmp ne i32** %136, null
  br i1 %137, label %138, label %167

138:                                              ; preds = %126
  %139 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %140 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %139, i32 0, i32 6
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32**, i32*** @hn_tx_taskque, align 8
  %143 = icmp ne i32** %141, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %158, %144
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @hn_tx_taskq_cnt, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %151 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %150, i32 0, i32 6
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @taskqueue_free(i32* %156)
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %145

161:                                              ; preds = %145
  %162 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %163 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %162, i32 0, i32 6
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* @M_DEVBUF, align 4
  %166 = call i32 @free(i32** %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %138, %126
  %168 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %169 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @taskqueue_free(i32* %170)
  %172 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %173 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %178 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @taskqueue_free(i32* %179)
  br label %181

181:                                              ; preds = %176, %167
  %182 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %183 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %188 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @vmbus_chan_unset_orphan(i32 %189)
  %191 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %192 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @vmbus_xact_ctx_destroy(i32* %193)
  br label %195

195:                                              ; preds = %186, %181
  %196 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %197 = call i32 @if_free(%struct.ifnet* %196)
  %198 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %199 = call i32 @HN_LOCK_DESTROY(%struct.hn_softc* %198)
  %200 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %201 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %200, i32 0, i32 1
  %202 = call i32 @rm_destroy(i32* %201)
  ret i32 0
}

declare dso_local %struct.hn_softc* @device_get_softc(i32) #1

declare dso_local i64 @vmbus_chan_is_revoked(i32) #1

declare dso_local i32 @vmbus_xact_ctx_orphan(i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @hn_ifnet_detevent(%struct.hn_softc*, %struct.ifnet*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @HN_LOCK(%struct.hn_softc*) #1

declare dso_local i32 @hn_stop(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_suspend_mgmt(%struct.hn_softc*) #1

declare dso_local i32 @hn_synth_detach(%struct.hn_softc*) #1

declare dso_local i32 @HN_UNLOCK(%struct.hn_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @hn_destroy_rx_data(%struct.hn_softc*) #1

declare dso_local i32 @hn_destroy_tx_data(%struct.hn_softc*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @vmbus_chan_unset_orphan(i32) #1

declare dso_local i32 @vmbus_xact_ctx_destroy(i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @HN_LOCK_DESTROY(%struct.hn_softc*) #1

declare dso_local i32 @rm_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
