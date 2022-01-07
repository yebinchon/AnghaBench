; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uled_softc = type { i32, i32, i32 }

@ULED_FLAG_BLINK1 = common dso_local global i32 0, align 4
@blink1 = common dso_local global i32* null, align 8
@dl100b = common dso_local global i32* null, align 8
@ULED_ENABLED = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uled_softc*)* @uled_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uled_enable(%struct.uled_softc* %0) #0 {
  %2 = alloca %struct.uled_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.uled_softc* %0, %struct.uled_softc** %2, align 8
  %5 = load %struct.uled_softc*, %struct.uled_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ULED_FLAG_BLINK1, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** @blink1, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i32*, i32** @dl100b, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32* [ %12, %11 ], [ %14, %13 ]
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* @ULED_ENABLED, align 4
  %18 = load %struct.uled_softc*, %struct.uled_softc** %2, align 8
  %19 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.uled_softc*, %struct.uled_softc** %2, align 8
  %23 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %22, i32 0, i32 1
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.uled_softc*, %struct.uled_softc** %2, align 8
  %26 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %27 = load i32, i32* @UR_SET_REPORT, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @uled_ctrl_msg(%struct.uled_softc* %25, i32 %26, i32 %27, i32 512, i32 0, i32* %28, i32 8)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.uled_softc*, %struct.uled_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %30, i32 0, i32 1
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @uled_ctrl_msg(%struct.uled_softc*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
