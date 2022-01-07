; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_set_typematic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_set_typematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@gpiokeys_set_typematic.delays = internal constant [4 x i32] [i32 250, i32 500, i32 750, i32 1000], align 16
@gpiokeys_set_typematic.rates = internal constant [32 x i32] [i32 34, i32 38, i32 42, i32 46, i32 50, i32 55, i32 59, i32 63, i32 68, i32 76, i32 84, i32 92, i32 100, i32 110, i32 118, i32 126, i32 136, i32 152, i32 168, i32 184, i32 200, i32 220, i32 236, i32 252, i32 272, i32 304, i32 336, i32 368, i32 400, i32 440, i32 472, i32 504], align 16
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @gpiokeys_set_typematic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiokeys_set_typematic(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, -128
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 5
  %14 = and i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* @gpiokeys_set_typematic.delays, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 31
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* @gpiokeys_set_typematic.rates, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %11, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
