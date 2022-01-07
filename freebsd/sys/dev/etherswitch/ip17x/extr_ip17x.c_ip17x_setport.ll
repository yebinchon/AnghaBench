; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ip17x_softc = type { i64, i32*, i64, i64*, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ip17x_softc.0*)* }
%struct.ip17x_softc.0 = type opaque
%struct.ifmedia = type { i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { %struct.ifmedia }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@IP175C = common dso_local global i32 0, align 4
@IP175C_LAST_VLAN = common dso_local global i64 0, align 8
@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_STRIPTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @ip17x_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17x_setport(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.ip17x_softc*, align 8
  %7 = alloca %struct.ifmedia*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ip17x_softc* @device_get_softc(i32 %11)
  store %struct.ip17x_softc* %12, %struct.ip17x_softc** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %180

27:                                               ; preds = %17
  %28 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.ifnet* @ip17x_ifpforport(%struct.ip17x_softc* %36, i64 %39)
  store %struct.ifnet* %40, %struct.ifnet** %8, align 8
  %41 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.mii_data* @ip17x_miiforport(%struct.ip17x_softc* %41, i64 %44)
  store %struct.mii_data* %45, %struct.mii_data** %9, align 8
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = icmp eq %struct.ifnet* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %27
  %49 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %50 = icmp eq %struct.mii_data* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %27
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %180

53:                                               ; preds = %48
  %54 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %55 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %146

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %66 = load i32, i32* @IP175C, align 4
  %67 = call i64 @IP17X_IS_SWITCH(%struct.ip17x_softc* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IP175C_LAST_VLAN, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %3, align 4
  br label %180

77:                                               ; preds = %69, %64
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %82 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %80, i64* %86, align 8
  br label %87

87:                                               ; preds = %77, %59
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %3, align 4
  br label %180

103:                                              ; preds = %94, %87
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %108 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 1, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %115 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %103
  %125 = load i32, i32* %10, align 4
  %126 = shl i32 1, %125
  %127 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %128 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %124, %103
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32, i32* %10, align 4
  %140 = shl i32 1, %139
  %141 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %142 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %131
  br label %146

146:                                              ; preds = %145, %53
  %147 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %148 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64 (%struct.ip17x_softc.0*)*, i64 (%struct.ip17x_softc.0*)** %149, align 8
  %151 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %152 = bitcast %struct.ip17x_softc* %151 to %struct.ip17x_softc.0*
  %153 = call i64 %150(%struct.ip17x_softc.0* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* @ENXIO, align 4
  store i32 %156, i32* %3, align 4
  br label %180

157:                                              ; preds = %146
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %160 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %180

164:                                              ; preds = %157
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %180

171:                                              ; preds = %164
  %172 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %173 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %172, i32 0, i32 0
  store %struct.ifmedia* %173, %struct.ifmedia** %7, align 8
  %174 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %178 = load i32, i32* @SIOCSIFMEDIA, align 4
  %179 = call i32 @ifmedia_ioctl(%struct.ifnet* %174, i32* %176, %struct.ifmedia* %177, i32 %178)
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %171, %170, %163, %155, %101, %75, %51, %25
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.ip17x_softc* @device_get_softc(i32) #1

declare dso_local %struct.ifnet* @ip17x_ifpforport(%struct.ip17x_softc*, i64) #1

declare dso_local %struct.mii_data* @ip17x_miiforport(%struct.ip17x_softc*, i64) #1

declare dso_local i64 @IP17X_IS_SWITCH(%struct.ip17x_softc*, i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
