; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.rx_rdesc* }
%struct.rx_rdesc = type { i64, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@AGE_RX_BUF_SIZE = common dso_local global i32 0, align 4
@AGE_RR_RING_CNT = common dso_local global i32 0, align 4
@AGE_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.age_softc*, i32, i32)* @age_rxintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_rxintr(%struct.age_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.age_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_rdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %14 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %13)
  %15 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %16 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %147

23:                                               ; preds = %3
  %24 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %25 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %29 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %33 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @bus_dmamap_sync(i32 %27, i32 %31, i32 %34)
  %36 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %37 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %41 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %45 = call i32 @bus_dmamap_sync(i32 %39, i32 %43, i32 %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %104, %23
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp sle i32 %51, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %107

55:                                               ; preds = %50
  %56 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %57 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.rx_rdesc*, %struct.rx_rdesc** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %59, i64 %61
  store %struct.rx_rdesc* %62, %struct.rx_rdesc** %8, align 8
  %63 = load %struct.rx_rdesc*, %struct.rx_rdesc** %8, align 8
  %64 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @le32toh(i64 %65)
  %67 = call i32 @AGE_RX_NSEGS(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %107

71:                                               ; preds = %55
  %72 = load %struct.rx_rdesc*, %struct.rx_rdesc** %8, align 8
  %73 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @le32toh(i64 %74)
  %76 = call i32 @AGE_RX_BYTES(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @AGE_RX_BUF_SIZE, align 4
  %80 = call i32 @howmany(i32 %78, i32 %79)
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %107

83:                                               ; preds = %71
  %84 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %85 = load %struct.rx_rdesc*, %struct.rx_rdesc** %8, align 8
  %86 = call i32 @age_rxeof(%struct.age_softc* %84, %struct.rx_rdesc* %85)
  %87 = load %struct.rx_rdesc*, %struct.rx_rdesc** %8, align 8
  %88 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @AGE_RR_RING_CNT, align 4
  %91 = call i32 @AGE_DESC_INC(i32 %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %94 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %92
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %99 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %100 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %83
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %46

107:                                              ; preds = %82, %70, %54, %46
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %113 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %116 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %120 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %124 = call i32 @bus_dmamap_sync(i32 %118, i32 %122, i32 %123)
  %125 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %126 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %130 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %134 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @bus_dmamap_sync(i32 %128, i32 %132, i32 %135)
  %137 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %138 = call i32 @AGE_COMMIT_MBOX(%struct.age_softc* %137)
  br label %139

139:                                              ; preds = %110, %107
  %140 = load i32, i32* %7, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @EAGAIN, align 4
  br label %145

145:                                              ; preds = %143, %142
  %146 = phi i32 [ 0, %142 ], [ %144, %143 ]
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %22
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @AGE_RX_NSEGS(i32) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @AGE_RX_BYTES(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @age_rxeof(%struct.age_softc*, %struct.rx_rdesc*) #1

declare dso_local i32 @AGE_DESC_INC(i32, i32) #1

declare dso_local i32 @AGE_COMMIT_MBOX(%struct.age_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
