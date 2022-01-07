; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32*, i32, %struct.TYPE_2__, i32, %struct.ifnet*, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.ifnet = type { i32 }

@AN_CMD_FORCE_SYNCLOSS = common dso_local global i32 0, align 4
@AN_CMD_DISABLE = common dso_local global i32 0, align 4
@AN_TX_RING_CNT = common dso_local global i32 0, align 4
@AN_CMD_DEALLOC_MEM = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @an_stop(%struct.an_softc* %0) #0 {
  %2 = alloca %struct.an_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %2, align 8
  %5 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %6 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %5)
  %7 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %8 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %14 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %13, i32 0, i32 4
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %3, align 8
  %16 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %17 = load i32, i32* @AN_CMD_FORCE_SYNCLOSS, align 4
  %18 = call i32 @an_cmd(%struct.an_softc* %16, i32 %17, i32 0)
  %19 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %20 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %21 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @AN_INT_EN(i32 %22)
  %24 = call i32 @CSR_WRITE_2(%struct.an_softc* %19, i32 %23, i32 0)
  %25 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %26 = load i32, i32* @AN_CMD_DISABLE, align 4
  %27 = call i32 @an_cmd(%struct.an_softc* %25, i32 %26, i32 0)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %44, %12
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AN_TX_RING_CNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %34 = load i32, i32* @AN_CMD_DEALLOC_MEM, align 4
  %35 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %36 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @an_cmd(%struct.an_softc* %33, i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %49 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %48, i32 0, i32 1
  %50 = call i32 @callout_stop(i32* %49)
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %60 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %47
  %64 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %65 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  %69 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %70 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %11, %63, %47
  ret void
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_INT_EN(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
