; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_lsi64854.c_lsi64854_enet_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_lsi64854.c_lsi64854_enet_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsi64854_softc = type { i32, i32 }

@E_INT_PEND = common dso_local global i32 0, align 4
@E_ERR_PEND = common dso_local global i32 0, align 4
@E_SLAVE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"error: csr=%b\0A\00", align 1
@EDMACSR_BITS = common dso_local global i32 0, align 4
@L64854_EN_DMA = common dso_local global i32 0, align 4
@E_INVALIDATE = common dso_local global i32 0, align 4
@E_DRAIN = common dso_local global i32 0, align 4
@E_DRAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lsi64854_enet_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsi64854_enet_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lsi64854_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.lsi64854_softc*
  store %struct.lsi64854_softc* %9, %struct.lsi64854_softc** %4, align 8
  %10 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %11 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @E_INT_PEND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @E_ERR_PEND, align 4
  %20 = load i32, i32* @E_SLAVE_ERR, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %26 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EDMACSR_BITS, align 4
  %30 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @L64854_EN_DMA, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @E_INVALIDATE, align 4
  %36 = load i32, i32* @E_SLAVE_ERR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @L64854_SCSR(%struct.lsi64854_softc* %40, i32 %41)
  %43 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %44 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  store i32 -1, i32* %2, align 4
  br label %76

45:                                               ; preds = %1
  %46 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %47 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  store i32 10, i32* %6, align 4
  %51 = load i32, i32* @E_DRAIN, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @L64854_SCSR(%struct.lsi64854_softc* %54, i32 %55)
  br label %57

57:                                               ; preds = %69, %50
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp sgt i32 %58, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %63 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %62)
  %64 = load i32, i32* @E_DRAINING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i1 [ false, %57 ], [ %66, %61 ]
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = call i32 @DELAY(i32 1)
  br label %57

71:                                               ; preds = %67
  %72 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %73 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %45
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @L64854_GCSR(%struct.lsi64854_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @L64854_SCSR(%struct.lsi64854_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
