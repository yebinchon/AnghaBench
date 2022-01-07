; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32*, %struct.TYPE_7__, %struct.sfxge_port, %struct.ifnet* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sfxge_port = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ifnet = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.epoch_tracker = type { i32 }
%struct.sockaddr_dl = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@SFXGE_PORT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"port not initialized\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@SFXGE_PORT_STARTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_port_start(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.sfxge_port*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %14 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 3
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %7, align 8
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %21, i32 0, i32 2
  store %struct.sfxge_port* %22, %struct.sfxge_port** %8, align 8
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %27 = call i32 @SFXGE_PORT_LOCK(%struct.sfxge_port* %26)
  %28 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %29 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SFXGE_PORT_INITIALIZED, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @efx_filter_init(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %153

39:                                               ; preds = %1
  %40 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %41 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @efx_port_init(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %150

46:                                               ; preds = %39
  %47 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @EFX_MAC_PDU(i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @efx_mac_pdu_set(i32* %51, i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %147

56:                                               ; preds = %46
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %59 = call i32 @sfxge_port_wanted_fc(%struct.sfxge_softc* %58)
  %60 = load i32, i32* @B_TRUE, align 4
  %61 = call i32 @efx_mac_fcntl_set(i32* %57, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %146

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @NET_EPOCH_ENTER(i32 %66)
  %68 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.sockaddr_dl*
  %74 = call i32 @LLADDR(%struct.sockaddr_dl* %73)
  %75 = mul nuw i64 4, %15
  %76 = trunc i64 %75 to i32
  %77 = call i32 @bcopy(i32 %74, i32* %17, i32 %76)
  %78 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @NET_EPOCH_EXIT(i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @efx_mac_addr_set(i32* %81, i32* %17)
  store i32 %82, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %145

85:                                               ; preds = %64
  %86 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %87 = call i32 @sfxge_mac_filter_set_locked(%struct.sfxge_softc* %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %90 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %93 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i32 @efx_mac_stats_periodic(i32* %88, i32* %91, i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %144

99:                                               ; preds = %85
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* @B_FALSE, align 4
  %102 = call i32 @efx_mac_drain(i32* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %137

105:                                              ; preds = %99
  %106 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %107 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %108 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sfxge_phy_cap_mask(%struct.sfxge_softc* %106, i32 %112, i32* %12)
  store i32 %113, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %133

116:                                              ; preds = %105
  %117 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %118 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @efx_phy_adv_cap_set(i32* %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %132

124:                                              ; preds = %116
  %125 = load i64, i64* @SFXGE_PORT_STARTED, align 8
  %126 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %127 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %129 = call i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port* %128)
  %130 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %131 = call i32 @sfxge_mac_poll_work(%struct.sfxge_softc* %130, i32 0)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %157

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %115
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* @B_TRUE, align 4
  %136 = call i32 @efx_mac_drain(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %104
  %138 = load i32*, i32** %9, align 8
  %139 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %140 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* @B_FALSE, align 4
  %143 = call i32 @efx_mac_stats_periodic(i32* %138, i32* %141, i32 0, i32 %142)
  br label %144

144:                                              ; preds = %137, %98
  br label %145

145:                                              ; preds = %144, %84
  br label %146

146:                                              ; preds = %145, %63
  br label %147

147:                                              ; preds = %146, %55
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @efx_port_fini(i32* %148)
  br label %150

150:                                              ; preds = %147, %45
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @efx_filter_fini(i32* %151)
  br label %153

153:                                              ; preds = %150, %38
  %154 = load %struct.sfxge_port*, %struct.sfxge_port** %8, align 8
  %155 = call i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port* %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %153, %124
  %158 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SFXGE_PORT_LOCK(%struct.sfxge_port*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @efx_filter_init(i32*) #2

declare dso_local i32 @efx_port_init(i32*) #2

declare dso_local i64 @EFX_MAC_PDU(i32) #2

declare dso_local i32 @efx_mac_pdu_set(i32*, i64) #2

declare dso_local i32 @efx_mac_fcntl_set(i32*, i32, i32) #2

declare dso_local i32 @sfxge_port_wanted_fc(%struct.sfxge_softc*) #2

declare dso_local i32 @NET_EPOCH_ENTER(i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #2

declare dso_local i32 @NET_EPOCH_EXIT(i32) #2

declare dso_local i32 @efx_mac_addr_set(i32*, i32*) #2

declare dso_local i32 @sfxge_mac_filter_set_locked(%struct.sfxge_softc*) #2

declare dso_local i32 @efx_mac_stats_periodic(i32*, i32*, i32, i32) #2

declare dso_local i32 @efx_mac_drain(i32*, i32) #2

declare dso_local i32 @sfxge_phy_cap_mask(%struct.sfxge_softc*, i32, i32*) #2

declare dso_local i32 @efx_phy_adv_cap_set(i32*, i32) #2

declare dso_local i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port*) #2

declare dso_local i32 @sfxge_mac_poll_work(%struct.sfxge_softc*, i32) #2

declare dso_local i32 @efx_port_fini(i32*) #2

declare dso_local i32 @efx_filter_fini(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
