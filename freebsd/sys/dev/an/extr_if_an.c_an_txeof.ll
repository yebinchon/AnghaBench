; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { %struct.TYPE_2__, i32, i64, %struct.ifnet* }
%struct.TYPE_2__ = type { i32*, i64, i32, i64 }
%struct.ifnet = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AN_EV_TX_EXC = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@AN_TX_RING_CNT = common dso_local global i32 0, align 4
@AN_MAX_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.an_softc*, i32)* @an_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_txeof(%struct.an_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %9 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %8)
  %10 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %11 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %10, i32 0, i32 3
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %14 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %22 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %79, label %25

25:                                               ; preds = %2
  %26 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %27 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %28 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @AN_TX_CMP_FID(i32 %29)
  %31 = call i32 @CSR_READ_2(%struct.an_softc* %26, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AN_EV_TX_EXC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %39 = call i32 @if_inc_counter(%struct.ifnet* %37, i32 %38, i32 1)
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %42 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %43 = call i32 @if_inc_counter(%struct.ifnet* %41, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %40, %36
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @AN_TX_RING_CNT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %52 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %62 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 0, i32* %67, align 4
  br label %72

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %45

72:                                               ; preds = %60, %45
  %73 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %74 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @AN_TX_RING_CNT, align 4
  %78 = call i32 @AN_INC(i64 %76, i32 %77)
  br label %126

79:                                               ; preds = %2
  %80 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %81 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %82 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @AN_TX_CMP_FID(i32 %83)
  %85 = call i32 @CSR_READ_2(%struct.an_softc* %80, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %87 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @AN_EV_TX_EXC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %98 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  br label %104

100:                                              ; preds = %91
  %101 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %102 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %103 = call i32 @if_inc_counter(%struct.ifnet* %101, i32 %102, i32 1)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %106 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @AN_MAX_TX_DESC, align 4
  %110 = call i32 @AN_INC(i64 %108, i32 %109)
  %111 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %112 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %116 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %114, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %104
  %121 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %122 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %120, %104
  br label %125

125:                                              ; preds = %124, %79
  br label %126

126:                                              ; preds = %125, %72
  ret void
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_TX_CMP_FID(i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @AN_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
