; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_resource = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_bus_generic_activate_resource(i32* %0, i32* %1, i32 %2, i32 %3, %struct.bhnd_resource* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bhnd_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.bhnd_resource* %4, %struct.bhnd_resource** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @device_get_parent(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @device_get_parent(i32* %18)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @device_get_parent(i32* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bhnd_resource*, %struct.bhnd_resource** %10, align 8
  %28 = call i32 @BHND_BUS_ACTIVATE_RESOURCE(i32* %23, i32* %24, i32 %25, i32 %26, %struct.bhnd_resource* %27)
  store i32 %28, i32* %11, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @ENODEV, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.bhnd_resource*, %struct.bhnd_resource** %10, align 8
  %42 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bus_activate_resource(i32* %38, i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load %struct.bhnd_resource*, %struct.bhnd_resource** %10, align 8
  %49 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %37
  br label %51

51:                                               ; preds = %50, %34, %31
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @BHND_BUS_ACTIVATE_RESOURCE(i32*, i32*, i32, i32, %struct.bhnd_resource*) #1

declare dso_local i32 @bus_activate_resource(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
