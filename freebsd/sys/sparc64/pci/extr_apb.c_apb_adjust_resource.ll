; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_apb.c_apb_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_apb.c_apb_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.apb_softc = type { i32, i32 }

@APB_IO_SCALE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@APB_MEM_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, i32, i32)* @apb_adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.apb_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.apb_softc* @device_get_softc(i32 %15)
  store %struct.apb_softc* %16, %struct.apb_softc** %14, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %42 [
    i32 129, label %18
    i32 128, label %30
  ]

18:                                               ; preds = %6
  %19 = load %struct.apb_softc*, %struct.apb_softc** %14, align 8
  %20 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @APB_IO_SCALE, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @apb_checkrange(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %7, align 4
  br label %50

29:                                               ; preds = %18
  br label %42

30:                                               ; preds = %6
  %31 = load %struct.apb_softc*, %struct.apb_softc** %14, align 8
  %32 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @APB_MEM_SCALE, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @apb_checkrange(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %6, %41, %29
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @bus_generic_adjust_resource(i32 %43, i32 %44, i32 %45, %struct.resource* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42, %39, %27
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.apb_softc* @device_get_softc(i32) #1

declare dso_local i32 @apb_checkrange(i32, i32, i32, i32) #1

declare dso_local i32 @bus_generic_adjust_resource(i32, i32, i32, %struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
