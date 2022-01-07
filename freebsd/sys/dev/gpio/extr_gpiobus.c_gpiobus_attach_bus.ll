; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_attach_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_attach_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"gpiobus\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gpioc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gpiobus_attach_bus(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32* @device_add_child(i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @device_add_child(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @device_delete_child(i32* %15, i32* %16)
  store i32* null, i32** %2, align 8
  br label %22

18:                                               ; preds = %10
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @bus_generic_attach(i32* %19)
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %18, %14, %9
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
