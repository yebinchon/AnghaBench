; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_rxintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_rxintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.jme_desc* }
%struct.jme_desc = type { i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@JME_RD_OWN = common dso_local global i32 0, align 4
@JME_RD_VALID = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_softc*, i32)* @jme_rxintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_rxintr(%struct.jme_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %10 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %14 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %18 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @bus_dmamap_sync(i32 %12, i32 %16, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %77, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %21
  %25 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %26 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.jme_desc*, %struct.jme_desc** %27, align 8
  %29 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %30 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %28, i64 %32
  store %struct.jme_desc* %33, %struct.jme_desc** %5, align 8
  %34 = load %struct.jme_desc*, %struct.jme_desc** %5, align 8
  %35 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32toh(i32 %36)
  %38 = load i32, i32* @JME_RD_OWN, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @JME_RD_OWN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %80

43:                                               ; preds = %24
  %44 = load %struct.jme_desc*, %struct.jme_desc** %5, align 8
  %45 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32toh(i32 %46)
  %48 = load i32, i32* @JME_RD_VALID, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %80

52:                                               ; preds = %43
  %53 = load %struct.jme_desc*, %struct.jme_desc** %5, align 8
  %54 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32toh(i32 %55)
  %57 = call i32 @JME_RX_NSEGS(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.jme_desc*, %struct.jme_desc** %5, align 8
  %59 = getelementptr inbounds %struct.jme_desc, %struct.jme_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32toh(i32 %60)
  %62 = call i32 @JME_RX_BYTES(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MCLBYTES, align 4
  %66 = call i32 @howmany(i32 %64, i32 %65)
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %80

69:                                               ; preds = %52
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %73 = call i32 @jme_rxeof(%struct.jme_softc* %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %21

80:                                               ; preds = %68, %51, %42, %21
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %85 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %89 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %93 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @bus_dmamap_sync(i32 %87, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %83, %80
  %97 = load i32, i32* %4, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @EAGAIN, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 0, %99 ], [ %101, %100 ]
  ret i32 %103
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @JME_RX_NSEGS(i32) #1

declare dso_local i32 @JME_RX_BYTES(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @jme_rxeof(%struct.jme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
