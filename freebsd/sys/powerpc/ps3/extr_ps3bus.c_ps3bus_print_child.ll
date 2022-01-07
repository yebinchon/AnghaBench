; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3bus_devinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ps3bus_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3bus_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps3bus_devinfo*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ps3bus_devinfo* @device_get_ivars(i32 %7)
  store %struct.ps3bus_devinfo* %8, %struct.ps3bus_devinfo** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @bus_print_child_header(i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %5, align 8
  %17 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %16, i32 0, i32 0
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = call i64 @resource_list_print_type(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %5, align 8
  %25 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %24, i32 0, i32 0
  %26 = load i32, i32* @SYS_RES_IRQ, align 4
  %27 = call i64 @resource_list_print_type(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @bus_print_child_footer(i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.ps3bus_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @resource_list_print_type(i32*, i8*, i32, i8*) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
