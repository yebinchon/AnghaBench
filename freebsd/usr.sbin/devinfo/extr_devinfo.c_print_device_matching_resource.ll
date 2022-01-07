; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_device_matching_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_device_matching_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_res = type { i32 }
%struct.indent_arg = type { i32, i64 }
%struct.devinfo_dev = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_device_matching_resource(%struct.devinfo_res* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devinfo_res*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.indent_arg*, align 8
  %7 = alloca %struct.devinfo_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.devinfo_res* %0, %struct.devinfo_res** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.indent_arg*
  store %struct.indent_arg* %10, %struct.indent_arg** %6, align 8
  %11 = load %struct.indent_arg*, %struct.indent_arg** %6, align 8
  %12 = getelementptr inbounds %struct.indent_arg, %struct.indent_arg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.devinfo_dev*
  store %struct.devinfo_dev* %14, %struct.devinfo_dev** %7, align 8
  %15 = load %struct.devinfo_res*, %struct.devinfo_res** %4, align 8
  %16 = getelementptr inbounds %struct.devinfo_res, %struct.devinfo_res* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.devinfo_dev* @devinfo_handle_to_device(i32 %17)
  %19 = load %struct.devinfo_dev*, %struct.devinfo_dev** %7, align 8
  %20 = icmp eq %struct.devinfo_dev* %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.indent_arg*, %struct.indent_arg** %6, align 8
  %23 = getelementptr inbounds %struct.indent_arg, %struct.indent_arg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %44

27:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.indent_arg*, %struct.indent_arg** %6, align 8
  %31 = getelementptr inbounds %struct.indent_arg, %struct.indent_arg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load %struct.devinfo_res*, %struct.devinfo_res** %4, align 8
  %41 = call i32 @print_resource(%struct.devinfo_res* %40)
  %42 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.devinfo_dev* @devinfo_handle_to_device(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_resource(%struct.devinfo_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
