; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_cint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_cint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.i2s_softc = type { i32 }

@gpio_ctrls = common dso_local global %struct.TYPE_2__** null, align 8
@HEADPHONE_DETECT = common dso_local global i64 0, align 8
@LINEOUT_DETECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2s_softc*)* @i2s_cint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_cint(%struct.i2s_softc* %0) #0 {
  %2 = alloca %struct.i2s_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.i2s_softc* %0, %struct.i2s_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gpio_ctrls, align 8
  %5 = load i64, i64* @HEADPHONE_DETECT, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %4, i64 %5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gpio_ctrls, align 8
  %11 = load i64, i64* @HEADPHONE_DETECT, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 2
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %9, %1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gpio_ctrls, align 8
  %22 = load i64, i64* @LINEOUT_DETECT, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gpio_ctrls, align 8
  %28 = load i64, i64* @LINEOUT_DETECT, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %26, %20
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.i2s_softc*, %struct.i2s_softc** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @i2s_set_outputs(%struct.i2s_softc* %42, i32 %43)
  ret void
}

declare dso_local i32 @i2s_set_outputs(%struct.i2s_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
