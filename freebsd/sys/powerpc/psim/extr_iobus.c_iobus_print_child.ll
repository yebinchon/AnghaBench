; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iobus_devinfo = type { i32*, %struct.resource_list }
%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c" offset 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iobus_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iobus_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iobus_devinfo*, align 8
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.iobus_devinfo* @device_get_ivars(i32 %8)
  store %struct.iobus_devinfo* %9, %struct.iobus_devinfo** %5, align 8
  %10 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %11 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %10, i32 0, i32 1
  store %struct.resource_list* %11, %struct.resource_list** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @bus_print_child_header(i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %5, align 8
  %20 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %30 = load i32, i32* @SYS_RES_IRQ, align 4
  %31 = call i64 @resource_list_print_type(%struct.resource_list* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @bus_print_child_footer(i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.iobus_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, i32) #1

declare dso_local i64 @resource_list_print_type(%struct.resource_list*, i8*, i32, i8*) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
