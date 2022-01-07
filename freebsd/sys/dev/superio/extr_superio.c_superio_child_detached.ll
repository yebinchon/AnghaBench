; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_child_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_child_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superio_devinfo = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Device leaked IRQ resources\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Device leaked memory resources\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Device leaked I/O resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @superio_child_detached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @superio_child_detached(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.superio_devinfo*, align 8
  %6 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.superio_devinfo* @device_get_ivars(i32 %7)
  store %struct.superio_devinfo* %8, %struct.superio_devinfo** %5, align 8
  %9 = load %struct.superio_devinfo*, %struct.superio_devinfo** %5, align 8
  %10 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %9, i32 0, i32 0
  store %struct.resource_list* %10, %struct.resource_list** %6, align 8
  %11 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SYS_RES_IRQ, align 4
  %15 = call i64 @resource_list_release_active(%struct.resource_list* %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.superio_devinfo*, %struct.superio_devinfo** %5, align 8
  %19 = call i32 @superio_printf(%struct.superio_devinfo* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = call i64 @resource_list_release_active(%struct.resource_list* %21, i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.superio_devinfo*, %struct.superio_devinfo** %5, align 8
  %29 = call i32 @superio_printf(%struct.superio_devinfo* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SYS_RES_IOPORT, align 4
  %35 = call i64 @resource_list_release_active(%struct.resource_list* %31, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.superio_devinfo*, %struct.superio_devinfo** %5, align 8
  %39 = call i32 @superio_printf(%struct.superio_devinfo* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  ret void
}

declare dso_local %struct.superio_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @resource_list_release_active(%struct.resource_list*, i32, i32, i32) #1

declare dso_local i32 @superio_printf(%struct.superio_devinfo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
