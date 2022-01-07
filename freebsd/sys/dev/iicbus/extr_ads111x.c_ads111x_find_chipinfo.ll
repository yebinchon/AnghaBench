; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_find_chipinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_find_chipinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads111x_chipinfo = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@ads111x_chip_infos = common dso_local global %struct.ads111x_chipinfo* null, align 8
@compat_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ads111x_chipinfo* (i32)* @ads111x_find_chipinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ads111x_chipinfo* @ads111x_find_chipinfo(i32 %0) #0 {
  %2 = alloca %struct.ads111x_chipinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ads111x_chipinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_name(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_unit(i32 %9)
  %11 = call i32 @resource_string_value(i32 %8, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ads111x_chipinfo*, %struct.ads111x_chipinfo** @ads111x_chip_infos, align 8
  %18 = call i32 @nitems(%struct.ads111x_chipinfo* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.ads111x_chipinfo*, %struct.ads111x_chipinfo** @ads111x_chip_infos, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ads111x_chipinfo, %struct.ads111x_chipinfo* %21, i64 %23
  store %struct.ads111x_chipinfo* %24, %struct.ads111x_chipinfo** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.ads111x_chipinfo*, %struct.ads111x_chipinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ads111x_chipinfo, %struct.ads111x_chipinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcasecmp(i8* %25, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load %struct.ads111x_chipinfo*, %struct.ads111x_chipinfo** %4, align 8
  store %struct.ads111x_chipinfo* %32, %struct.ads111x_chipinfo** %2, align 8
  br label %39

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %1
  store %struct.ads111x_chipinfo* null, %struct.ads111x_chipinfo** %2, align 8
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.ads111x_chipinfo*, %struct.ads111x_chipinfo** %2, align 8
  ret %struct.ads111x_chipinfo* %40
}

declare dso_local i32 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @nitems(%struct.ads111x_chipinfo*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
