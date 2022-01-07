; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_probe_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_probe_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unin_chip_devinfo = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<%s, %s>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" (no driver attached)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @unin_chip_probe_nomatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unin_chip_probe_nomatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.unin_chip_devinfo*, align 8
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.unin_chip_devinfo* @device_get_ivars(i32 %11)
  store %struct.unin_chip_devinfo* %12, %struct.unin_chip_devinfo** %5, align 8
  %13 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %14 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %13, i32 0, i32 0
  store %struct.resource_list* %14, %struct.resource_list** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @ofw_bus_get_type(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ofw_bus_get_name(i32 %22)
  %24 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %23)
  %25 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = call i32 @resource_list_print_type(%struct.resource_list* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = call i32 @resource_list_print_type(%struct.resource_list* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %32

32:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.unin_chip_devinfo* @device_get_ivars(i32) #1

declare dso_local i8* @ofw_bus_get_type(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local i32 @resource_list_print_type(%struct.resource_list*, i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
