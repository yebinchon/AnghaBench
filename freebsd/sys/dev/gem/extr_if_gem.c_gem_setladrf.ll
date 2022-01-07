; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_setladrf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_setladrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@GEM_MAC_RX_HASH_FILTER = common dso_local global i32 0, align 4
@GEM_MAC_RX_CONFIG = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@GEM_MAC_RX_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot disable RX MAC or hash filter\0A\00", align 1
@GEM_MAC_RX_PROMISCUOUS = common dso_local global i32 0, align 4
@GEM_MAC_RX_PROMISC_GRP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@gem_hash_maddr = common dso_local global i32 0, align 4
@GEM_MAC_HASH0 = common dso_local global i32 0, align 4
@GEM_MAC_HASH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem_softc*)* @gem_setladrf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_setladrf(%struct.gem_softc* %0) #0 {
  %2 = alloca %struct.gem_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.gem_softc* %0, %struct.gem_softc** %2, align 8
  %7 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %8 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @GEM_LOCK_ASSERT(%struct.gem_softc* %10, i32 %11)
  %13 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %14 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GEM_MAC_RX_HASH_FILTER, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %20 = load i32, i32* @GEM_MAC_RX_CONFIG, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %24 = load i32, i32* @GEM_MAC_RX_CONFIG, align 4
  %25 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %26 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %23, i32 %24, i32 4, i32 %27)
  %29 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %30 = load i32, i32* @GEM_MAC_RX_CONFIG, align 4
  %31 = load i32, i32* @GEM_MAC_RX_HASH_FILTER, align 4
  %32 = load i32, i32* @GEM_MAC_RX_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @GEM_BANK1_BITWAIT(%struct.gem_softc* %29, i32 %30, i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %1
  %37 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %38 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %1
  %42 = load i32, i32* @GEM_MAC_RX_PROMISCUOUS, align 4
  %43 = load i32, i32* @GEM_MAC_RX_PROMISC_GRP, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_PROMISC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load i32, i32* @GEM_MAC_RX_PROMISCUOUS, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %100

58:                                               ; preds = %41
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @GEM_MAC_RX_PROMISC_GRP, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %100

69:                                               ; preds = %58
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %71 = call i32 @memset(i32* %70, i32 0, i32 64)
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = load i32, i32* @gem_hash_maddr, align 4
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %75 = call i32 @if_foreach_llmaddr(%struct.ifnet* %72, i32 %73, i32* %74)
  %76 = load i32, i32* @GEM_MAC_RX_HASH_FILTER, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %96, %69
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 16
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %84 = load i32, i32* @GEM_MAC_HASH0, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @GEM_MAC_HASH1, align 4
  %87 = load i32, i32* @GEM_MAC_HASH0, align 4
  %88 = sub nsw i32 %86, %87
  %89 = mul nsw i32 %85, %88
  %90 = add nsw i32 %84, %89
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %83, i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %79

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %65, %54
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %103 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %105 = load i32, i32* @GEM_MAC_RX_CONFIG, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @GEM_MAC_RX_ENABLE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %104, i32 %105, i32 %108)
  ret void
}

declare dso_local i32 @GEM_LOCK_ASSERT(%struct.gem_softc*, i32) #1

declare dso_local i32 @GEM_BANK1_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i32 @GEM_BANK1_BARRIER(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @GEM_BANK1_BITWAIT(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
