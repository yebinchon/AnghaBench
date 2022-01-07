; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_rxfilter_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_rxfilter_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@BASE_CFG_COMMAND_CONFIG = common dso_local global i64 0, align 8
@BASE_CFG_COMMAND_CONFIG_MHASH_SEL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_PROMIS_EN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MHASH_LEN = common dso_local global i32 0, align 4
@MHASH_START = common dso_local global i64 0, align 8
@atse_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atse_softc*)* @atse_rxfilter_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_rxfilter_locked(%struct.atse_softc* %0) #0 {
  %2 = alloca %struct.atse_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atse_softc* %0, %struct.atse_softc** %2, align 8
  %7 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %8 = load i64, i64* @BASE_CFG_COMMAND_CONFIG, align 8
  %9 = call i32 @CSR_READ_4(%struct.atse_softc* %7, i64 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_MHASH_SEL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_MHASH_SEL, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %21 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %20, i32 0, i32 0
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  store %struct.ifnet* %22, %struct.ifnet** %3, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_PROMIS_EN, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_PROMIS_EN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %40 = load i64, i64* @BASE_CFG_COMMAND_CONFIG, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @CSR_WRITE_4(%struct.atse_softc* %39, i64 %40, i32 %41)
  %43 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_ALLMULTI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MHASH_LEN, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %56 = load i64, i64* @MHASH_START, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @CSR_WRITE_4(%struct.atse_softc* %55, i64 %59, i32 1)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %50

64:                                               ; preds = %50
  br label %91

65:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %67 = load i32, i32* @atse_hash_maddr, align 4
  %68 = call i32 @if_foreach_llmaddr(%struct.ifnet* %66, i32 %67, i32* %6)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %87, %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MHASH_LEN, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %75 = load i64, i64* @MHASH_START, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = call i32 @CSR_WRITE_4(%struct.atse_softc* %74, i64 %78, i32 %85)
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %64
  ret i32 0
}

declare dso_local i32 @CSR_READ_4(%struct.atse_softc*, i64) #1

declare dso_local i32 @CSR_WRITE_4(%struct.atse_softc*, i64, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
