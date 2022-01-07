; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.iobus_softc = type { %struct.rman }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unknown resource request from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to reserve resource for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to activate resource for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @iobus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @iobus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.iobus_softc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.resource*, align 8
  %21 = alloca %struct.rman*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.iobus_softc* @device_get_softc(i32 %22)
  store %struct.iobus_softc* %23, %struct.iobus_softc** %18, align 8
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %17, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 130, label %32
    i32 129, label %35
  ]

32:                                               ; preds = %8, %8
  %33 = load %struct.iobus_softc*, %struct.iobus_softc** %18, align 8
  %34 = getelementptr inbounds %struct.iobus_softc, %struct.iobus_softc* %33, i32 0, i32 0
  store %struct.rman* %34, %struct.rman** %21, align 8
  br label %49

35:                                               ; preds = %8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call %struct.resource* @bus_alloc_resource(i32 %36, i32 %37, i32* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store %struct.resource* %43, %struct.resource** %9, align 8
  br label %89

44:                                               ; preds = %8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @device_get_nameunit(i32 %46)
  %48 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %89

49:                                               ; preds = %32
  %50 = load %struct.rman*, %struct.rman** %21, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.resource* @rman_reserve_resource(%struct.rman* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store %struct.resource* %56, %struct.resource** %20, align 8
  %57 = load %struct.resource*, %struct.resource** %20, align 8
  %58 = icmp eq %struct.resource* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @device_get_nameunit(i32 %61)
  %63 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %89

64:                                               ; preds = %49
  %65 = load %struct.resource*, %struct.resource** %20, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rman_set_rid(%struct.resource* %65, i32 %67)
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %20, align 8
  %77 = call i64 @bus_activate_resource(i32 %72, i32 %73, i32 %75, %struct.resource* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @device_get_nameunit(i32 %81)
  %83 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.resource*, %struct.resource** %20, align 8
  %85 = call i32 @rman_release_resource(%struct.resource* %84)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %89

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %88, %struct.resource** %9, align 8
  br label %89

89:                                               ; preds = %87, %79, %59, %44, %35
  %90 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %90
}

declare dso_local %struct.iobus_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
