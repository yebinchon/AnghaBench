; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mifinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mifinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HME_MIFI_CFG = common dso_local global i32 0, align 4
@HME_MACI_XIF = common dso_local global i32 0, align 4
@HME_PHYAD_EXTERNAL = common dso_local global i64 0, align 8
@HME_MAC_XIF_MIIENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*)* @hme_mifinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_mifinit(%struct.hme_softc* %0) #0 {
  %2 = alloca %struct.hme_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %2, align 8
  %4 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %5 = load i32, i32* @HME_MIFI_CFG, align 4
  %6 = call i32 @HME_MIF_WRITE_4(%struct.hme_softc* %4, i32 %5, i32 0)
  %7 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %8 = load i32, i32* @HME_MACI_XIF, align 4
  %9 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %11 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %16 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %14
  %23 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %24 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %27 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IFM_INST(i32 %33)
  %35 = getelementptr inbounds i64, i64* %25, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HME_PHYAD_EXTERNAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load i32, i32* @HME_MAC_XIF_MIIENABLE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %22, %14, %1
  %44 = load i32, i32* @HME_MAC_XIF_MIIENABLE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %50 = load i32, i32* @HME_MACI_XIF, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @HME_MIF_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @HME_MAC_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i64 @IFM_INST(i32) #1

declare dso_local i32 @HME_MAC_WRITE_4(%struct.hme_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
