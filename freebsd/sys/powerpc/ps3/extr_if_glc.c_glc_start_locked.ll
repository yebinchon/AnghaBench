; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.glc_softc* }
%struct.glc_softc = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lv1_net_start_tx_dma error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @glc_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.glc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 2
  %11 = load %struct.glc_softc*, %struct.glc_softc** %10, align 8
  store %struct.glc_softc* %11, %struct.glc_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %12, i32 0, i32 7
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  store i64 0, i64* %4, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %118

26:                                               ; preds = %1
  %27 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %27, i32 0, i32 6
  %29 = call i64 @STAILQ_EMPTY(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %26
  br label %33

33:                                               ; preds = %91, %32
  %34 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 1
  %36 = call i32 @IFQ_DRV_IS_EMPTY(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %92

39:                                               ; preds = %33
  %40 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = call i32 @IFQ_DRV_DEQUEUE(i32* %41, %struct.mbuf* %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = icmp eq %struct.mbuf* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %92

47:                                               ; preds = %39
  %48 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 125
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = call i32 @IFQ_DRV_PREPEND(i32* %59, %struct.mbuf* %60)
  br label %92

62:                                               ; preds = %47
  %63 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %65 = call i32 @BPF_MTAP(%struct.ifnet* %63, %struct.mbuf* %64)
  %66 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %72 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %73 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.mbuf* @ether_vlanencap(%struct.mbuf* %71, i64 %74)
  store %struct.mbuf* %75, %struct.mbuf** %8, align 8
  br label %76

76:                                               ; preds = %70, %62
  %77 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %78 = call i64 @glc_encap(%struct.glc_softc* %77, %struct.mbuf** %8, i64* %5)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %92

86:                                               ; preds = %76
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %89, %86
  br label %33

92:                                               ; preds = %80, %52, %46, %33
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  %96 = load i64, i64* %4, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %103 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @lv1_net_start_tx_dma(i32 %101, i32 %104, i64 %105, i32 0)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %111 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %98
  %116 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %117 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %116, i32 0, i32 2
  store i32 5, i32* %117, align 8
  br label %118

118:                                              ; preds = %25, %115, %95, %92
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @ether_vlanencap(%struct.mbuf*, i64) #1

declare dso_local i64 @glc_encap(%struct.glc_softc*, %struct.mbuf**, i64*) #1

declare dso_local i32 @lv1_net_start_tx_dma(i32, i32, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
