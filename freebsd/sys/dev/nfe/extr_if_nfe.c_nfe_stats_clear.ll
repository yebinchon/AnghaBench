; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }

@NFE_MIB_V1 = common dso_local global i32 0, align 4
@NFE_NUM_MIB_STATV1 = common dso_local global i32 0, align 4
@NFE_MIB_V2 = common dso_local global i32 0, align 4
@NFE_MIB_V3 = common dso_local global i32 0, align 4
@NFE_NUM_MIB_STATV2 = common dso_local global i32 0, align 4
@NFE_TX_OCTET = common dso_local global i64 0, align 8
@NFE_TX_UNICAST = common dso_local global i64 0, align 8
@NFE_TX_MULTICAST = common dso_local global i64 0, align 8
@NFE_TX_BROADCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*)* @nfe_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_stats_clear(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  %5 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NFE_MIB_V1, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @NFE_NUM_MIB_STATV1, align 4
  store i32 %12, i32* %4, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFE_MIB_V2, align 4
  %18 = load i32, i32* @NFE_MIB_V3, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @NFE_NUM_MIB_STATV2, align 4
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %13
  br label %59

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %11
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %33 = load i64, i64* @NFE_TX_OCTET, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %33, %36
  %38 = call i32 @NFE_READ(%struct.nfe_softc* %32, i64 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %44 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NFE_MIB_V3, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %51 = load i64, i64* @NFE_TX_UNICAST, align 8
  %52 = call i32 @NFE_READ(%struct.nfe_softc* %50, i64 %51)
  %53 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %54 = load i64, i64* @NFE_TX_MULTICAST, align 8
  %55 = call i32 @NFE_READ(%struct.nfe_softc* %53, i64 %54)
  %56 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %57 = load i64, i64* @NFE_TX_BROADCAST, align 8
  %58 = call i32 @NFE_READ(%struct.nfe_softc* %56, i64 %57)
  br label %59

59:                                               ; preds = %24, %49, %42
  ret void
}

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
