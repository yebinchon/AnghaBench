; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt5390_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.rt2860_softc = type { i32, i32 }

@RT5390_MLD = common dso_local global i32 0, align 4
@RT5390_MAC_IF_CTRL = common dso_local global i32 0, align 4
@rt5390_def_bbp = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt5390_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5390_bbp_init(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %11 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %10, i32 105)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RT5390_MLD, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %12, i32 105, i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %19 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %18, i32 4)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @RT5390_MAC_IF_CTRL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %20, i32 4, i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %45, %17
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5390_def_bbp, align 8
  %28 = call i32 @nitems(%struct.TYPE_3__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5390_def_bbp, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt5390_def_bbp, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %31, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %50 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 21394
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %55 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %54, i32 84, i32 154)
  %56 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %57 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %56, i32 95, i32 154)
  %58 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %59 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %58, i32 98, i32 18)
  %60 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %61 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %60, i32 106, i32 5)
  %62 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %63 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %62, i32 134, i32 208)
  %64 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %65 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %64, i32 135, i32 246)
  br label %66

66:                                               ; preds = %53, %48
  %67 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %68 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %67, i32 152)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, 128
  %72 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %69, i32 152, i32 %71)
  %73 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %74 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 21392
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %79 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %78, i32 154, i32 0)
  br label %80

80:                                               ; preds = %77, %66
  ret void
}

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
