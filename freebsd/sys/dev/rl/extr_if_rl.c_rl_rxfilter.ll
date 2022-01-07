; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@RL_RXCFG = common dso_local global i32 0, align 4
@RL_RXCFG_RX_ALLPHYS = common dso_local global i32 0, align 4
@RL_RXCFG_RX_BROAD = common dso_local global i32 0, align 4
@RL_RXCFG_RX_MULTI = common dso_local global i32 0, align 4
@RL_RXCFG_RX_INDIV = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@rl_hash_maddr = common dso_local global i32 0, align 4
@RL_MAR0 = common dso_local global i32 0, align 4
@RL_MAR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_rxfilter(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %6 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %6, i32 0, i32 0
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %11 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %10)
  %12 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %13 = load i32, i32* @RL_RXCFG, align 4
  %14 = call i32 @CSR_READ_4(%struct.rl_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @RL_RXCFG_RX_ALLPHYS, align 4
  %16 = load i32, i32* @RL_RXCFG_RX_BROAD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RL_RXCFG_RX_MULTI, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @RL_RXCFG_RX_INDIV, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_BROADCAST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @RL_RXCFG_RX_BROAD, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_ALLMULTI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_PROMISC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43, %36
  %51 = load i32, i32* @RL_RXCFG_RX_MULTI, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_PROMISC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i32, i32* @RL_RXCFG_RX_ALLPHYS, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %50
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %65, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %66, align 4
  br label %84

67:                                               ; preds = %43
  %68 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %69 = load i32, i32* @rl_hash_maddr, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %71 = call i32 @if_foreach_llmaddr(%struct.ifnet* %68, i32 %69, i32* %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75, %67
  %80 = load i32, i32* @RL_RXCFG_RX_MULTI, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %86 = load i32, i32* @RL_MAR0, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CSR_WRITE_4(%struct.rl_softc* %85, i32 %86, i32 %88)
  %90 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %91 = load i32, i32* @RL_MAR4, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CSR_WRITE_4(%struct.rl_softc* %90, i32 %91, i32 %93)
  %95 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %96 = load i32, i32* @RL_RXCFG, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.rl_softc* %95, i32 %96, i32 %97)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #2

declare dso_local i32 @CSR_READ_4(%struct.rl_softc*, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
