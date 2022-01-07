; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @octopci_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %43 [
    i32 129, label %15
    i32 128, label %27
    i32 130, label %27
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.resource*, %struct.resource** %11, align 8
  %21 = call i32 @bus_generic_activate_resource(i32 %16, i32 %17, i32 %18, i32 %19, %struct.resource* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %53

26:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %53

27:                                               ; preds = %5, %5
  %28 = load %struct.resource*, %struct.resource** %11, align 8
  %29 = call i32 @rman_get_bustag(%struct.resource* %28)
  %30 = load %struct.resource*, %struct.resource** %11, align 8
  %31 = call i32 @rman_get_bushandle(%struct.resource* %30)
  %32 = load %struct.resource*, %struct.resource** %11, align 8
  %33 = call i32 @rman_get_size(%struct.resource* %32)
  %34 = call i32 @bus_space_map(i32 %29, i32 %31, i32 %33, i32 0, i32* %12)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %53

39:                                               ; preds = %27
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @rman_set_bushandle(%struct.resource* %40, i32 %41)
  br label %45

43:                                               ; preds = %5
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = call i32 @rman_activate_resource(%struct.resource* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %50, %43, %37, %26, %24
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
