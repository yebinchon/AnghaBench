; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_meminit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i64, i32, %struct.gem_rxsoft*, i64, i64, i32, %struct.TYPE_2__* }
%struct.gem_rxsoft = type { i32* }
%struct.TYPE_2__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@GEM_NTXDESC = common dso_local global i32 0, align 4
@GEM_MAXTXFREE = common dso_local global i32 0, align 4
@GEM_NRXDESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unable to allocate or map RX buffer %d, error = %d\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem_softc*)* @gem_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_meminit(%struct.gem_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem_softc*, align 8
  %4 = alloca %struct.gem_rxsoft*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gem_softc* %0, %struct.gem_softc** %3, align 8
  %7 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @GEM_LOCK_ASSERT(%struct.gem_softc* %7, i32 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GEM_NTXDESC, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %16 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %23 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* @GEM_MAXTXFREE, align 4
  %34 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %35 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %37 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %39 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %75, %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @GEM_NRXDESC, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %46 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %45, i32 0, i32 2
  %47 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %47, i64 %49
  store %struct.gem_rxsoft* %50, %struct.gem_rxsoft** %4, align 8
  %51 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %4, align 8
  %52 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %44
  %56 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @gem_add_rxbuf(%struct.gem_softc* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %62 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %68 = call i32 @gem_rxdrain(%struct.gem_softc* %67)
  store i32 1, i32* %2, align 4
  br label %86

69:                                               ; preds = %55
  br label %74

70:                                               ; preds = %44
  %71 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GEM_INIT_RXDESC(%struct.gem_softc* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %69
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %40

78:                                               ; preds = %40
  %79 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %80 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %82 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %83 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @GEM_CDSYNC(%struct.gem_softc* %81, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %60
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @GEM_LOCK_ASSERT(%struct.gem_softc*, i32) #1

declare dso_local i32 @gem_add_rxbuf(%struct.gem_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @gem_rxdrain(%struct.gem_softc*) #1

declare dso_local i32 @GEM_INIT_RXDESC(%struct.gem_softc*, i32) #1

declare dso_local i32 @GEM_CDSYNC(%struct.gem_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
