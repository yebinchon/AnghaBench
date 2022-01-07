; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_obio.c_obio_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_obio.c_obio_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.rman = type { i32 }
%struct.obio_softc = type { i32, i32, %struct.rman, %struct.rman }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @obio_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @obio_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %19 = alloca %struct.rman*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.obio_softc*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.obio_softc* @device_get_softc(i32 %23)
  store %struct.obio_softc* %24, %struct.obio_softc** %22, align 8
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %40 [
    i32 129, label %26
    i32 128, label %29
    i32 130, label %30
  ]

26:                                               ; preds = %8
  %27 = load %struct.obio_softc*, %struct.obio_softc** %22, align 8
  %28 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %27, i32 0, i32 3
  store %struct.rman* %28, %struct.rman** %19, align 8
  br label %41

29:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %69

30:                                               ; preds = %8
  %31 = load %struct.obio_softc*, %struct.obio_softc** %22, align 8
  %32 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %31, i32 0, i32 2
  store %struct.rman* %32, %struct.rman** %19, align 8
  %33 = load %struct.obio_softc*, %struct.obio_softc** %22, align 8
  %34 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %20, align 4
  %36 = load %struct.obio_softc*, %struct.obio_softc** %22, align 8
  %37 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  store i32 %39, i32* %14, align 4
  br label %41

40:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %69

41:                                               ; preds = %30, %26
  %42 = load %struct.rman*, %struct.rman** %19, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.resource* @rman_reserve_resource(%struct.rman* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct.resource* %48, %struct.resource** %18, align 8
  %49 = load %struct.resource*, %struct.resource** %18, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %69

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %56, %struct.resource** %9, align 8
  br label %69

57:                                               ; preds = %52
  %58 = load %struct.resource*, %struct.resource** %18, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rman_set_rid(%struct.resource* %58, i32 %60)
  %62 = load %struct.resource*, %struct.resource** %18, align 8
  %63 = load i32, i32* %20, align 4
  %64 = call i32 @rman_set_bustag(%struct.resource* %62, i32 %63)
  %65 = load %struct.resource*, %struct.resource** %18, align 8
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @rman_set_bushandle(%struct.resource* %65, i32 %66)
  %68 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %68, %struct.resource** %9, align 8
  br label %69

69:                                               ; preds = %57, %55, %51, %40, %29
  %70 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %70
}

declare dso_local %struct.obio_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
