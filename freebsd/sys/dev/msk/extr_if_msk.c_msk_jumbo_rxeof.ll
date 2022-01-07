; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_jumbo_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_jumbo_rxeof.c"
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
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@GMR_FS_RX_OK = common dso_local global i32 0, align 4
@GMR_FS_GOOD_FC = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@MSK_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*, i32, i32, i32)* @msk_jumbo_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_jumbo_rxeof(%struct.msk_if_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %46 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @GMR_FS_RX_OK, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59, %54, %49, %43
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @GMR_FS_GOOD_FC, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %70 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %71 = call i32 @if_inc_counter(%struct.ifnet* %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @msk_discard_jumbo_rxbuf(%struct.msk_if_softc* %73, i32 %74)
  br label %168

76:                                               ; preds = %59
  %77 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %78 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %80, i64 %82
  store %struct.msk_rxdesc* %83, %struct.msk_rxdesc** %11, align 8
  %84 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %11, align 8
  %85 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %84, i32 0, i32 0
  %86 = load %struct.mbuf*, %struct.mbuf** %85, align 8
  store %struct.mbuf* %86, %struct.mbuf** %9, align 8
  %87 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @msk_jumbo_newbuf(%struct.msk_if_softc* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %93 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %94 = call i32 @if_inc_counter(%struct.ifnet* %92, i32 %93, i32 1)
  %95 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @msk_discard_jumbo_rxbuf(%struct.msk_if_softc* %95, i32 %96)
  br label %168

98:                                               ; preds = %76
  %99 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store %struct.ifnet* %99, %struct.ifnet** %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %110 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %98
  %116 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %117 = call i32 @msk_fixup_rx(%struct.mbuf* %116)
  br label %118

118:                                              ; preds = %115, %98
  %119 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %120 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %121 = call i32 @if_inc_counter(%struct.ifnet* %119, i32 %120, i32 1)
  %122 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IFCAP_RXCSUM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %132 = call i32 @msk_rxcsum(%struct.msk_if_softc* %129, i32 %130, %struct.mbuf* %131)
  br label %133

133:                                              ; preds = %128, %118
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @GMR_FS_VLAN, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %147 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @M_VLANTAG, align 4
  %153 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %145, %138, %133
  %158 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %159 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %158)
  %160 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 1
  %162 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %161, align 8
  %163 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %164 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %165 = call i32 %162(%struct.ifnet* %163, %struct.mbuf* %164)
  %166 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %167 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %166)
  br label %168

168:                                              ; preds = %157, %91, %72
  %169 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %170 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MSK_JUMBO_RX_RING_CNT, align 4
  %174 = call i32 @MSK_RX_INC(i32 %172, i32 %173)
  %175 = load %struct.msk_if_softc*, %struct.msk_if_softc** %5, align 8
  %176 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MSK_JUMBO_RX_RING_CNT, align 4
  %180 = call i32 @MSK_RX_INC(i32 %178, i32 %179)
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @msk_discard_jumbo_rxbuf(%struct.msk_if_softc*, i32) #1

declare dso_local i64 @msk_jumbo_newbuf(%struct.msk_if_softc*, i32) #1

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
