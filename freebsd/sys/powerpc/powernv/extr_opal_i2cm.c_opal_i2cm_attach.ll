; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2cm.c_opal_i2cm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2cm.c_opal_i2cm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_devinfo = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @opal_i2cm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_i2cm_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ofw_bus_devinfo*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @ofw_bus_get_node(i32* %6)
  %8 = call i64 @OF_child(i32 %7)
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.ofw_bus_devinfo* @malloc(i32 4, i32 %13, i32 %16)
  store %struct.ofw_bus_devinfo* %17, %struct.ofw_bus_devinfo** %5, align 8
  %18 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %5, align 8
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = call i32 @free(%struct.ofw_bus_devinfo* %23, i32 %24)
  br label %46

26:                                               ; preds = %12
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @device_add_child(i32* %27, i32* null, i32 -1)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %5, align 8
  %34 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %5, align 8
  %38 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %37)
  %39 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %5, align 8
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = call i32 @free(%struct.ofw_bus_devinfo* %39, i32 %40)
  br label %46

42:                                               ; preds = %26
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %5, align 8
  %45 = call i32 @device_set_ivars(i32* %43, %struct.ofw_bus_devinfo* %44)
  br label %46

46:                                               ; preds = %42, %31, %22
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @OF_peer(i64 %47)
  store i64 %48, i64* %3, align 8
  br label %9

49:                                               ; preds = %9
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @bus_generic_attach(i32* %50)
  ret i32 %51
}

declare dso_local i64 @OF_child(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local %struct.ofw_bus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo*, i64) #1

declare dso_local i32 @free(%struct.ofw_bus_devinfo*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ofw_bus_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
