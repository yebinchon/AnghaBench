; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@STE_RX_MODE = common dso_local global i32 0, align 4
@STE_RXMODE_UNICAST = common dso_local global i32 0, align 4
@STE_RXMODE_ALLMULTI = common dso_local global i32 0, align 4
@STE_RXMODE_MULTIHASH = common dso_local global i32 0, align 4
@STE_RXMODE_BROADCAST = common dso_local global i32 0, align 4
@STE_RXMODE_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@ste_hash_maddr = common dso_local global i32 0, align 4
@STE_MAR0 = common dso_local global i32 0, align 4
@STE_MAR1 = common dso_local global i32 0, align 4
@STE_MAR2 = common dso_local global i32 0, align 4
@STE_MAR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_rxfilter(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %8 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %7)
  %9 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %13 = load i32, i32* @STE_RX_MODE, align 4
  %14 = call i32 @CSR_READ_1(%struct.ste_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @STE_RXMODE_UNICAST, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @STE_RXMODE_ALLMULTI, align 4
  %19 = load i32, i32* @STE_RXMODE_MULTIHASH, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @STE_RXMODE_BROADCAST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @STE_RXMODE_PROMISC, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_BROADCAST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @STE_RXMODE_BROADCAST, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %38
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_ALLMULTI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @STE_RXMODE_ALLMULTI, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_PROMISC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @STE_RXMODE_PROMISC, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %58
  br label %78

70:                                               ; preds = %38
  %71 = load i32, i32* @STE_RXMODE_MULTIHASH, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = load i32, i32* @ste_hash_maddr, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %77 = call i32 @if_foreach_llmaddr(%struct.ifnet* %74, i32 %75, i32* %76)
  br label %78

78:                                               ; preds = %70, %69
  %79 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %80 = load i32, i32* @STE_MAR0, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 65535
  %84 = call i32 @CSR_WRITE_2(%struct.ste_softc* %79, i32 %80, i32 %83)
  %85 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %86 = load i32, i32* @STE_MAR1, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 16
  %90 = and i32 %89, 65535
  %91 = call i32 @CSR_WRITE_2(%struct.ste_softc* %85, i32 %86, i32 %90)
  %92 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %93 = load i32, i32* @STE_MAR2, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 65535
  %97 = call i32 @CSR_WRITE_2(%struct.ste_softc* %92, i32 %93, i32 %96)
  %98 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %99 = load i32, i32* @STE_MAR3, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 16
  %103 = and i32 %102, 65535
  %104 = call i32 @CSR_WRITE_2(%struct.ste_softc* %98, i32 %99, i32 %103)
  %105 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %106 = load i32, i32* @STE_RX_MODE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @CSR_WRITE_1(%struct.ste_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %110 = load i32, i32* @STE_RX_MODE, align 4
  %111 = call i32 @CSR_READ_1(%struct.ste_softc* %109, i32 %110)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #2

declare dso_local i32 @CSR_READ_1(%struct.ste_softc*, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i32, i32) #2

declare dso_local i32 @CSR_WRITE_1(%struct.ste_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
