; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_usb.c_bhnd_usb_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_usb.c_bhnd_usb_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhnd_usb_softc = type { i32 }
%struct.resource_list_entry = type { i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, %struct.resource*)* @bhnd_usb_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_usb_release_resource(i64 %0, i64 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.bhnd_usb_softc*, align 8
  %13 = alloca %struct.resource_list_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.bhnd_usb_softc* @device_get_softc(i64 %16)
  store %struct.bhnd_usb_softc* %17, %struct.bhnd_usb_softc** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @device_get_parent(i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.resource*, %struct.resource** %11, align 8
  %32 = call i32 @bus_generic_rl_release_resource(i64 %27, i64 %28, i32 %29, i32 %30, %struct.resource* %31)
  store i32 %32, i32* %6, align 4
  br label %74

33:                                               ; preds = %5
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i32 @rman_get_flags(%struct.resource* %34)
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = call i32 @BUS_DEACTIVATE_RESOURCE(i64 %40, i64 %41, i32 %42, i32 %43, %struct.resource* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = call i32 @rman_release_resource(%struct.resource* %52)
  store i32 %53, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %6, align 4
  br label %74

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @BUS_GET_RESOURCE_LIST(i64 %61, i64 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.resource_list_entry* @resource_list_find(i32 %63, i32 %64, i32 %65)
  store %struct.resource_list_entry* %66, %struct.resource_list_entry** %13, align 8
  %67 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %68 = icmp ne %struct.resource_list_entry* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %71 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72, %57
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %55, %48, %26
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.bhnd_usb_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @bus_generic_rl_release_resource(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
