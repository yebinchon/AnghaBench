; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_dev = type { i64*, i64 }
%struct.indent_arg = type { i32, %struct.devinfo_dev* }

@vflag = common dso_local global i64 0, align 8
@DS_ATTACHED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rflag = common dso_local global i64 0, align 8
@print_device_rman_resources = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_device(%struct.devinfo_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.devinfo_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.indent_arg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.devinfo_dev* %0, %struct.devinfo_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64, i64* @vflag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %12 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %10
  %18 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %19 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DS_ATTACHED, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17, %2
  %24 = load i8*, i8** %4, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %33, %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %27

36:                                               ; preds = %27
  %37 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %38 = call i32 @print_dev(%struct.devinfo_dev* %37)
  %39 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @rflag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 4
  %45 = getelementptr inbounds %struct.indent_arg, %struct.indent_arg* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %47 = getelementptr inbounds %struct.indent_arg, %struct.indent_arg* %5, i32 0, i32 1
  store %struct.devinfo_dev* %46, %struct.devinfo_dev** %47, align 8
  %48 = load i32, i32* @print_device_rman_resources, align 4
  %49 = bitcast %struct.indent_arg* %5 to i8*
  %50 = call i32 @devinfo_foreach_rman(i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51, %17, %10
  %53 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i32 @devinfo_foreach_device_child(%struct.devinfo_dev* %53, i32 (%struct.devinfo_dev*, i8*)* @print_device, i8* %55)
  ret i32 %56
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_dev(%struct.devinfo_dev*) #1

declare dso_local i32 @devinfo_foreach_rman(i32, i8*) #1

declare dso_local i32 @devinfo_foreach_device_child(%struct.devinfo_dev*, i32 (%struct.devinfo_dev*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
