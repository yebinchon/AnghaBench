; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphyter.c_nsphyter_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphyter.c_nsphyter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @nsphyter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsphyter_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.ifmedia_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %10, align 8
  store %struct.ifmedia_entry* %11, %struct.ifmedia_entry** %3, align 8
  %12 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MIIF_NOISOLATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @BMCR_RESET, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @BMCR_RESET, align 4
  %22 = load i32, i32* @BMCR_ISO, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @MII_BMCR, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @PHY_WRITE(%struct.mii_softc* %25, i32 %26, i32 %27)
  %29 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 1000
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %35 = load i32, i32* @MII_BMCR, align 4
  %36 = call i32 @PHY_READ(%struct.mii_softc* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BMCR_RESET, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39, %33
  %46 = call i32 @DELAY(i32 2000)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %30

50:                                               ; preds = %44, %30
  %51 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MIIF_NOISOLATE, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %50
  %58 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %59 = icmp eq %struct.ifmedia_entry* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %62 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60, %57
  %66 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %67 = icmp ne %struct.ifmedia_entry* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %70 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IFM_INST(i32 %71)
  %73 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %74 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68, %60
  %78 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %79 = load i32, i32* @MII_BMCR, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @BMCR_ISO, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @PHY_WRITE(%struct.mii_softc* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %77, %68, %65
  br label %85

85:                                               ; preds = %84, %50
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i64 @IFM_INST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
