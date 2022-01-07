; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i64, i32*, i32, i32, %struct.hn_softc* }
%struct.hn_softc = type { %struct.hn_tx_ring*, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.hn_txdesc = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@hn_use_if_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"hn_start_locked is called, when if_start is disabled\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"not the first TX ring\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"lingering aggregating txdesc\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"encap failed w/ pending aggregating txdesc\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"pending mbuf for aggregating txdesc\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"mbuf was freed\00", align 1
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@CSUM_IP_TCP = common dso_local global i32 0, align 4
@CSUM_IP_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_tx_ring*, i32)* @hn_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_start_locked(%struct.hn_tx_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_tx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hn_txdesc*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %12, i32 0, i32 5
  %14 = load %struct.hn_softc*, %struct.hn_softc** %13, align 8
  store %struct.hn_softc* %14, %struct.hn_softc** %6, align 8
  %15 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @hn_use_if_start, align 4
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %21 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %22 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %21, i32 0, i32 0
  %23 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %22, align 8
  %24 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %23, i64 0
  %25 = icmp eq %struct.hn_tx_ring* %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %28, i32 0, i32 4
  %30 = load i32, i32* @MA_OWNED, align 4
  %31 = call i32 @mtx_assert(i32* %29, i32 %30)
  %32 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @__predict_false(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %179

44:                                               ; preds = %2
  %45 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %49 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %179

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %167, %110, %55
  %57 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 1
  %59 = call i32 @IFQ_DRV_IS_EMPTY(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %168

62:                                               ; preds = %56
  %63 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %66 = call i32 @IFQ_DRV_DEQUEUE(i32* %64, %struct.mbuf* %65)
  %67 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %68 = icmp eq %struct.mbuf* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %168

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 1
  %83 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %84 = call i32 @IFQ_DRV_PREPEND(i32* %82, %struct.mbuf* %83)
  store i32 1, i32* %8, align 4
  br label %168

85:                                               ; preds = %73, %70
  %86 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %87 = call %struct.hn_txdesc* @hn_txdesc_get(%struct.hn_tx_ring* %86)
  store %struct.hn_txdesc* %87, %struct.hn_txdesc** %9, align 8
  %88 = load %struct.hn_txdesc*, %struct.hn_txdesc** %9, align 8
  %89 = icmp eq %struct.hn_txdesc* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 1
  %97 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %98 = call i32 @IFQ_DRV_PREPEND(i32* %96, %struct.mbuf* %97)
  %99 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 0
  %101 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %102 = call i32 @atomic_set_int(i32* %100, i32 %101)
  br label %168

103:                                              ; preds = %85
  %104 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %105 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %106 = load %struct.hn_txdesc*, %struct.hn_txdesc** %9, align 8
  %107 = call i32 @hn_encap(%struct.ifnet* %104, %struct.hn_tx_ring* %105, %struct.hn_txdesc* %106, %struct.mbuf** %10)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %112 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @KASSERT(i32 %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %56

117:                                              ; preds = %103
  %118 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %119 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %167

122:                                              ; preds = %117
  %123 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %124 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %129 = icmp eq %struct.mbuf* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @KASSERT(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %133 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %134 = call i32 @hn_flush_txagg(%struct.ifnet* %132, %struct.hn_tx_ring* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i64 @__predict_false(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %127
  %139 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 0
  %141 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %142 = call i32 @atomic_set_int(i32* %140, i32 %141)
  br label %168

143:                                              ; preds = %127
  br label %166

144:                                              ; preds = %122
  %145 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %146 = icmp ne %struct.mbuf* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 @KASSERT(i32 %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %149 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %150 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %151 = load %struct.hn_txdesc*, %struct.hn_txdesc** %9, align 8
  %152 = call i32 @hn_txpkt(%struct.ifnet* %149, %struct.hn_tx_ring* %150, %struct.hn_txdesc* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i64 @__predict_false(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %144
  %157 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %158 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %157, i32 0, i32 1
  %159 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %160 = call i32 @IFQ_DRV_PREPEND(i32* %158, %struct.mbuf* %159)
  %161 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %162 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %161, i32 0, i32 0
  %163 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %164 = call i32 @atomic_set_int(i32* %162, i32 %163)
  br label %168

165:                                              ; preds = %144
  br label %166

166:                                              ; preds = %165, %143
  br label %167

167:                                              ; preds = %166, %117
  br label %56

168:                                              ; preds = %156, %138, %90, %80, %69, %56
  %169 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %170 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %175 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %176 = call i32 @hn_flush_txagg(%struct.ifnet* %174, %struct.hn_tx_ring* %175)
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %54, %43
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local %struct.hn_txdesc* @hn_txdesc_get(%struct.hn_tx_ring*) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @hn_encap(%struct.ifnet*, %struct.hn_tx_ring*, %struct.hn_txdesc*, %struct.mbuf**) #1

declare dso_local i32 @hn_flush_txagg(%struct.ifnet*, %struct.hn_tx_ring*) #1

declare dso_local i32 @hn_txpkt(%struct.ifnet*, %struct.hn_tx_ring*, %struct.hn_txdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
