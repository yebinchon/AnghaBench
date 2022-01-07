; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_setled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_setled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.arswitch_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_LED_MAX = common dso_local global i32 0, align 4
@ar8327_led_mapping = common dso_local global %struct.TYPE_2__** null, align 8
@led_pattern_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, i32, i32, i32)* @arswitch_setled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_setled(%struct.arswitch_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arswitch_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %17 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %70

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ETHERSWITCH_PORT_LED_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %22
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %70

31:                                               ; preds = %25
  %32 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %33 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %32)
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ar8327_led_mapping, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %45 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ar8327_led_mapping, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 3, %57
  %59 = load i32*, i32** @led_pattern_table, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %63, %64
  %66 = call i32 @arswitch_modifyreg(i32 %46, i32 %56, i32 %58, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %68 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %31, %29, %20
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
