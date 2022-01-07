; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sk/extr_if_sk.c_sk_rxfilter_genesis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sk/extr_if_sk.c_sk_rxfilter_genesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_if_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sk_add_maddr_genesis_ctx = type { i32, i32*, %struct.TYPE_2__, %struct.sk_if_softc* }
%struct.TYPE_2__ = type { i32, i32 }

@XM_MODE = common dso_local global i32 0, align 4
@XM_MODE_RX_PROMISC = common dso_local global i32 0, align 4
@XM_MODE_RX_USE_HASH = common dso_local global i32 0, align 4
@XM_MODE_RX_USE_PERFECT = common dso_local global i32 0, align 4
@XM_RXFILT_MAX = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@sk_add_maddr_genesis = common dso_local global i32 0, align 4
@XM_MAR0 = common dso_local global i32 0, align 4
@XM_MAR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_if_softc*)* @sk_rxfilter_genesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_rxfilter_genesis(%struct.sk_if_softc* %0) #0 {
  %2 = alloca %struct.sk_if_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.sk_add_maddr_genesis_ctx, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  store %struct.sk_if_softc* %0, %struct.sk_if_softc** %2, align 8
  %7 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sk_if_softc, %struct.sk_if_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 0
  %11 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %12 = ptrtoint %struct.sk_if_softc* %11 to i32
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 2
  %15 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 3
  store %struct.sk_if_softc* null, %struct.sk_if_softc** %16, align 8
  %17 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  %18 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %19 = call i32 @SK_IF_LOCK_ASSERT(%struct.sk_if_softc* %18)
  %20 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %21 = load i32, i32* @XM_MODE, align 4
  %22 = call i32 @SK_XM_READ_4(%struct.sk_if_softc* %20, i32 %21)
  %23 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @XM_MODE_RX_PROMISC, align 4
  %25 = load i32, i32* @XM_MODE_RX_USE_HASH, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @XM_MODE_RX_USE_PERFECT, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 8
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %42, %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @XM_RXFILT_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @sk_setfilt(%struct.sk_if_softc* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %33

45:                                               ; preds = %33
  %46 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFF_ALLMULTI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_PROMISC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %52, %45
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_ALLMULTI, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @XM_MODE_RX_USE_HASH, align 4
  %68 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFF_PROMISC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32, i32* @XM_MODE_RX_PROMISC, align 4
  %80 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %71
  %84 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 -1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 -1, i32* %89, align 4
  br label %94

90:                                               ; preds = %52
  %91 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %92 = load i32, i32* @sk_add_maddr_genesis, align 4
  %93 = call i32 @if_foreach_llmaddr(%struct.ifnet* %91, i32 %92, %struct.sk_add_maddr_genesis_ctx* %4)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %96 = load i32, i32* @XM_MODE, align 4
  %97 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @SK_XM_WRITE_4(%struct.sk_if_softc* %95, i32 %96, i32 %98)
  %100 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %101 = load i32, i32* @XM_MAR0, align 4
  %102 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SK_XM_WRITE_4(%struct.sk_if_softc* %100, i32 %101, i32 %105)
  %107 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %108 = load i32, i32* @XM_MAR2, align 4
  %109 = getelementptr inbounds %struct.sk_add_maddr_genesis_ctx, %struct.sk_add_maddr_genesis_ctx* %4, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SK_XM_WRITE_4(%struct.sk_if_softc* %107, i32 %108, i32 %112)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SK_IF_LOCK_ASSERT(%struct.sk_if_softc*) #2

declare dso_local i32 @SK_XM_READ_4(%struct.sk_if_softc*, i32) #2

declare dso_local i32 @sk_setfilt(%struct.sk_if_softc*, i32*, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.sk_add_maddr_genesis_ctx*) #2

declare dso_local i32 @SK_XM_WRITE_4(%struct.sk_if_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
