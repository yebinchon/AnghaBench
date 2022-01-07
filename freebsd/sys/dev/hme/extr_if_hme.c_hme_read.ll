; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { %struct.TYPE_5__, i32, %struct.ifnet* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mbuf* }
%struct.mbuf = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@HME_MAX_FRAMESIZE = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@KTR_HME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"hme_read: len %d\00", align 1
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@HME_RXOFFS = common dso_local global i64 0, align 8
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*, i32, i32, i32)* @hme_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_read(%struct.hme_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hme_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.hme_softc* %0, %struct.hme_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %12 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ule i64 %15, 4
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HME_MAX_FRAMESIZE, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %4
  %22 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %23 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %24 = call i32 @if_inc_counter(%struct.ifnet* %22, i32 %23, i32 1)
  %25 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @hme_discard_rxbuf(%struct.hme_softc* %25, i32 %26)
  br label %93

28:                                               ; preds = %17
  %29 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %30 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  store %struct.mbuf* %37, %struct.mbuf** %10, align 8
  %38 = load i32, i32* @KTR_HME, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @CTR1(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @hme_add_rxbuf(%struct.hme_softc* %41, i32 %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %28
  %46 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %47 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %48 = call i32 @if_inc_counter(%struct.ifnet* %46, i32 %47, i32 1)
  %49 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hme_discard_rxbuf(%struct.hme_softc* %49, i32 %50)
  br label %93

52:                                               ; preds = %28
  %53 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %54 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %55 = call i32 @if_inc_counter(%struct.ifnet* %53, i32 %54, i32 1)
  %56 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.ifnet* %56, %struct.ifnet** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @HME_RXOFFS, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 %63, i64* %68, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = load i64, i64* @HME_RXOFFS, align 8
  %71 = call i32 @m_adj(%struct.mbuf* %69, i64 %70)
  %72 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IFCAP_RXCSUM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %52
  %79 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @hme_rxcksum(%struct.mbuf* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %52
  %83 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %84 = call i32 @HME_UNLOCK(%struct.hme_softc* %83)
  %85 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %86, align 8
  %88 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %90 = call i32 %87(%struct.ifnet* %88, %struct.mbuf* %89)
  %91 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %92 = call i32 @HME_LOCK(%struct.hme_softc* %91)
  br label %93

93:                                               ; preds = %82, %45, %21
  ret void
}

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @hme_discard_rxbuf(%struct.hme_softc*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i64 @hme_add_rxbuf(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i32 @hme_rxcksum(%struct.mbuf*, i32) #1

declare dso_local i32 @HME_UNLOCK(%struct.hme_softc*) #1

declare dso_local i32 @HME_LOCK(%struct.hme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
