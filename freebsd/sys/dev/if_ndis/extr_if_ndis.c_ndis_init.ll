; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i64, i32, i32, i32, %struct.ieee80211com, i64, i32, %struct.TYPE_2__*, i64, %struct.ifnet*, i64, i32, i32, i64, i32 }
%struct.ieee80211com = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32, i32 }

@PNPBus = common dso_local global i64 0, align 8
@ndisusb_halt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to initialize the device: %d\0A\00", align 1
@NDIS_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"set filter failed: %d\0A\00", align 1
@ETHERMTU = common dso_local global i32 0, align 4
@OID_GEN_CURRENT_LOOKAHEAD = common dso_local global i32 0, align 4
@LINK_STATE_UNKNOWN = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ndis_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ndis_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ndis_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ndis_softc*
  store %struct.ndis_softc* %10, %struct.ndis_softc** %3, align 8
  %11 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %191

16:                                               ; preds = %1
  %17 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %18 = call i32 @ndis_stop(%struct.ndis_softc* %17)
  %19 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PNPBus, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* @ndisusb_halt, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %29 = call i32 @ndis_init_nic(%struct.ndis_softc* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %191

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* @NDIS_PACKET_TYPE_DIRECTED, align 4
  %41 = load i32, i32* @NDIS_PACKET_TYPE_BROADCAST, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %50, i32 0, i32 4
  store %struct.ieee80211com* %51, %struct.ieee80211com** %7, align 8
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @NDIS_PACKET_TYPE_PROMISCUOUS, align 4
  %58 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %49
  br label %80

63:                                               ; preds = %39
  %64 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %64, i32 0, i32 9
  %66 = load %struct.ifnet*, %struct.ifnet** %65, align 8
  store %struct.ifnet* %66, %struct.ifnet** %8, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_PROMISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load i32, i32* @NDIS_PACKET_TYPE_PROMISCUOUS, align 4
  %75 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %63
  br label %80

80:                                               ; preds = %79, %62
  store i32 4, i32* %5, align 4
  %81 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %82 = load i32, i32* @OID_GEN_CURRENT_PACKET_FILTER, align 4
  %83 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %83, i32 0, i32 1
  %85 = call i32 @ndis_set_info(%struct.ndis_softc* %81, i32 %82, i32* %84, i32* %5)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %89, i32 0, i32 14
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @ETHERMTU, align 4
  store i32 %100, i32* %4, align 4
  br label %107

101:                                              ; preds = %94
  %102 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %102, i32 0, i32 9
  %104 = load %struct.ifnet*, %struct.ifnet** %103, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %101, %99
  store i32 4, i32* %5, align 4
  %108 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %109 = load i32, i32* @OID_GEN_CURRENT_LOOKAHEAD, align 4
  %110 = call i32 @ndis_set_info(%struct.ndis_softc* %108, i32 %109, i32* %4, i32* %5)
  %111 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %112 = call i32 @ndis_setmulti(%struct.ndis_softc* %111)
  %113 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %114 = call i32 @ndis_set_offload(%struct.ndis_softc* %113)
  %115 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %116 = call i32 @NDIS_LOCK(%struct.ndis_softc* %115)
  %117 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %117, i32 0, i32 13
  store i64 0, i64* %118, align 8
  %119 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %123 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %124, i32 0, i32 10
  store i64 0, i64* %125, align 8
  %126 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %107
  %131 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %131, i32 0, i32 9
  %133 = load %struct.ifnet*, %struct.ifnet** %132, align 8
  %134 = load i32, i32* @LINK_STATE_UNKNOWN, align 4
  %135 = call i32 @if_link_state_change(%struct.ifnet* %133, i32 %134)
  %136 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %137 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %137, i32 0, i32 9
  %139 = load %struct.ifnet*, %struct.ifnet** %138, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %136
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %146 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %145, i32 0, i32 9
  %147 = load %struct.ifnet*, %struct.ifnet** %146, align 8
  %148 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %144
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %130, %107
  %152 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %153 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %152, i32 0, i32 8
  store i64 0, i64* %153, align 8
  %154 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %154, i32 0, i32 7
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %162 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %161, i32 0, i32 7
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i32 3, i32* %164, align 4
  br label %165

165:                                              ; preds = %160, %151
  %166 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %167 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %166, i32 0, i32 7
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %172 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %174 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %173, i32 0, i32 6
  %175 = load i32, i32* @hz, align 4
  %176 = load i32, i32* @ndis_tick, align 4
  %177 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %178 = call i32 @callout_reset(i32* %174, i32 %175, i32 %176, %struct.ndis_softc* %177)
  %179 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %179, i32 0, i32 3
  store i32 1, i32* %180, align 8
  %181 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %182 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %181)
  %183 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %165
  %188 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %188, i32 0, i32 4
  %190 = call i32 @ieee80211_start_all(%struct.ieee80211com* %189)
  br label %191

191:                                              ; preds = %15, %32, %187, %165
  ret void
}

declare dso_local i32 @ndis_stop(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_init_nic(%struct.ndis_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ndis_set_info(%struct.ndis_softc*, i32, i32*, i32*) #1

declare dso_local i32 @ndis_setmulti(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_set_offload(%struct.ndis_softc*) #1

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ndis_softc*) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
