; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_properties.c_mfi_ctrl_alarm_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_properties.c_mfi_ctrl_alarm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ctrl_props = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"mfi_ctrl_alarm_enable\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get controller properties\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"controller alarm was : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to set controller properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @mfi_ctrl_alarm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_ctrl_alarm_enable(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfi_ctrl_props, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %81

13:                                               ; preds = %2
  %14 = load i32, i32* @mfi_unit, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @mfi_open(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %6, align 4
  %21 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %81

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mfi_ctrl_get_properties(i32 %24, %struct.mfi_ctrl_props* %8)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %6, align 4
  %30 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.mfi_ctrl_props, %struct.mfi_ctrl_props* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %40 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %74

43:                                               ; preds = %34
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @atoi(i8* %49)
  %51 = getelementptr inbounds %struct.mfi_ctrl_props, %struct.mfi_ctrl_props* %8, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mfi_ctrl_set_properties(i32 %52, %struct.mfi_ctrl_props* %8)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %6, align 4
  %58 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %81

62:                                               ; preds = %43
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mfi_ctrl_get_properties(i32 %63, %struct.mfi_ctrl_props* %8)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %6, align 4
  %69 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %81

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %34
  %75 = getelementptr inbounds %struct.mfi_ctrl_props, %struct.mfi_ctrl_props* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %80 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %67, %56, %28, %19, %11
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @mfi_ctrl_get_properties(i32, %struct.mfi_ctrl_props*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @mfi_ctrl_set_properties(i32, %struct.mfi_ctrl_props*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
