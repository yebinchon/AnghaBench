; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_start_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_start_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64, i32, i32, i32 }
%struct.mbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@FXP_NTXCB_HIWAT = common dso_local global i64 0, align 8
@FXP_NTXCB = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@FXP_SCB_COMMAND_CU_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fxp_start_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_start_body(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.fxp_softc* @if_getsoftc(i32 %6)
  store %struct.fxp_softc* %7, %struct.fxp_softc** %3, align 8
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @FXP_LOCK_ASSERT(%struct.fxp_softc* %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @if_getdrvflags(i32 %11)
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %92

20:                                               ; preds = %1
  %21 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %22 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FXP_NTXCB_HIWAT, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %28 = call i32 @fxp_txeof(%struct.fxp_softc* %27)
  br label %29

29:                                               ; preds = %26, %20
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @if_sendq_empty(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @FXP_NTXCB, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ]
  br i1 %43, label %44, label %71

44:                                               ; preds = %42
  %45 = load i32, i32* %2, align 4
  %46 = call %struct.mbuf* @if_dequeue(i32 %45)
  store %struct.mbuf* %46, %struct.mbuf** %4, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = icmp eq %struct.mbuf* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %71

50:                                               ; preds = %44
  %51 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %52 = call i64 @fxp_encap(%struct.fxp_softc* %51, %struct.mbuf** %4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %71

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = call i32 @if_sendq_prepend(i32 %59, %struct.mbuf* %60)
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %64 = call i32 @if_setdrvflagbits(i32 %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %2, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %70 = call i32 @if_bpfmtap(i32 %68, %struct.mbuf* %69)
  br label %30

71:                                               ; preds = %57, %49, %42
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %76 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %79 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %82 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %83)
  %85 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %86 = call i32 @fxp_scb_wait(%struct.fxp_softc* %85)
  %87 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %88 = load i32, i32* @FXP_SCB_COMMAND_CU_RESUME, align 4
  %89 = call i32 @fxp_scb_cmd(%struct.fxp_softc* %87, i32 %88)
  %90 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %91 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %90, i32 0, i32 1
  store i32 5, i32* %91, align 8
  br label %92

92:                                               ; preds = %19, %74, %71
  ret void
}

declare dso_local %struct.fxp_softc* @if_getsoftc(i32) #1

declare dso_local i32 @FXP_LOCK_ASSERT(%struct.fxp_softc*, i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @fxp_txeof(%struct.fxp_softc*) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local %struct.mbuf* @if_dequeue(i32) #1

declare dso_local i64 @fxp_encap(%struct.fxp_softc*, %struct.mbuf**) #1

declare dso_local i32 @if_sendq_prepend(i32, %struct.mbuf*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @if_bpfmtap(i32, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @fxp_scb_wait(%struct.fxp_softc*) #1

declare dso_local i32 @fxp_scb_cmd(%struct.fxp_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
