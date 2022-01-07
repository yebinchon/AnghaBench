; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@AGE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CFG_BCAST = common dso_local global i32 0, align 4
@MAC_CFG_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AGE_MAR0 = common dso_local global i32 0, align 4
@AGE_MAR1 = common dso_local global i32 0, align 4
@age_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_rxfilter(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %6 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %7 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %6)
  %8 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %9 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %12 = load i32, i32* @AGE_MAC_CFG, align 4
  %13 = call i32 @CSR_READ_4(%struct.age_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %15 = load i32, i32* @MAC_CFG_BCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_BROADCAST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @MAC_CFG_BCAST, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_PROMISC, align 4
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %32
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_PROMISC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_ALLMULTI, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %65 = load i32, i32* @AGE_MAR0, align 4
  %66 = call i32 @CSR_WRITE_4(%struct.age_softc* %64, i32 %65, i32 -1)
  %67 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %68 = load i32, i32* @AGE_MAR1, align 4
  %69 = call i32 @CSR_WRITE_4(%struct.age_softc* %67, i32 %68, i32 -1)
  %70 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %71 = load i32, i32* @AGE_MAC_CFG, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @CSR_WRITE_4(%struct.age_softc* %70, i32 %71, i32 %72)
  br label %95

74:                                               ; preds = %32
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %76 = call i32 @bzero(i32* %75, i32 8)
  %77 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %78 = load i32, i32* @age_hash_maddr, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %80 = call i32 @if_foreach_llmaddr(%struct.ifnet* %77, i32 %78, i32* %79)
  %81 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %82 = load i32, i32* @AGE_MAR0, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CSR_WRITE_4(%struct.age_softc* %81, i32 %82, i32 %84)
  %86 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %87 = load i32, i32* @AGE_MAR1, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CSR_WRITE_4(%struct.age_softc* %86, i32 %87, i32 %89)
  %91 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %92 = load i32, i32* @AGE_MAC_CFG, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @CSR_WRITE_4(%struct.age_softc* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %74, %63
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
