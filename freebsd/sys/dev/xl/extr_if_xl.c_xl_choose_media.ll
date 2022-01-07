; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_choose_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_choose_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i32, i32, i32 }

@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@XL_TYPE_905B = common dso_local global i32 0, align 4
@XL_MEDIAOPT_10FL = common dso_local global i32 0, align 4
@IFM_10_FL = common dso_local global i32 0, align 4
@IFM_10_5 = common dso_local global i32 0, align 4
@IFM_10_2 = common dso_local global i32 0, align 4
@IFM_100_FX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown XCVR type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*, i32*)* @xl_choose_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_choose_media(%struct.xl_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca i32*, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %6 = call i32 @XL_LOCK(%struct.xl_softc* %5)
  %7 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %8 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %65 [
    i32 132, label %10
    i32 131, label %19
    i32 129, label %50
    i32 130, label %59
    i32 133, label %59
    i32 128, label %59
    i32 134, label %60
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @IFM_ETHER, align 4
  %12 = load i32, i32* @IFM_10_T, align 4
  %13 = or i32 %11, %12
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xl_setmode(%struct.xl_softc* %15, i32 %17)
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XL_TYPE_905B, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %27 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XL_MEDIAOPT_10FL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @IFM_ETHER, align 4
  %33 = load i32, i32* @IFM_10_FL, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xl_setmode(%struct.xl_softc* %36, i32 %38)
  br label %49

40:                                               ; preds = %25, %19
  %41 = load i32, i32* @IFM_ETHER, align 4
  %42 = load i32, i32* @IFM_10_5, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xl_setmode(%struct.xl_softc* %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %31
  br label %77

50:                                               ; preds = %2
  %51 = load i32, i32* @IFM_ETHER, align 4
  %52 = load i32, i32* @IFM_10_2, align 4
  %53 = or i32 %51, %52
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xl_setmode(%struct.xl_softc* %55, i32 %57)
  br label %77

59:                                               ; preds = %2, %2, %2
  br label %77

60:                                               ; preds = %2
  %61 = load i32, i32* @IFM_ETHER, align 4
  %62 = load i32, i32* @IFM_100_FX, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  br label %77

65:                                               ; preds = %2
  %66 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %67 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %70 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @IFM_ETHER, align 4
  %74 = load i32, i32* @IFM_10_T, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %60, %59, %50, %49, %10
  %78 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %79 = call i32 @XL_UNLOCK(%struct.xl_softc* %78)
  ret void
}

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #1

declare dso_local i32 @xl_setmode(%struct.xl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
