; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_txintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_txintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_4__, i64, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, %struct.age_txdesc* }
%struct.age_txdesc = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AGE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*, i32)* @age_txintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_txintr(%struct.age_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.age_txdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %10 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %9)
  %11 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %12 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %15 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %19 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %23 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bus_dmamap_sync(i32 %17, i32 %21, i32 %24)
  %26 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %27 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %103, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %107

34:                                               ; preds = %30
  %35 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %36 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %107

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %51 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %56 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load %struct.age_txdesc*, %struct.age_txdesc** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %58, i64 %60
  store %struct.age_txdesc* %61, %struct.age_txdesc** %6, align 8
  %62 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %63 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %67 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %71 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %75 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %41
  br label %103

79:                                               ; preds = %41
  %80 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %81 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %85 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %88 = call i32 @bus_dmamap_sync(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %90 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %94 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bus_dmamap_unload(i32 %92, i32 %95)
  %97 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %98 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @m_freem(i32* %99)
  %101 = load %struct.age_txdesc*, %struct.age_txdesc** %6, align 8
  %102 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %79, %78
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @AGE_TX_RING_CNT, align 4
  %106 = call i32 @AGE_DESC_INC(i32 %104, i32 %105)
  br label %30

107:                                              ; preds = %40, %30
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %113 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %116 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %122 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %110
  %124 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %125 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %129 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %133 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @bus_dmamap_sync(i32 %127, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %123, %107
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @AGE_DESC_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
