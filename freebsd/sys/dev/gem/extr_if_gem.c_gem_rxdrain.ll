; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_rxdrain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_rxdrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32, %struct.gem_rxsoft* }
%struct.gem_rxsoft = type { i32*, i32 }

@GEM_NRXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem_softc*)* @gem_rxdrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_rxdrain(%struct.gem_softc* %0) #0 {
  %2 = alloca %struct.gem_softc*, align 8
  %3 = alloca %struct.gem_rxsoft*, align 8
  %4 = alloca i32, align 4
  store %struct.gem_softc* %0, %struct.gem_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GEM_NRXDESC, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %11 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %10, i32 0, i32 1
  %12 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %12, i64 %14
  store %struct.gem_rxsoft* %15, %struct.gem_rxsoft** %3, align 8
  %16 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %3, align 8
  %17 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %9
  %21 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %22 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %3, align 8
  %25 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %28 = call i32 @bus_dmamap_sync(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %30 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %3, align 8
  %33 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dmamap_unload(i32 %31, i32 %34)
  %36 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %3, align 8
  %37 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @m_freem(i32* %38)
  %40 = load %struct.gem_rxsoft*, %struct.gem_rxsoft** %3, align 8
  %41 = getelementptr inbounds %struct.gem_rxsoft, %struct.gem_rxsoft* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %20, %9
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
