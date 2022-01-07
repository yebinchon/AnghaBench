; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_stream_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Stop for not allocated stream (%d/%d)\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HDAC_SDCTL0 = common dso_local global i64 0, align 8
@HDAC_SDCTL_IOCE = common dso_local global i32 0, align 4
@HDAC_SDCTL_FEIE = common dso_local global i32 0, align 4
@HDAC_SDCTL_DEIE = common dso_local global i32 0, align 4
@HDAC_SDCTL_RUN = common dso_local global i32 0, align 4
@HDAC_INTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @hdac_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_stream_stop(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.hdac_softc* @device_get_softc(i32 %13)
  store %struct.hdac_softc* %14, %struct.hdac_softc** %9, align 8
  %15 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @hdac_find_stream(%struct.hdac_softc* %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %21, i8* %25)
  %27 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %28 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %37 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %46 = call i32 @bus_dmamap_sync(i32 %35, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 5
  store i32 %48, i32* %11, align 4
  %49 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %50 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @HDAC_SDCTL0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @HDAC_READ_1(i32* %50, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @HDAC_SDCTL_IOCE, align 4
  %57 = load i32, i32* @HDAC_SDCTL_FEIE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @HDAC_SDCTL_DEIE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @HDAC_SDCTL_RUN, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %67 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @HDAC_SDCTL0, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @HDAC_WRITE_1(i32* %67, i64 %71, i32 %72)
  %74 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %75 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %74, i32 0, i32 1
  %76 = load i32, i32* @HDAC_INTCTL, align 4
  %77 = call i32 @HDAC_READ_4(i32* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %84 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %83, i32 0, i32 1
  %85 = load i32, i32* @HDAC_INTCTL, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @HDAC_WRITE_4(i32* %84, i32 %85, i32 %86)
  %88 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %89 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %96 = call i32 @hdac_poll_reinit(%struct.hdac_softc* %95)
  ret void
}

declare dso_local %struct.hdac_softc* @device_get_softc(i32) #1

declare dso_local i32 @hdac_find_stream(%struct.hdac_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @HDAC_READ_1(i32*, i64) #1

declare dso_local i32 @HDAC_WRITE_1(i32*, i64, i32) #1

declare dso_local i32 @HDAC_READ_4(i32*, i32) #1

declare dso_local i32 @HDAC_WRITE_4(i32*, i32, i32) #1

declare dso_local i32 @hdac_poll_reinit(%struct.hdac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
