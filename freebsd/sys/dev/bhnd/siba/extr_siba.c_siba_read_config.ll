; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i8*, i64)* @siba_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_read_config(i64 %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.siba_devinfo*, align 8
  %13 = alloca i64, align 8
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
  br label %85

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = call %struct.siba_devinfo* @device_get_ivars(i64 %21)
  store %struct.siba_devinfo* %22, %struct.siba_devinfo** %12, align 8
  %23 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %24 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  store i32 %30, i32* %6, align 4
  br label %85

31:                                               ; preds = %20
  %32 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %33 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rman_get_size(i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %31
  %50 = load i32, i32* @EFAULT, align 4
  store i32 %50, i32* %6, align 4
  br label %85

51:                                               ; preds = %43
  %52 = load i64, i64* %11, align 8
  switch i64 %52, label %83 [
    i64 1, label %53
    i64 2, label %63
    i64 4, label %73
  ]

53:                                               ; preds = %51
  %54 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %55 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @bhnd_bus_read_1(%struct.TYPE_4__* %58, i64 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to i32*
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %6, align 4
  br label %85

63:                                               ; preds = %51
  %64 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %65 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @bhnd_bus_read_2(%struct.TYPE_4__* %68, i64 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast i8* %71 to i32*
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %6, align 4
  br label %85

73:                                               ; preds = %51
  %74 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %75 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @bhnd_bus_read_4(%struct.TYPE_4__* %78, i64 %79)
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast i8* %81 to i32*
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %6, align 4
  br label %85

83:                                               ; preds = %51
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %73, %63, %53, %49, %29, %18
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i32 @bhnd_bus_read_1(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @bhnd_bus_read_2(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
