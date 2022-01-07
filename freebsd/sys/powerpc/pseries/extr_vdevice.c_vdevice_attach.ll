; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_vdevice.c_vdevice_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_vdevice.c_vdevice_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdevice_devinfo = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@root_pic = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vdevice_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdevice_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vdevice_devinfo*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @ofw_bus_get_node(i32* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @root_pic, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @OF_xref_from_node(i64 %10)
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @powerpc_register_pic(i32 %9, i32 %11, i32 16777216, i32 1, i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @OF_child(i64 %14)
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.vdevice_devinfo* @malloc(i32 8, i32 %20, i32 %23)
  store %struct.vdevice_devinfo* %24, %struct.vdevice_devinfo** %6, align 8
  %25 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %26 = getelementptr inbounds %struct.vdevice_devinfo, %struct.vdevice_devinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = call i32 @free(%struct.vdevice_devinfo* %31, i32 %32)
  br label %64

34:                                               ; preds = %19
  %35 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %36 = getelementptr inbounds %struct.vdevice_devinfo, %struct.vdevice_devinfo* %35, i32 0, i32 1
  %37 = call i32 @resource_list_init(i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %41 = getelementptr inbounds %struct.vdevice_devinfo, %struct.vdevice_devinfo* %40, i32 0, i32 1
  %42 = call i32 @ofw_bus_intr_to_rl(i32* %38, i64 %39, i32* %41, i32* null)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32* @device_add_child(i32* %43, i32* null, i32 -1)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %34
  %48 = load i32*, i32** %2, align 8
  %49 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %50 = getelementptr inbounds %struct.vdevice_devinfo, %struct.vdevice_devinfo* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %55 = getelementptr inbounds %struct.vdevice_devinfo, %struct.vdevice_devinfo* %54, i32 0, i32 0
  %56 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__* %55)
  %57 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(%struct.vdevice_devinfo* %57, i32 %58)
  br label %64

60:                                               ; preds = %34
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.vdevice_devinfo*, %struct.vdevice_devinfo** %6, align 8
  %63 = call i32 @device_set_ivars(i32* %61, %struct.vdevice_devinfo* %62)
  br label %64

64:                                               ; preds = %60, %47, %30
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @OF_peer(i64 %65)
  store i64 %66, i64* %4, align 8
  br label %16

67:                                               ; preds = %16
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @bus_generic_attach(i32* %68)
  ret i32 %69
}

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @powerpc_register_pic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i64) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.vdevice_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @free(%struct.vdevice_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32*, i64, i32*, i32*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_3__*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.vdevice_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
