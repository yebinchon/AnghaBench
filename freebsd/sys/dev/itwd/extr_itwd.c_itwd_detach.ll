; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_itwd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_itwd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itwd_softc = type { i64, i32, i64, i32* }

@watchdog_list = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @itwd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itwd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.itwd_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.itwd_softc* @device_get_softc(i32 %5)
  store %struct.itwd_softc* %6, %struct.itwd_softc** %3, align 8
  %7 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %8 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @watchdog_list, align 4
  %13 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @EVENTHANDLER_DEREGISTER(i32 %12, i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @wd_func(i32 %18, i32 0, i32* %4)
  %20 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %21 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %27 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @bus_teardown_intr(i32 %25, i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %24, %17
  %34 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SYS_RES_IRQ, align 4
  %41 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.itwd_softc*, %struct.itwd_softc** %3, align 8
  %45 = getelementptr inbounds %struct.itwd_softc, %struct.itwd_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bus_release_resource(i32 %39, i32 %40, i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %38, %33
  ret i32 0
}

declare dso_local %struct.itwd_softc* @device_get_softc(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @wd_func(i32, i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
