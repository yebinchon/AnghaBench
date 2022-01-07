; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.macgpio_devinfo = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @macgpio_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @macgpio_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.macgpio_devinfo*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.macgpio_devinfo* @device_get_ivars(i32 %19)
  store %struct.macgpio_devinfo* %20, %struct.macgpio_devinfo** %18, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @SYS_RES_IRQ, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %37

25:                                               ; preds = %8
  %26 = load %struct.macgpio_devinfo*, %struct.macgpio_devinfo** %18, align 8
  %27 = getelementptr inbounds %struct.macgpio_devinfo, %struct.macgpio_devinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call %struct.resource* @resource_list_alloc(i32* %27, i32 %28, i32 %29, i32 %30, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store %struct.resource* %36, %struct.resource** %9, align 8
  br label %37

37:                                               ; preds = %25, %24
  %38 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %38
}

declare dso_local %struct.macgpio_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource* @resource_list_alloc(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
