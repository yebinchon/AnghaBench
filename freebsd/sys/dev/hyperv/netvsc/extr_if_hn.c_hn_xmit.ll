; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i32, i64, i32*, i32, i32, i32, %struct.hn_softc* }
%struct.hn_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hn_txdesc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lingering aggregating txdesc\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"encap failed w/ pending aggregating txdesc\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pending mbuf for aggregating txdesc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"mbuf was freed\00", align 1
@hn_use_if_start = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_tx_ring*, i32)* @hn_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_xmit(%struct.hn_tx_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_tx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hn_txdesc*, align 8
  %11 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %12, i32 0, i32 7
  %14 = load %struct.hn_softc*, %struct.hn_softc** %13, align 8
  store %struct.hn_softc* %14, %struct.hn_softc** %6, align 8
  %15 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %18, i32 0, i32 6
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @mtx_assert(i32* %19, i32 %20)
  %22 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @__predict_false(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %174

34:                                               ; preds = %2
  %35 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %34
  store i32 0, i32* %3, align 4
  br label %174

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %157, %97, %47
  %49 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %50 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %49, i32 %52)
  store %struct.mbuf* %53, %struct.mbuf** %8, align 8
  %54 = icmp ne %struct.mbuf* %53, null
  br i1 %54, label %55, label %163

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %67 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %71 = call i32 @drbr_putback(%struct.ifnet* %66, i32 %69, %struct.mbuf* %70)
  store i32 1, i32* %9, align 4
  br label %163

72:                                               ; preds = %58, %55
  %73 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %74 = call %struct.hn_txdesc* @hn_txdesc_get(%struct.hn_tx_ring* %73)
  store %struct.hn_txdesc* %74, %struct.hn_txdesc** %10, align 8
  %75 = load %struct.hn_txdesc*, %struct.hn_txdesc** %10, align 8
  %76 = icmp eq %struct.hn_txdesc* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %79 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %83 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %84 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %87 = call i32 @drbr_putback(%struct.ifnet* %82, i32 %85, %struct.mbuf* %86)
  %88 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %89 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %163

90:                                               ; preds = %72
  %91 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %92 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %93 = load %struct.hn_txdesc*, %struct.hn_txdesc** %10, align 8
  %94 = call i32 @hn_encap(%struct.ifnet* %91, %struct.hn_tx_ring* %92, %struct.hn_txdesc* %93, %struct.mbuf** %8)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %99 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @KASSERT(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %105 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %106 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @drbr_advance(%struct.ifnet* %104, i32 %107)
  br label %48

109:                                              ; preds = %90
  %110 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %111 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %157

114:                                              ; preds = %109
  %115 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %116 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %121 = icmp eq %struct.mbuf* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @KASSERT(i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %125 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %126 = call i32 @hn_flush_txagg(%struct.ifnet* %124, %struct.hn_tx_ring* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @__predict_false(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %132 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  br label %163

133:                                              ; preds = %119
  br label %156

134:                                              ; preds = %114
  %135 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %136 = icmp ne %struct.mbuf* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @KASSERT(i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %139 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %140 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %141 = load %struct.hn_txdesc*, %struct.hn_txdesc** %10, align 8
  %142 = call i32 @hn_txpkt(%struct.ifnet* %139, %struct.hn_tx_ring* %140, %struct.hn_txdesc* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i64 @__predict_false(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %134
  %147 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %148 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %149 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %152 = call i32 @drbr_putback(%struct.ifnet* %147, i32 %150, %struct.mbuf* %151)
  %153 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %154 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  br label %163

155:                                              ; preds = %134
  br label %156

156:                                              ; preds = %155, %133
  br label %157

157:                                              ; preds = %156, %109
  %158 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %159 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %160 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @drbr_advance(%struct.ifnet* %158, i32 %161)
  br label %48

163:                                              ; preds = %146, %130, %77, %65, %48
  %164 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %165 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %170 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %171 = call i32 @hn_flush_txagg(%struct.ifnet* %169, %struct.hn_tx_ring* %170)
  br label %172

172:                                              ; preds = %168, %163
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %46, %33
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, i32) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local %struct.hn_txdesc* @hn_txdesc_get(%struct.hn_tx_ring*) #1

declare dso_local i32 @hn_encap(%struct.ifnet*, %struct.hn_tx_ring*, %struct.hn_txdesc*, %struct.mbuf**) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, i32) #1

declare dso_local i32 @hn_flush_txagg(%struct.ifnet*, %struct.hn_tx_ring*) #1

declare dso_local i32 @hn_txpkt(%struct.ifnet*, %struct.hn_tx_ring*, %struct.hn_txdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
