; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_detach_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_detach_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i32 }
%struct.gpiokey = type { i64, i32, i32, i64, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpiokeys_softc*, %struct.gpiokey*)* @gpiokeys_detach_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokeys_detach_key(%struct.gpiokeys_softc* %0, %struct.gpiokey* %1) #0 {
  %3 = alloca %struct.gpiokeys_softc*, align 8
  %4 = alloca %struct.gpiokey*, align 8
  store %struct.gpiokeys_softc* %0, %struct.gpiokeys_softc** %3, align 8
  store %struct.gpiokey* %1, %struct.gpiokey** %4, align 8
  %5 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %6 = call i32 @GPIOKEY_LOCK(%struct.gpiokey* %5)
  %7 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %8 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %16 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %19 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @bus_teardown_intr(i32 %14, i64 %17, i64 %20)
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %24 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %29 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %33 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %36 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %27, %22
  %40 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %41 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %40, i32 0, i32 2
  %42 = call i64 @callout_pending(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %46 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %45, i32 0, i32 2
  %47 = call i32 @callout_drain(i32* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %50 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %49, i32 0, i32 1
  %51 = call i64 @callout_pending(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %55 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %54, i32 0, i32 1
  %56 = call i32 @callout_drain(i32* %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %59 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %64 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @gpio_pin_release(i64 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %69 = call i32 @GPIOKEY_UNLOCK(%struct.gpiokey* %68)
  %70 = load %struct.gpiokey*, %struct.gpiokey** %4, align 8
  %71 = call i32 @GPIOKEY_LOCK_DESTROY(%struct.gpiokey* %70)
  ret void
}

declare dso_local i32 @GPIOKEY_LOCK(%struct.gpiokey*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @gpio_pin_release(i64) #1

declare dso_local i32 @GPIOKEY_UNLOCK(%struct.gpiokey*) #1

declare dso_local i32 @GPIOKEY_LOCK_DESTROY(%struct.gpiokey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
