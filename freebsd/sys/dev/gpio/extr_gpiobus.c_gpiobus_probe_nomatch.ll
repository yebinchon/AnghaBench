; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_probe_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_probe_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"<unknown device> at pins %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"<unknown device> at pin %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @gpiobus_probe_nomatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiobus_probe_nomatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.gpiobus_ivar*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %7)
  store %struct.gpiobus_ivar* %8, %struct.gpiobus_ivar** %6, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 128)
  %11 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %13 = call i32 @gpiobus_print_pins(%struct.gpiobus_ivar* %11, i8* %12, i32 128)
  %14 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %15 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %25 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %28 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %27, i32 0, i32 1
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = call i32 @resource_list_print_type(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gpiobus_print_pins(%struct.gpiobus_ivar*, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @resource_list_print_type(i32*, i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
