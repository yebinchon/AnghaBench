; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macgpio_devinfo = type { i64, i32 }

@GPIO_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" gpio %d\00", align 1
@GPIO_EXTINT_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" extint-gpio %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" addr 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @macgpio_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macgpio_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.macgpio_devinfo*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.macgpio_devinfo* @device_get_ivars(i32 %7)
  store %struct.macgpio_devinfo* %8, %struct.macgpio_devinfo** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @bus_print_child_header(i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %17 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GPIO_BASE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %23 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GPIO_BASE, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %30 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GPIO_EXTINT_BASE, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %36 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GPIO_EXTINT_BASE, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %52

41:                                               ; preds = %28
  %42 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %43 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %48 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %5, align 8
  %55 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %54, i32 0, i32 1
  %56 = load i32, i32* @SYS_RES_IRQ, align 4
  %57 = call i32 @resource_list_print_type(i32* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @bus_print_child_footer(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.macgpio_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @resource_list_print_type(i32*, i8*, i32, i8*) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
