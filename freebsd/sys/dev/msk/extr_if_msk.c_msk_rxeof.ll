; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, %struct.TYPE_4__, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32, %struct.msk_rxdesc* }
%struct.msk_rxdesc = type { %struct.mbuf* }
%struct.mbuf = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@GMR_FS_VLAN = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MSK_FLAG_NORXCHK = common dso_local global i32 0, align 4
@MSK_MAX_FRAMELEN = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@GMR_FS_RX_OK = common dso_local global i32 0, align 4
@GMR_FS_GOOD_FC = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*, i32, i32, i32)* @msk_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_rxeof(%struct.msk_if_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.msk_if_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.msk_rxdesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %15 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %14, i32 0, i32 4
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %10, align 8
  %17 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %18 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %17)
  %19 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %20 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 16
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @GMR_FS_VLAN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %37, %30, %23
  %44 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %45 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MSK_FLAG_NORXCHK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MSK_MAX_FRAMELEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ETHER_HDR_LEN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %50
  %59 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %60 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %61 = call i32 @if_inc_counter(%struct.ifnet* %59, i32 %60, i32 1)
  %62 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @msk_discard_rxbuf(%struct.msk_if_softc* %62, i32 %63)
  br label %192

65:                                               ; preds = %54
  br label %100

66:                                               ; preds = %43
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %69 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @GMR_FS_RX_OK, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82, %77, %72, %66
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @GMR_FS_GOOD_FC, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %93 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %94 = call i32 @if_inc_counter(%struct.ifnet* %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @msk_discard_rxbuf(%struct.msk_if_softc* %96, i32 %97)
  br label %192

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %65
  %101 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %102 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %104, i64 %106
  store %struct.msk_rxdesc* %107, %struct.msk_rxdesc** %11, align 8
  %108 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %11, align 8
  %109 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %108, i32 0, i32 0
  %110 = load %struct.mbuf*, %struct.mbuf** %109, align 8
  store %struct.mbuf* %110, %struct.mbuf** %9, align 8
  %111 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @msk_newbuf(%struct.msk_if_softc* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %100
  %116 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %117 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %118 = call i32 @if_inc_counter(%struct.ifnet* %116, i32 %117, i32 1)
  %119 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @msk_discard_rxbuf(%struct.msk_if_softc* %119, i32 %120)
  br label %192

122:                                              ; preds = %100
  %123 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store %struct.ifnet* %123, %struct.ifnet** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 8
  %133 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %134 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %122
  %140 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %141 = call i32 @msk_fixup_rx(%struct.mbuf* %140)
  br label %142

142:                                              ; preds = %139, %122
  %143 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %144 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %145 = call i32 @if_inc_counter(%struct.ifnet* %143, i32 %144, i32 1)
  %146 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IFCAP_RXCSUM, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %156 = call i32 @msk_rxcsum(%struct.msk_if_softc* %153, i32 %154, %struct.mbuf* %155)
  br label %157

157:                                              ; preds = %152, %142
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @GMR_FS_VLAN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %157
  %163 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %164 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %162
  %170 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %171 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %174 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @M_VLANTAG, align 4
  %177 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %178 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %169, %162, %157
  %182 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %183 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %182)
  %184 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 1
  %186 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %185, align 8
  %187 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %188 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %189 = call i32 %186(%struct.ifnet* %187, %struct.mbuf* %188)
  %190 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %191 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %190)
  br label %192

192:                                              ; preds = %181, %115, %95, %58
  %193 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %194 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %198 = call i32 @MSK_RX_INC(i32 %196, i32 %197)
  %199 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %200 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %204 = call i32 @MSK_RX_INC(i32 %202, i32 %203)
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @msk_discard_rxbuf(%struct.msk_if_softc*, i32) #1

declare dso_local i64 @msk_newbuf(%struct.msk_if_softc*, i32) #1

declare dso_local i32 @msk_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @msk_rxcsum(%struct.msk_if_softc*, i32, %struct.mbuf*) #1

declare dso_local i32 @MSK_IF_UNLOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @MSK_IF_LOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @MSK_RX_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
