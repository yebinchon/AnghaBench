; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.hn_softc* }
%struct.hn_softc = type { i32, i32, %struct.hn_tx_ring*, i32, %struct.TYPE_4__* }
%struct.hn_tx_ring = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rm_priotracker = type { i32 }

@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@HN_XVFFLAG_ACCBPF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IFCOUNTER_OQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@CSUM_IP_TCP = common dso_local global i32 0, align 4
@CSUM_IP_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @hn_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.hn_softc*, align 8
  %7 = alloca %struct.hn_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rm_priotracker, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 1
  %18 = load %struct.hn_softc*, %struct.hn_softc** %17, align 8
  store %struct.hn_softc* %18, %struct.hn_softc** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %140

25:                                               ; preds = %2
  %26 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %27 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %26, i32 0, i32 3
  %28 = call i32 @rm_rlock(i32* %27, %struct.rm_priotracker* %10)
  %29 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @__predict_true(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %136

36:                                               ; preds = %25
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @M_MCAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %49 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HN_XVFFLAG_ACCBPF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %36
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @bpf_peers_present(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %62 = load i32, i32* @M_NOWAIT, align 4
  %63 = call %struct.mbuf* @m_copypacket(%struct.mbuf* %61, i32 %62)
  store %struct.mbuf* %63, %struct.mbuf** %11, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %65 = icmp eq %struct.mbuf* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %69 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %67, %struct.mbuf* %68)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %54
  br label %76

72:                                               ; preds = %36
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %75 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %73, %struct.mbuf* %74)
  br label %76

76:                                               ; preds = %72, %71
  %77 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %78 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_4__*, %struct.mbuf*)*, i32 (%struct.TYPE_4__*, %struct.mbuf*)** %80, align 8
  %82 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %83 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = call i32 %81(%struct.TYPE_4__* %84, %struct.mbuf* %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %88 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %87, i32 0, i32 3
  %89 = call i32 @rm_runlock(i32* %88, %struct.rm_priotracker* %10)
  %90 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %91 = icmp ne %struct.mbuf* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %76
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %98 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %96, %struct.mbuf* %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %101 = call i32 @m_freem(%struct.mbuf* %100)
  br label %102

102:                                              ; preds = %99, %76
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ENOBUFS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = load i32, i32* @IFCOUNTER_OQDROPS, align 4
  %109 = call i32 @if_inc_counter(%struct.ifnet* %107, i32 %108, i32 1)
  br label %134

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %116 = call i32 @if_inc_counter(%struct.ifnet* %114, i32 %115, i32 1)
  br label %133

117:                                              ; preds = %110
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %120 = call i32 @if_inc_counter(%struct.ifnet* %118, i32 %119, i32 1)
  %121 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %122 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @if_inc_counter(%struct.ifnet* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %129 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @if_inc_counter(%struct.ifnet* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %117
  br label %133

133:                                              ; preds = %132, %113
  br label %134

134:                                              ; preds = %133, %106
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %212

136:                                              ; preds = %25
  %137 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %138 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %137, i32 0, i32 3
  %139 = call i32 @rm_runlock(i32* %138, %struct.rm_priotracker* %10)
  br label %140

140:                                              ; preds = %136, %2
  %141 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %142 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %141)
  %143 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  %146 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %151 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = srem i32 %149, %152
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %145, %140
  %155 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %156 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %155, i32 0, i32 2
  %157 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %157, i64 %159
  store %struct.hn_tx_ring* %160, %struct.hn_tx_ring** %7, align 8
  %161 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %162 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %163 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %166 = call i32 @drbr_enqueue(%struct.ifnet* %161, i32 %164, %struct.mbuf* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %154
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = load i32, i32* @IFCOUNTER_OQDROPS, align 4
  %172 = call i32 @if_inc_counter(%struct.ifnet* %170, i32 %171, i32 1)
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %212

174:                                              ; preds = %154
  %175 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %176 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %212

180:                                              ; preds = %174
  %181 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %182 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %205

186:                                              ; preds = %180
  %187 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %188 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %187, i32 0, i32 2
  %189 = call i64 @mtx_trylock(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %193 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %194 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @hn_xmit(%struct.hn_tx_ring* %192, i32 %195)
  store i32 %196, i32* %15, align 4
  %197 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %198 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %197, i32 0, i32 2
  %199 = call i32 @mtx_unlock(i32* %198)
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %212

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %203, %186
  br label %205

205:                                              ; preds = %204, %185
  %206 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %207 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %210 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %209, i32 0, i32 0
  %211 = call i32 @taskqueue_enqueue(i32 %208, i32* %210)
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %205, %202, %179, %169, %134
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local %struct.mbuf* @m_copypacket(%struct.mbuf*, i32) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @hn_xmit(%struct.hn_tx_ring*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
