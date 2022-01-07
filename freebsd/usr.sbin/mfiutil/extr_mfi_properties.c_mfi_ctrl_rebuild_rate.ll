; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_properties.c_mfi_ctrl_rebuild_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_properties.c_mfi_ctrl_rebuild_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ctrl_props = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"mfi_ctrl_set_rebuild_rate\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get controller properties\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to set controller properties\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"controller rebuild rate: %%%u \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @mfi_ctrl_rebuild_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_ctrl_rebuild_rate(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfi_ctrl_props, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

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
  br label %72

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
  br label %72

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @atoi(i8* %43)
  %45 = getelementptr inbounds %struct.mfi_ctrl_props, %struct.mfi_ctrl_props* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mfi_ctrl_set_properties(i32 %46, %struct.mfi_ctrl_props* %8)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %6, align 4
  %52 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %37
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mfi_ctrl_get_properties(i32 %57, %struct.mfi_ctrl_props* %8)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %6, align 4
  %63 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %34
  %69 = getelementptr inbounds %struct.mfi_ctrl_props, %struct.mfi_ctrl_props* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %61, %50, %28, %19, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @mfi_ctrl_get_properties(i32, %struct.mfi_ctrl_props*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @mfi_ctrl_set_properties(i32, %struct.mfi_ctrl_props*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
