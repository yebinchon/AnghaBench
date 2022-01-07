; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_max_pkt_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_max_pkt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }

@SFXGE_TX_MAPPING_MAX_SEG = common dso_local global i32 0, align 4
@SFXGE_TXQ_IP_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@SFXGE_TSO_MAX_SEGS = common dso_local global i32 0, align 4
@SFXGE_FATSOV1 = common dso_local global i32 0, align 4
@SFXGE_FATSOV2 = common dso_local global i32 0, align 4
@EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX = common dso_local global i64 0, align 8
@EFX_TX_FATSOV2_OPT_NDESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32, i32)* @sfxge_tx_max_pkt_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_max_pkt_desc(%struct.sfxge_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SFXGE_TX_MAPPING_MAX_SEG, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %21 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_2__* @efx_nic_cfg_get(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load i32, i32* @SFXGE_TSO_MAX_SEGS, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SFXGE_FATSOV1, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SFXGE_TSO_MAX_SEGS, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SFXGE_FATSOV2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @SFXGE_TX_MAPPING_MAX_SEG, align 4
  %53 = load i64, i64* @EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @howmany(i32 %52, i64 %54)
  %56 = load i32, i32* @EFX_TX_FATSOV2_OPT_NDESCS, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %55, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %51, %46
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @MAX(i32 %62, i32 %63)
  %65 = call i32 @MAX(i32 %61, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %60, %30
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_2__* @efx_nic_cfg_get(i32) #1

declare dso_local i32 @howmany(i32, i64) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
