; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_gen_setup_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_gen_setup_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_devinfo = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_gen_setup_devinfo(%struct.ofw_bus_devinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_bus_devinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.ofw_bus_devinfo* %0, %struct.ofw_bus_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %7 = icmp eq %struct.ofw_bus_devinfo* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @ENOMEM, align 4
  store i32 %9, i32* %3, align 4
  br label %43

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %12, i32 0, i32 5
  %14 = bitcast i32* %13 to i8**
  %15 = call i32 @OF_getprop_alloc(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %21, i32 0, i32 4
  %23 = bitcast i32* %22 to i8**
  %24 = call i32 @OF_getprop_alloc(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %26, i32 0, i32 3
  %28 = bitcast i32* %27 to i8**
  %29 = call i32 @OF_getprop_alloc(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %31, i32 0, i32 2
  %33 = bitcast i32* %32 to i8**
  %34 = call i32 @OF_getprop_alloc(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to i8**
  %39 = call i32 @OF_getprop_alloc(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ofw_bus_devinfo*, %struct.ofw_bus_devinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ofw_bus_devinfo, %struct.ofw_bus_devinfo* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %19, %17, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
