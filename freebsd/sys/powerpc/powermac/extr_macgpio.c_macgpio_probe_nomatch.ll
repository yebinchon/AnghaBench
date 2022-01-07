; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_probe_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_probe_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macgpio_devinfo = type { i64, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<%s, %s>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" gpio %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" (no driver attached)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @macgpio_probe_nomatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macgpio_probe_nomatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.macgpio_devinfo*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @bootverbose, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.macgpio_devinfo* @device_get_ivars(i32 %10)
  store %struct.macgpio_devinfo* %11, %struct.macgpio_devinfo** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @ofw_bus_get_type(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* %3, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ofw_bus_get_name(i32 %19)
  %21 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %20)
  %22 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %23 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %28 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %26, %16
  %32 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %33 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %32, i32 0, i32 1
  %34 = load i32, i32* @SYS_RES_IRQ, align 4
  %35 = call i32 @resource_list_print_type(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %2
  ret void
}

declare dso_local %struct.macgpio_devinfo* @device_get_ivars(i32) #1

declare dso_local i8* @ofw_bus_get_type(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @resource_list_print_type(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
