; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.bhnd_resource** }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i8*, i64)* @siba_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_write_config(i64 %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.siba_devinfo*, align 8
  %13 = alloca %struct.bhnd_resource*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @device_get_parent(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %6, align 4
  br label %73

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.siba_devinfo* @device_get_ivars(i64 %22)
  store %struct.siba_devinfo* %23, %struct.siba_devinfo** %12, align 8
  %24 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %25 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %24, i32 0, i32 0
  %26 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %25, align 8
  %27 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %26, i64 0
  %28 = load %struct.bhnd_resource*, %struct.bhnd_resource** %27, align 8
  store %struct.bhnd_resource* %28, %struct.bhnd_resource** %13, align 8
  %29 = icmp eq %struct.bhnd_resource* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @ENODEV, align 4
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %21
  %33 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %34 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rman_get_size(i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %32
  %47 = load i32, i32* @EFAULT, align 4
  store i32 %47, i32* %6, align 4
  br label %73

48:                                               ; preds = %40
  %49 = load i64, i64* %11, align 8
  switch i64 %49, label %71 [
    i64 1, label %50
    i64 2, label %57
    i64 4, label %64
  ]

50:                                               ; preds = %48
  %51 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bhnd_bus_write_1(%struct.bhnd_resource* %51, i64 %52, i32 %55)
  store i32 0, i32* %6, align 4
  br label %73

57:                                               ; preds = %48
  %58 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bhnd_bus_write_2(%struct.bhnd_resource* %58, i64 %59, i32 %62)
  store i32 0, i32* %6, align 4
  br label %73

64:                                               ; preds = %48
  %65 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bhnd_bus_write_4(%struct.bhnd_resource* %65, i64 %66, i32 %69)
  store i32 0, i32* %6, align 4
  br label %73

71:                                               ; preds = %48
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %64, %57, %50, %46, %30, %19
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i32 @bhnd_bus_write_1(%struct.bhnd_resource*, i64, i32) #1

declare dso_local i32 @bhnd_bus_write_2(%struct.bhnd_resource*, i64, i32) #1

declare dso_local i32 @bhnd_bus_write_4(%struct.bhnd_resource*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
