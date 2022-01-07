; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.iobus_softc = type { i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bs_le_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @iobus_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iobus_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.iobus_softc*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.iobus_softc* @device_get_softc(i32 %14)
  store %struct.iobus_softc* %15, %struct.iobus_softc** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SYS_RES_IRQ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.resource*, %struct.resource** %11, align 8
  %24 = call i32 @bus_activate_resource(i32 %20, i32 %21, i32 %22, %struct.resource* %23)
  store i32 %24, i32* %6, align 4
  br label %61

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29, %25
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i64 @rman_get_start(%struct.resource* %34)
  %36 = load %struct.iobus_softc*, %struct.iobus_softc** %12, align 8
  %37 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = call i64 @rman_get_size(%struct.resource* %40)
  %42 = trunc i64 %41 to i32
  %43 = call i8* @pmap_mapdev(i64 %39, i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %6, align 4
  br label %61

48:                                               ; preds = %33
  %49 = load %struct.resource*, %struct.resource** %11, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @rman_set_virtual(%struct.resource* %49, i8* %50)
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = call i32 @rman_set_bustag(%struct.resource* %52, i32* @bs_le_tag)
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = call i32 @rman_set_bushandle(%struct.resource* %54, i32 %56)
  br label %58

58:                                               ; preds = %48, %29
  %59 = load %struct.resource*, %struct.resource** %11, align 8
  %60 = call i32 @rman_activate_resource(%struct.resource* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %46, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.iobus_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i8* @pmap_mapdev(i64, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
