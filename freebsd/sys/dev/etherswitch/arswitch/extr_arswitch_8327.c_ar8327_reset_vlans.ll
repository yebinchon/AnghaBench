; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_reset_vlans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_reset_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32*, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.arswitch_softc.0*, i32, i32, i32)*, i32 (%struct.arswitch_softc.1*, i32, i32)* }
%struct.arswitch_softc.0 = type opaque
%struct.arswitch_softc.1 = type opaque

@MA_NOTOWNED = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL0 = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL0_MIRROR_PORT = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL0_MIRROR_PORT_S = common dso_local global i32 0, align 4
@AR8327_NUM_PORTS = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@AR8X16_PORT_VLAN_MODE_PORT_ONLY = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@AR8X16_PORT_VLAN_MODE_SECURE = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_UNMOD = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_SVID_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_CVID_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_PORT_VLAN_PROP = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_S = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_LEARN = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_IN_MODE_S = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_STATE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arswitch_softc*)* @ar8327_reset_vlans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_reset_vlans(%struct.arswitch_softc* %0) #0 {
  %2 = alloca %struct.arswitch_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %2, align 8
  %8 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %9 = load i32, i32* @MA_NOTOWNED, align 4
  %10 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %8, i32 %9)
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %12 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %11)
  %13 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %14 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @memset(i32* %15, i32 0, i32 8)
  %17 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %18 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AR8327_REG_FWD_CTRL0, align 4
  %21 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT, align 4
  %22 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT_S, align 4
  %23 = shl i32 15, %22
  %24 = call i32 @arswitch_modifyreg(i32 %19, i32 %20, i32 %21, i32 %23)
  store i32 127, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %112, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %115

29:                                               ; preds = %25
  %30 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %31 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %40 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* @AR8X16_PORT_VLAN_MODE_PORT_ONLY, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH, align 4
  store i32 %46, i32* %6, align 4
  br label %60

47:                                               ; preds = %29
  %48 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %49 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @AR8X16_PORT_VLAN_MODE_SECURE, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNMOD, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @AR8X16_PORT_VLAN_MODE_PORT_ONLY, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* @AR8327_PORT_VLAN0_DEF_SVID_S, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @AR8327_PORT_VLAN0_DEF_CVID_S, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %68 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @AR8327_REG_PORT_VLAN0(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @arswitch_writereg(i32 %69, i32 %71, i32 %72)
  %74 = load i32, i32* @AR8327_PORT_VLAN1_PORT_VLAN_PROP, align 4
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_S, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %81 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @AR8327_REG_PORT_VLAN1(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @arswitch_writereg(i32 %82, i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %3, align 4
  %89 = shl i32 1, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %87, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @AR8327_PORT_LOOKUP_LEARN, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @AR8327_PORT_LOOKUP_IN_MODE_S, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @AR8X16_PORT_CTRL_STATE_FORWARD, align 4
  %101 = load i32, i32* @AR8327_PORT_LOOKUP_STATE_S, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %106 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @AR8327_REG_PORT_LOOKUP(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @arswitch_writereg(i32 %107, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %60
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %25

115:                                              ; preds = %25
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %124, %115
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @ar8327_port_disable_mirror(%struct.arswitch_softc* %121, i32 %122)
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %116

127:                                              ; preds = %116
  %128 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %129 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %181

133:                                              ; preds = %127
  %134 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %135 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 1, i32* %137, align 4
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %156, %133
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @AR8327_NUM_PORTS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %144 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32 (%struct.arswitch_softc.1*, i32, i32)*, i32 (%struct.arswitch_softc.1*, i32, i32)** %145, align 8
  %147 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %148 = bitcast %struct.arswitch_softc* %147 to %struct.arswitch_softc.1*
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %151 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 %146(%struct.arswitch_softc.1* %148, i32 %149, i32 %154)
  br label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %138

159:                                              ; preds = %138
  %160 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %161 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32 (%struct.arswitch_softc.0*, i32, i32, i32)*, i32 (%struct.arswitch_softc.0*, i32, i32, i32)** %162, align 8
  %164 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %165 = bitcast %struct.arswitch_softc* %164 to %struct.arswitch_softc.0*
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %169 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 %163(%struct.arswitch_softc.0* %165, i32 %166, i32 %167, i32 %172)
  %174 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %175 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %176 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %159, %127
  %182 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %183 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %182)
  ret void
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN0(i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN1(i32) #1

declare dso_local i32 @AR8327_REG_PORT_LOOKUP(i32) #1

declare dso_local i32 @ar8327_port_disable_mirror(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
