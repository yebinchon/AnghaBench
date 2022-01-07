; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_set_rxmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_set_rxmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, %struct.TYPE_2__*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32 }

@RL_RXCFG_CONFIG = common dso_local global i32 0, align 4
@RL_RXCFG_RX_INDIV = common dso_local global i32 0, align 4
@RL_RXCFG_RX_BROAD = common dso_local global i32 0, align 4
@RL_FLAG_EARLYOFF = common dso_local global i32 0, align 4
@RL_RXCFG_EARLYOFF = common dso_local global i32 0, align 4
@RL_FLAG_8168G_PLUS = common dso_local global i32 0, align 4
@RL_RXCFG_EARLYOFFV2 = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RL_RXCFG_RX_ALLPHYS = common dso_local global i32 0, align 4
@RL_RXCFG_RX_MULTI = common dso_local global i32 0, align 4
@re_hash_maddr = common dso_local global i32 0, align 4
@RL_FLAG_PCIE = common dso_local global i32 0, align 4
@RL_HWREV_8168F = common dso_local global i64 0, align 8
@RL_MAR0 = common dso_local global i32 0, align 4
@RL_MAR4 = common dso_local global i32 0, align 4
@RL_RXCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_set_rxmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_set_rxmode(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %7 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %9 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %8)
  %10 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load i32, i32* @RL_RXCFG_CONFIG, align 4
  %14 = load i32, i32* @RL_RXCFG_RX_INDIV, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RL_RXCFG_RX_BROAD, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RL_FLAG_EARLYOFF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @RL_RXCFG_EARLYOFF, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %40

28:                                               ; preds = %1
  %29 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RL_FLAG_8168G_PLUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @RL_RXCFG_EARLYOFFV2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_ALLMULTI, align 4
  %45 = load i32, i32* @IFF_PROMISC, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %40
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_PROMISC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @RL_RXCFG_RX_ALLPHYS, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* @RL_RXCFG_RX_MULTI, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %65, align 4
  br label %111

66:                                               ; preds = %40
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = load i32, i32* @re_hash_maddr, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %70 = call i32 @if_foreach_llmaddr(%struct.ifnet* %67, i32 %68, i32* %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %74, %66
  %79 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %80 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RL_FLAG_PCIE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bswap32(i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bswap32(i32 %90)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %78
  %96 = load i32, i32* @RL_RXCFG_RX_MULTI, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %74
  %100 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %101 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RL_HWREV_8168F, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %108, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %99
  br label %111

111:                                              ; preds = %110, %60
  %112 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %113 = load i32, i32* @RL_MAR0, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CSR_WRITE_4(%struct.rl_softc* %112, i32 %113, i32 %115)
  %117 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %118 = load i32, i32* @RL_MAR4, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @CSR_WRITE_4(%struct.rl_softc* %117, i32 %118, i32 %120)
  %122 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %123 = load i32, i32* @RL_RXCFG, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @CSR_WRITE_4(%struct.rl_softc* %122, i32 %123, i32 %124)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

declare dso_local i32 @bswap32(i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
