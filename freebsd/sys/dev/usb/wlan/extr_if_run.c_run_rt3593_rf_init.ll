; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.run_softc = type { i32, i32, i32, i32 }

@RT3070_GPIO_SWITCH = common dso_local global i32 0, align 4
@rt3593_def_rf = common dso_local global %struct.TYPE_3__* null, align 8
@RT5390_RESCAL = common dso_local global i32 0, align 4
@RT3593_AUTOTUNE_BYPASS = common dso_local global i32 0, align 4
@RT3070_LDO_CFG0 = common dso_local global i32 0, align 4
@RT3070_OPT_14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_rt3593_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3593_rf_init(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %6 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %7 = load i32, i32* @RT3070_GPIO_SWITCH, align 4
  %8 = call i32 @run_read(%struct.run_softc* %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, -145
  store i32 %10, i32* %3, align 4
  %11 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %12 = load i32, i32* @RT3070_GPIO_SWITCH, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @run_write(%struct.run_softc* %11, i32 %12, i32 %13)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3593_def_rf, align 8
  %18 = call i64 @nitems(%struct.TYPE_3__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3593_def_rf, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3593_def_rf, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @run_rt3070_rf_write(%struct.run_softc* %21, i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %38 = load i32, i32* @RT5390_RESCAL, align 4
  %39 = call i32 @run_rt3070_rf_write(%struct.run_softc* %37, i32 2, i32 %38)
  %40 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %41 = call i32 @run_adjust_freq_offset(%struct.run_softc* %40)
  %42 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %43 = call i32 @run_rt3070_rf_read(%struct.run_softc* %42, i32 18, i32* %4)
  %44 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RT3593_AUTOTUNE_BYPASS, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @run_rt3070_rf_write(%struct.run_softc* %44, i32 18, i32 %47)
  %49 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %50 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %51 = call i32 @run_read(%struct.run_softc* %49, i32 %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, -520093697
  %54 = or i32 %53, 218103808
  store i32 %54, i32* %3, align 4
  %55 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %56 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @run_write(%struct.run_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %60 = call i32 @run_delay(%struct.run_softc* %59, i32 1)
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, -520093697
  %63 = or i32 %62, 16777216
  store i32 %63, i32* %3, align 4
  %64 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %65 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @run_write(%struct.run_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %69 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %68, i32 0, i32 0
  store i32 31, i32* %69, align 4
  %70 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %71 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %70, i32 0, i32 1
  store i32 47, i32* %71, align 4
  %72 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %73 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %74 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %73, i32 0, i32 3
  %75 = call i32 @run_bbp_read(%struct.run_softc* %72, i32 25, i32* %74)
  %76 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %77 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %78 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %77, i32 0, i32 2
  %79 = call i32 @run_bbp_read(%struct.run_softc* %76, i32 26, i32* %78)
  %80 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %81 = load i32, i32* @RT3070_OPT_14, align 4
  %82 = call i32 @run_read(%struct.run_softc* %80, i32 %81, i32* %3)
  %83 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %84 = load i32, i32* @RT3070_OPT_14, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, 1
  %87 = call i32 @run_write(%struct.run_softc* %83, i32 %84, i32 %86)
  ret void
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_adjust_freq_offset(%struct.run_softc*) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
