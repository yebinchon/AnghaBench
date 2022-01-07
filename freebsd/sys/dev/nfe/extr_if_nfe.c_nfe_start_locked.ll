; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@NFE_RXTX_CTL = common dso_local global i32 0, align 4
@NFE_RXTX_KICKTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nfe_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_start_locked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.nfe_softc* @if_getsoftc(i32 %6)
  store %struct.nfe_softc* %7, %struct.nfe_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %9 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @if_getdrvflags(i32 %10)
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  br label %83

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @if_sendq_empty(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = call %struct.mbuf* @if_dequeue(i32 %31)
  store %struct.mbuf* %32, %struct.mbuf** %4, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = icmp eq %struct.mbuf* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %57

36:                                               ; preds = %30
  %37 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %38 = call i64 @nfe_encap(%struct.nfe_softc* %37, %struct.mbuf** %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %57

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = call i32 @if_sendq_prepend(i32 %45, %struct.mbuf* %46)
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %50 = call i32 @if_setdrvflagbits(i32 %48, i32 %49, i32 0)
  br label %57

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = call i32 @if_etherbpfmtap(i32 %54, %struct.mbuf* %55)
  br label %25

57:                                               ; preds = %44, %43, %35, %25
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  %61 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %62 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %66 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %70 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @bus_dmamap_sync(i32 %64, i32 %68, i32 %71)
  %73 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %74 = load i32, i32* @NFE_RXTX_CTL, align 4
  %75 = load i32, i32* @NFE_RXTX_KICKTX, align 4
  %76 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %77 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %75, %78
  %80 = call i32 @NFE_WRITE(%struct.nfe_softc* %73, i32 %74, i32 %79)
  %81 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %82 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %81, i32 0, i32 2
  store i32 5, i32* %82, align 4
  br label %83

83:                                               ; preds = %23, %60, %57
  ret void
}

declare dso_local %struct.nfe_softc* @if_getsoftc(i32) #1

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local %struct.mbuf* @if_dequeue(i32) #1

declare dso_local i64 @nfe_encap(%struct.nfe_softc*, %struct.mbuf**) #1

declare dso_local i32 @if_sendq_prepend(i32, %struct.mbuf*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @if_etherbpfmtap(i32, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
