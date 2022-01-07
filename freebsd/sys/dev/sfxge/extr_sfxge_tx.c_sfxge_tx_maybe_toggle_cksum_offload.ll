; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_maybe_toggle_cksum_offload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_maybe_toggle_cksum_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i64, i32, i32* }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sfxge_tx_mapping = type { i32 }

@CSUM_DELAY_DATA = common dso_local global i32 0, align 4
@CSUM_DELAY_DATA_IPV6 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@EFX_TXQ_CKSUM_IPV4 = common dso_local global i32 0, align 4
@EFX_TXQ_CKSUM_TCPUDP = common dso_local global i32 0, align 4
@CSUM_DELAY_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*, %struct.sfxge_tx_mapping**)* @sfxge_tx_maybe_toggle_cksum_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_maybe_toggle_cksum_offload(%struct.sfxge_txq* %0, %struct.mbuf* %1, %struct.sfxge_tx_mapping** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_txq*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sfxge_tx_mapping**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sfxge_tx_mapping** %2, %struct.sfxge_tx_mapping*** %7, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CSUM_DELAY_DATA, align 4
  %15 = load i32, i32* @CSUM_DELAY_DATA_IPV6, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CSUM_TSO, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @EFX_TXQ_CKSUM_IPV4, align 4
  %23 = load i32, i32* @EFX_TXQ_CKSUM_TCPUDP, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CSUM_DELAY_IP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @EFX_TXQ_CKSUM_IPV4, align 4
  store i32 %34, i32* %8, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %33
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %40 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %68

44:                                               ; preds = %37
  %45 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %46 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %49 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %53 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @efx_tx_qdesc_checksum_create(i32 %54, i32 %55, i32* %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %60 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %62 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %66 = load %struct.sfxge_tx_mapping**, %struct.sfxge_tx_mapping*** %7, align 8
  %67 = call i32 @sfxge_next_stmp(%struct.sfxge_txq* %65, %struct.sfxge_tx_mapping** %66)
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %44, %43
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @efx_tx_qdesc_checksum_create(i32, i32, i32*) #1

declare dso_local i32 @sfxge_next_stmp(%struct.sfxge_txq*, %struct.sfxge_tx_mapping**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
