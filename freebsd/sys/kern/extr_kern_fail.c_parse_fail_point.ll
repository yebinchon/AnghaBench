; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_parse_fail_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_parse_fail_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fail_point_setting = type { i32 }

@FP_MAX_ENTRY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fail_point_setting*, i8*)* @parse_fail_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_fail_point(%struct.fail_point_setting* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fail_point_setting*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fail_point_setting* %0, %struct.fail_point_setting** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.fail_point_setting*, %struct.fail_point_setting** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @parse_term(%struct.fail_point_setting* %7, i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %43, label %27

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 62
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.fail_point_setting*, %struct.fail_point_setting** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = call i8* @parse_term(%struct.fail_point_setting* %34, i8* %36)
  store i8* %37, i8** %5, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @FP_MAX_ENTRY_COUNT, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33, %27, %19
  store i8* null, i8** %3, align 8
  br label %47

44:                                               ; preds = %39
  br label %14

45:                                               ; preds = %14
  %46 = load i8*, i8** %5, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %45, %43, %12
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @parse_term(%struct.fail_point_setting*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
