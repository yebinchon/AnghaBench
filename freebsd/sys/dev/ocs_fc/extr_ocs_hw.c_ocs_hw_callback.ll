; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8* }

@OCS_HW_CB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bad parameter hw=%p which=%#x func=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown callback %#x\0A\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_callback(%struct.TYPE_8__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @OCS_HW_CB_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %12, %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %20, i32 %21, i8* %22)
  %24 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %81

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %72 [
    i32 131, label %27
    i32 130, label %36
    i32 128, label %45
    i32 129, label %54
    i32 132, label %63
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i8* %32, i8** %35, align 8
  br label %79

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i8* %41, i8** %44, align 8
  br label %79

45:                                               ; preds = %25
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  br label %79

54:                                               ; preds = %25
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  br label %79

63:                                               ; preds = %25
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %79

72:                                               ; preds = %25
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @ocs_log_test(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %63, %54, %45, %36, %27
  %80 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %72, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
