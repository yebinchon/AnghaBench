; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@RxMacControl = common dso_local global i32 0, align 4
@AcceptBroadcast = common dso_local global i32 0, align 4
@AcceptAllPhys = common dso_local global i32 0, align 4
@AcceptMulticast = common dso_local global i32 0, align 4
@AcceptMyPhys = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@sge_hash_maddr = common dso_local global i32 0, align 4
@RxHashTable = common dso_local global i32 0, align 4
@RxHashTable2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_softc*)* @sge_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_rxfilter(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %6 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %7 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %6)
  %8 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %12 = load i32, i32* @RxMacControl, align 4
  %13 = call i32 @CSR_READ_2(%struct.sge_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @AcceptBroadcast, align 4
  %15 = load i32, i32* @AcceptAllPhys, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AcceptMulticast, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @AcceptMyPhys, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_BROADCAST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @AcceptBroadcast, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_PROMISC, align 4
  %40 = load i32, i32* @IFF_ALLMULTI, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_PROMISC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @AcceptAllPhys, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32, i32* @AcceptMulticast, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %59, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %60, align 4
  br label %71

61:                                               ; preds = %35
  %62 = load i32, i32* @AcceptMulticast, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %66, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = load i32, i32* @sge_hash_maddr, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %70 = call i32 @if_foreach_llmaddr(%struct.ifnet* %67, i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %61, %55
  %72 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %73 = load i32, i32* @RxMacControl, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @CSR_WRITE_2(%struct.sge_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %77 = load i32, i32* @RxHashTable, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CSR_WRITE_4(%struct.sge_softc* %76, i32 %77, i32 %79)
  %81 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %82 = load i32, i32* @RxHashTable2, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CSR_WRITE_4(%struct.sge_softc* %81, i32 %82, i32 %84)
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.sge_softc*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
