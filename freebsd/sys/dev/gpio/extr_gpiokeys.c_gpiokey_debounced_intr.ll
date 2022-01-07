; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokey_debounced_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokey_debounced_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokey = type { i64, i32, i32, i64, i32, i32 }

@GPIOKEY_NONE = common dso_local global i64 0, align 8
@gpiokey_autorepeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gpiokey_debounced_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokey_debounced_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gpiokey*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.gpiokey*
  store %struct.gpiokey* %6, %struct.gpiokey** %3, align 8
  %7 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %8 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GPIOKEY_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  %14 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %15 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpio_pin_is_active(i32 %16, i32* %4)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %22 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %25 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpiokeys_key_event(i32 %23, i64 %26, i32 1)
  %28 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %29 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %34 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %33, i32 0, i32 2
  %35 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %36 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @gpiokey_autorepeat, align 4
  %39 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %40 = call i32 @callout_reset(i32* %34, i32 %37, i32 %38, %struct.gpiokey* %39)
  br label %41

41:                                               ; preds = %32, %20
  br label %64

42:                                               ; preds = %13
  %43 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %44 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %49 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %48, i32 0, i32 2
  %50 = call i64 @callout_pending(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %54 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %53, i32 0, i32 2
  %55 = call i32 @callout_stop(i32* %54)
  br label %56

56:                                               ; preds = %52, %47, %42
  %57 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %58 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %61 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gpiokeys_key_event(i32 %59, i64 %62, i32 0)
  br label %64

64:                                               ; preds = %12, %56, %41
  ret void
}

declare dso_local i32 @gpio_pin_is_active(i32, i32*) #1

declare dso_local i32 @gpiokeys_key_event(i32, i64, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.gpiokey*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
