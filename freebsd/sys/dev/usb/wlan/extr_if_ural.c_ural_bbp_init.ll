; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.ural_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@RAL_BBP_VERSION = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for BBP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ural_def_bbp = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ural_softc*)* @ural_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_bbp_init(%struct.ural_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ural_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %11 = load i32, i32* @RAL_BBP_VERSION, align 4
  %12 = call i64 @ural_bbp_read(%struct.ural_softc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %26

15:                                               ; preds = %9
  %16 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %17 = load i32, i32* @hz, align 4
  %18 = sdiv i32 %17, 100
  %19 = call i64 @ural_pause(%struct.ural_softc* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %26

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %21, %14, %6
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 100
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ural_def_bbp, align 8
  %39 = call i32 @nitems(%struct.TYPE_5__* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ural_def_bbp, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ural_def_bbp, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ural_bbp_write(%struct.ural_softc* %42, i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %36

59:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @ural_bbp_read(%struct.ural_softc*, i32) #1

declare dso_local i64 @ural_pause(%struct.ural_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @ural_bbp_write(%struct.ural_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
