; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokey_autorepeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokey_autorepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokey = type { i64, i32, i32, i32 }

@GPIOKEY_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gpiokey_autorepeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokey_autorepeat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gpiokey*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.gpiokey*
  store %struct.gpiokey* %5, %struct.gpiokey** %3, align 8
  %6 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %7 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GPIOKEY_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %14 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %17 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gpiokeys_key_event(i32 %15, i64 %18, i32 1)
  %20 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %21 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %20, i32 0, i32 2
  %22 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %23 = getelementptr inbounds %struct.gpiokey, %struct.gpiokey* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gpiokey*, %struct.gpiokey** %3, align 8
  %26 = call i32 @callout_reset(i32* %21, i32 %24, void (i8*)* @gpiokey_autorepeat, %struct.gpiokey* %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @gpiokeys_key_event(i32, i64, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.gpiokey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
