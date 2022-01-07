; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ciu_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @ciu_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @ciu_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource*, align 8
  %19 = alloca %struct.ciu_softc*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.ciu_softc* @device_get_softc(i32 %20)
  store %struct.ciu_softc* %21, %struct.ciu_softc** %19, align 8
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %24 [
    i32 128, label %23
  ]

23:                                               ; preds = %8
  br label %34

24:                                               ; preds = %8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call %struct.resource* @bus_alloc_resource(i32 %26, i32 %27, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store %struct.resource* %33, %struct.resource** %9, align 8
  br label %53

34:                                               ; preds = %23
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %53

39:                                               ; preds = %34
  %40 = load %struct.ciu_softc*, %struct.ciu_softc** %19, align 8
  %41 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.resource* @rman_reserve_resource(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store %struct.resource* %47, %struct.resource** %18, align 8
  %48 = load %struct.resource*, %struct.resource** %18, align 8
  %49 = icmp ne %struct.resource* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %51, %struct.resource** %9, align 8
  br label %53

52:                                               ; preds = %39
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %53

53:                                               ; preds = %52, %50, %38, %24
  %54 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %54
}

declare dso_local %struct.ciu_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
