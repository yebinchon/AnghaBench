; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lebuffer_sbus.c_lebuffer_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lebuffer_sbus.c_lebuffer_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lebuffer_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"<%s>: only one child per buffer supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lebuffer_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lebuffer_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.lebuffer_devinfo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @ofw_bus_get_node(i32* %7)
  %9 = call i64 @OF_child(i32 %8)
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %50, %1
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.lebuffer_devinfo* @lebuffer_setup_dinfo(i32* %14, i64 %15)
  store %struct.lebuffer_devinfo* %16, %struct.lebuffer_devinfo** %3, align 8
  %17 = icmp eq %struct.lebuffer_devinfo* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %50

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.lebuffer_devinfo*, %struct.lebuffer_devinfo** %3, align 8
  %25 = getelementptr inbounds %struct.lebuffer_devinfo, %struct.lebuffer_devinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.lebuffer_devinfo*, %struct.lebuffer_devinfo** %3, align 8
  %30 = call i32 @lebuffer_destroy_dinfo(%struct.lebuffer_devinfo* %29)
  br label %50

31:                                               ; preds = %19
  %32 = load i32*, i32** %2, align 8
  %33 = call i32* @device_add_child(i32* %32, i32* null, i32 -1)
  store i32* %33, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.lebuffer_devinfo*, %struct.lebuffer_devinfo** %3, align 8
  %38 = getelementptr inbounds %struct.lebuffer_devinfo, %struct.lebuffer_devinfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.lebuffer_devinfo*, %struct.lebuffer_devinfo** %3, align 8
  %43 = call i32 @lebuffer_destroy_dinfo(%struct.lebuffer_devinfo* %42)
  br label %50

44:                                               ; preds = %31
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.lebuffer_devinfo*, %struct.lebuffer_devinfo** %3, align 8
  %47 = call i32 @device_set_ivars(i32* %45, %struct.lebuffer_devinfo* %46)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %35, %22, %18
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @OF_peer(i64 %51)
  store i64 %52, i64* %5, align 8
  br label %10

53:                                               ; preds = %10
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @bus_generic_attach(i32* %54)
  ret i32 %55
}

declare dso_local i64 @OF_child(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local %struct.lebuffer_devinfo* @lebuffer_setup_dinfo(i32*, i64) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @lebuffer_destroy_dinfo(%struct.lebuffer_devinfo*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.lebuffer_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
