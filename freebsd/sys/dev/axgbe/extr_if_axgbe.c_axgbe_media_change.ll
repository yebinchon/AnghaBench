; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.axgbe_softc* }
%struct.axgbe_softc = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SPEED_10000 = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i8* null, align 8
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @axgbe_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axgbe_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.axgbe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load %struct.axgbe_softc*, %struct.axgbe_softc** %6, align 8
  store %struct.axgbe_softc* %7, %struct.axgbe_softc** %3, align 8
  %8 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = call i32 @sx_xlock(i32* %10)
  %12 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @IFM_SUBTYPE(i32 %18)
  switch i32 %19, label %59 [
    i32 130, label %20
    i32 129, label %31
    i32 131, label %42
    i32 128, label %53
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @SPEED_10000, align 4
  %22 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %27 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %28 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  br label %59

31:                                               ; preds = %1
  %32 = load i32, i32* @SPEED_2500, align 4
  %33 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %34 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %38 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  br label %59

42:                                               ; preds = %1
  %43 = load i32, i32* @SPEED_1000, align 4
  %44 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %45 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  %48 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %49 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  br label %59

53:                                               ; preds = %1
  %54 = load i8*, i8** @AUTONEG_ENABLE, align 8
  %55 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %56 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  br label %59

59:                                               ; preds = %1, %53, %42, %31, %20
  %60 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %61 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = call i32 @sx_xunlock(i32* %62)
  %64 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %65 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %67, align 8
  %69 = load %struct.axgbe_softc*, %struct.axgbe_softc** %3, align 8
  %70 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %69, i32 0, i32 0
  %71 = call i32 %68(%struct.TYPE_10__* %70)
  %72 = sub nsw i32 0, %71
  ret i32 %72
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
