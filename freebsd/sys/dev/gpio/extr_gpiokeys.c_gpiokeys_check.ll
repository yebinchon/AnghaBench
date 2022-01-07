; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gpiokeys_softc* }
%struct.gpiokeys_softc = type { i32, i64 }

@GPIOKEYS_GLOBAL_FLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @gpiokeys_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiokeys_check(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.gpiokeys_softc*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %6, align 8
  store %struct.gpiokeys_softc* %7, %struct.gpiokeys_softc** %4, align 8
  %8 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %9 = call i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @KBD_IS_ACTIVE(%struct.TYPE_4__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %16 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GPIOKEYS_GLOBAL_FLAG_POLLING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %23 = call i32 @gpiokeys_do_poll(%struct.gpiokeys_softc* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %4, align 8
  %26 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc*) #1

declare dso_local i32 @KBD_IS_ACTIVE(%struct.TYPE_4__*) #1

declare dso_local i32 @gpiokeys_do_poll(%struct.gpiokeys_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
