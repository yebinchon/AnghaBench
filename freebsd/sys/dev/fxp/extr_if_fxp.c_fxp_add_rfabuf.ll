; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_add_rfabuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_add_rfabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.fxp_rx*, %struct.fxp_rx* }
%struct.fxp_rx = type { %struct.fxp_rx*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fxp_rfa = type { i64, i32 }

@RFA_ALIGNMENT_FUDGE = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*, %struct.fxp_rx*)* @fxp_add_rfabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_add_rfabuf(%struct.fxp_softc* %0, %struct.fxp_rx* %1) #0 {
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca %struct.fxp_rx*, align 8
  %5 = alloca %struct.fxp_rfa*, align 8
  %6 = alloca %struct.fxp_rx*, align 8
  store %struct.fxp_softc* %0, %struct.fxp_softc** %3, align 8
  store %struct.fxp_rx* %1, %struct.fxp_rx** %4, align 8
  %7 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %8 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.fxp_rx*, %struct.fxp_rx** %9, align 8
  %11 = icmp ne %struct.fxp_rx* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %14 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.fxp_rx*, %struct.fxp_rx** %15, align 8
  store %struct.fxp_rx* %16, %struct.fxp_rx** %6, align 8
  %17 = load %struct.fxp_rx*, %struct.fxp_rx** %6, align 8
  %18 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RFA_ALIGNMENT_FUDGE, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to %struct.fxp_rfa*
  store %struct.fxp_rfa* %25, %struct.fxp_rfa** %5, align 8
  %26 = load %struct.fxp_rx*, %struct.fxp_rx** %4, align 8
  %27 = load %struct.fxp_rx*, %struct.fxp_rx** %6, align 8
  %28 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %27, i32 0, i32 0
  store %struct.fxp_rx* %26, %struct.fxp_rx** %28, align 8
  %29 = load %struct.fxp_rfa*, %struct.fxp_rfa** %5, align 8
  %30 = getelementptr inbounds %struct.fxp_rfa, %struct.fxp_rfa* %29, i32 0, i32 1
  %31 = load %struct.fxp_rx*, %struct.fxp_rx** %4, align 8
  %32 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32enc(i32* %30, i32 %33)
  %35 = load %struct.fxp_rfa*, %struct.fxp_rfa** %5, align 8
  %36 = getelementptr inbounds %struct.fxp_rfa, %struct.fxp_rfa* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fxp_rx*, %struct.fxp_rx** %6, align 8
  %41 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %44 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @bus_dmamap_sync(i32 %39, i32 %42, i32 %45)
  br label %54

47:                                               ; preds = %2
  %48 = load %struct.fxp_rx*, %struct.fxp_rx** %4, align 8
  %49 = getelementptr inbounds %struct.fxp_rx, %struct.fxp_rx* %48, i32 0, i32 0
  store %struct.fxp_rx* null, %struct.fxp_rx** %49, align 8
  %50 = load %struct.fxp_rx*, %struct.fxp_rx** %4, align 8
  %51 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %52 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.fxp_rx* %50, %struct.fxp_rx** %53, align 8
  br label %54

54:                                               ; preds = %47, %12
  %55 = load %struct.fxp_rx*, %struct.fxp_rx** %4, align 8
  %56 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %57 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store %struct.fxp_rx* %55, %struct.fxp_rx** %58, align 8
  ret void
}

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
