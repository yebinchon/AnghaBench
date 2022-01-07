; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_cpu_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_cpu_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_device = type { %struct.pcpu*, i32 }
%struct.pcpu = type { i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @cpu_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cpu_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpu_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pcpu*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.cpu_device* @malloc(i32 16, i32 %13, i32 %16)
  store %struct.cpu_device* %17, %struct.cpu_device** %10, align 8
  %18 = icmp eq %struct.cpu_device* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.cpu_device*, %struct.cpu_device** %10, align 8
  %22 = getelementptr inbounds %struct.cpu_device, %struct.cpu_device* %21, i32 0, i32 1
  %23 = call i32 @resource_list_init(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @device_get_unit(i32* %24)
  %26 = call %struct.pcpu* @pcpu_find(i32 %25)
  store %struct.pcpu* %26, %struct.pcpu** %12, align 8
  %27 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %28 = load %struct.cpu_device*, %struct.cpu_device** %10, align 8
  %29 = getelementptr inbounds %struct.cpu_device, %struct.cpu_device* %28, i32 0, i32 0
  store %struct.pcpu* %27, %struct.pcpu** %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @device_add_child_ordered(i32* %30, i32 %31, i8* %32, i32 %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.pcpu*, %struct.pcpu** %12, align 8
  %40 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.cpu_device*, %struct.cpu_device** %10, align 8
  %43 = call i32 @device_set_ivars(i32* %41, %struct.cpu_device* %42)
  br label %48

44:                                               ; preds = %20
  %45 = load %struct.cpu_device*, %struct.cpu_device** %10, align 8
  %46 = load i32, i32* @M_DEVBUF, align 4
  %47 = call i32 @free(%struct.cpu_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %5, align 8
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i32*, i32** %5, align 8
  ret i32* %51
}

declare dso_local %struct.cpu_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local %struct.pcpu* @pcpu_find(i32) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.cpu_device*) #1

declare dso_local i32 @free(%struct.cpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
