; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_write_nvm_srwr_i210.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_write_nvm_srwr_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"e1000_write_nvm_srwr_i210\00", align 1
@E1000_EERD_EEWR_MAX_COUNT = common dso_local global i64 0, align 8
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_write_nvm_srwr_i210(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %9, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %67, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  %23 = sdiv i64 %21, %22
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  br label %31

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %28, %29
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i64 [ %26, %25 ], [ %30, %27 ]
  store i64 %32, i64* %11, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.0*
  %40 = call i64 %37(%struct.e1000_hw.0* %39)
  %41 = load i64, i64* @E1000_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %31
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = call i64 @e1000_write_nvm_srwr(%struct.e1000_hw* %44, i64 %45, i64 %46, i64* %49)
  store i64 %50, i64* %9, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.1*
  %58 = call i32 %55(%struct.e1000_hw.1* %57)
  br label %61

59:                                               ; preds = %31
  %60 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %59, %43
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @E1000_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %71

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %14

71:                                               ; preds = %65, %14
  %72 = load i64, i64* %9, align 8
  ret i64 %72
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_nvm_srwr(%struct.e1000_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
