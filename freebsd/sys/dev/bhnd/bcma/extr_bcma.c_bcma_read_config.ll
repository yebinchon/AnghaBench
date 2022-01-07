; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { %struct.bhnd_resource* }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i8*, i64)* @bcma_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_read_config(i64 %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bcma_devinfo*, align 8
  %13 = alloca %struct.bhnd_resource*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @device_get_parent(i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %71

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = call %struct.bcma_devinfo* @device_get_ivars(i64 %21)
  store %struct.bcma_devinfo* %22, %struct.bcma_devinfo** %12, align 8
  %23 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %12, align 8
  %24 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %23, i32 0, i32 0
  %25 = load %struct.bhnd_resource*, %struct.bhnd_resource** %24, align 8
  store %struct.bhnd_resource* %25, %struct.bhnd_resource** %13, align 8
  %26 = icmp eq %struct.bhnd_resource* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENODEV, align 4
  store i32 %28, i32* %6, align 4
  br label %71

29:                                               ; preds = %20
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %32 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rman_get_size(i32 %33)
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @EFAULT, align 4
  store i32 %37, i32* %6, align 4
  br label %71

38:                                               ; preds = %29
  %39 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %40 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @rman_get_size(i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @EFAULT, align 4
  store i32 %48, i32* %6, align 4
  br label %71

49:                                               ; preds = %38
  %50 = load i64, i64* %11, align 8
  switch i64 %50, label %69 [
    i64 1, label %51
    i64 2, label %57
    i64 4, label %63
  ]

51:                                               ; preds = %49
  %52 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @bhnd_bus_read_1(%struct.bhnd_resource* %52, i64 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to i32*
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %71

57:                                               ; preds = %49
  %58 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @bhnd_bus_read_2(%struct.bhnd_resource* %58, i64 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to i32*
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %6, align 4
  br label %71

63:                                               ; preds = %49
  %64 = load %struct.bhnd_resource*, %struct.bhnd_resource** %13, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %64, i64 %65)
  %67 = load i8*, i8** %10, align 8
  %68 = bitcast i8* %67 to i32*
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %71

69:                                               ; preds = %49
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %63, %57, %51, %47, %36, %27, %18
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i32 @bhnd_bus_read_1(%struct.bhnd_resource*, i64) #1

declare dso_local i32 @bhnd_bus_read_2(%struct.bhnd_resource*, i64) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
