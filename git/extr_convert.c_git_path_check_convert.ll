; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_git_path_check_convert.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_git_path_check_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.convert_driver = type { i32, %struct.convert_driver* }
%struct.attr_check_item = type { i8* }

@user_convert = common dso_local global %struct.convert_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.convert_driver* (%struct.attr_check_item*)* @git_path_check_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.convert_driver* @git_path_check_convert(%struct.attr_check_item* %0) #0 {
  %2 = alloca %struct.convert_driver*, align 8
  %3 = alloca %struct.attr_check_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.convert_driver*, align 8
  store %struct.attr_check_item* %0, %struct.attr_check_item** %3, align 8
  %6 = load %struct.attr_check_item*, %struct.attr_check_item** %3, align 8
  %7 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @ATTR_TRUE(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @ATTR_FALSE(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @ATTR_UNSET(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %1
  store %struct.convert_driver* null, %struct.convert_driver** %2, align 8
  br label %41

21:                                               ; preds = %16
  %22 = load %struct.convert_driver*, %struct.convert_driver** @user_convert, align 8
  store %struct.convert_driver* %22, %struct.convert_driver** %5, align 8
  br label %23

23:                                               ; preds = %36, %21
  %24 = load %struct.convert_driver*, %struct.convert_driver** %5, align 8
  %25 = icmp ne %struct.convert_driver* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.convert_driver*, %struct.convert_driver** %5, align 8
  %29 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcmp(i8* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load %struct.convert_driver*, %struct.convert_driver** %5, align 8
  store %struct.convert_driver* %34, %struct.convert_driver** %2, align 8
  br label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.convert_driver*, %struct.convert_driver** %5, align 8
  %38 = getelementptr inbounds %struct.convert_driver, %struct.convert_driver* %37, i32 0, i32 1
  %39 = load %struct.convert_driver*, %struct.convert_driver** %38, align 8
  store %struct.convert_driver* %39, %struct.convert_driver** %5, align 8
  br label %23

40:                                               ; preds = %23
  store %struct.convert_driver* null, %struct.convert_driver** %2, align 8
  br label %41

41:                                               ; preds = %40, %33, %20
  %42 = load %struct.convert_driver*, %struct.convert_driver** %2, align 8
  ret %struct.convert_driver* %42
}

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
