; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_devinfo = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@M_SMU = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @smu_attach_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_attach_i2c(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ofw_bus_devinfo*, align 8
  %8 = alloca [32 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @OF_child(i64 %9)
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %63, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %17 = call i64 @OF_getprop(i64 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16, i32 32)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %63

20:                                               ; preds = %14
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %63

29:                                               ; preds = %24, %20
  %30 = load i32, i32* @M_SMU, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.ofw_bus_devinfo* @malloc(i32 4, i32 %30, i32 %33)
  store %struct.ofw_bus_devinfo* %34, %struct.ofw_bus_devinfo** %7, align 8
  %35 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %41 = load i32, i32* @M_SMU, align 4
  %42 = call i32 @free(%struct.ofw_bus_devinfo* %40, i32 %41)
  br label %63

43:                                               ; preds = %29
  %44 = load i32*, i32** %3, align 8
  %45 = call i32* @device_add_child(i32* %44, i32* null, i32 -1)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %51 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %55 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo* %54)
  %56 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %57 = load i32, i32* @M_SMU, align 4
  %58 = call i32 @free(%struct.ofw_bus_devinfo* %56, i32 %57)
  br label %63

59:                                               ; preds = %43
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %7, align 8
  %62 = call i32 @device_set_ivars(i32* %60, %struct.ofw_bus_devinfo* %61)
  br label %63

63:                                               ; preds = %59, %48, %39, %28, %19
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @OF_peer(i64 %64)
  store i64 %65, i64* %5, align 8
  br label %11

66:                                               ; preds = %11
  ret void
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.ofw_bus_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo*, i64) #1

declare dso_local i32 @free(%struct.ofw_bus_devinfo*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.ofw_bus_devinfo*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ofw_bus_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
