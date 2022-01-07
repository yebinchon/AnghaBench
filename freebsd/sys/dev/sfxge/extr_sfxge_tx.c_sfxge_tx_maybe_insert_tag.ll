; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_maybe_insert_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_maybe_insert_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i64, i64, i32, i32* }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sfxge_tx_mapping = type { i32 }

@M_VLANTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*, %struct.sfxge_tx_mapping**)* @sfxge_tx_maybe_insert_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_maybe_insert_tag(%struct.sfxge_txq* %0, %struct.mbuf* %1, %struct.sfxge_tx_mapping** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_txq*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sfxge_tx_mapping**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sfxge_tx_mapping** %2, %struct.sfxge_tx_mapping*** %7, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @M_VLANTAG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i64 [ %20, %16 ], [ 0, %21 ]
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %26 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %55

30:                                               ; preds = %22
  %31 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %32 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %35 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %39 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @bswap16(i64 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @efx_tx_qdesc_vlantci_create(i32 %40, i32 %42, i32* %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %47 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %49 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %53 = load %struct.sfxge_tx_mapping**, %struct.sfxge_tx_mapping*** %7, align 8
  %54 = call i32 @sfxge_next_stmp(%struct.sfxge_txq* %52, %struct.sfxge_tx_mapping** %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %30, %29
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @efx_tx_qdesc_vlantci_create(i32, i32, i32*) #1

declare dso_local i32 @bswap16(i64) #1

declare dso_local i32 @sfxge_next_stmp(%struct.sfxge_txq*, %struct.sfxge_tx_mapping**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
