; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_rint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_rint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@HME_PCI = common dso_local global i32 0, align 4
@KTR_HME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"hme_rint: index %d, flags %#x\00", align 1
@HME_XD_OWN = common dso_local global i32 0, align 4
@HME_XD_OFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"buffer overflow, ri=%d; flags=0x%x\0A\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@HME_NRXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*)* @hme_rint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_rint(%struct.hme_softc* %0) #0 {
  %2 = alloca %struct.hme_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %2, align 8
  %9 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %10 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %14 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %13, i32 0, i32 5
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %17 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %20 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %23 = call i32 @bus_dmamap_sync(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %25 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %75, %1
  %29 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %30 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HME_PCI, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @HME_XD_GETFLAGS(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @KTR_HME, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @CTR2(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @HME_XD_OWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %80

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HME_XD_OFL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %55 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %62 = call i32 @if_inc_counter(%struct.ifnet* %60, i32 %61, i32 1)
  %63 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @hme_discard_rxbuf(%struct.hme_softc* %63, i32 %64)
  br label %74

66:                                               ; preds = %46
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @HME_XD_DECODE_RSIZE(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @hme_read(%struct.hme_softc* %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %53
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  %78 = load i32, i32* @HME_NRXDESC, align 4
  %79 = urem i32 %77, %78
  store i32 %79, i32* %5, align 4
  br label %28

80:                                               ; preds = %45
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %85 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %88 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %91 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @bus_dmamap_sync(i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %83, %80
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %97 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @HME_XD_GETFLAGS(i32, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @hme_discard_rxbuf(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_XD_DECODE_RSIZE(i32) #1

declare dso_local i32 @hme_read(%struct.hme_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
