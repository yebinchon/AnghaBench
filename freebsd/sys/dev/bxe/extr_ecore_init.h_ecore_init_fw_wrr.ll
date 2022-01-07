; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_init_fw_wrr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_init_fw_wrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmng_init_input = type { i64* }
%struct.cmng_init = type { %struct.cmng_struct_per_port, %struct.cmng_vnic }
%struct.cmng_struct_per_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cmng_vnic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@MAX_COS_NUMBER = common dso_local global i64 0, align 8
@ECORE_PORT2_MODE_NUM_VNICS = common dso_local global i64 0, align 8
@T_FAIR_COEF = common dso_local global i32 0, align 4
@MIN_ABOVE_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmng_init_input*, i64, %struct.cmng_init*)* @ecore_init_fw_wrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_fw_wrr(%struct.cmng_init_input* %0, i64 %1, %struct.cmng_init* %2) #0 {
  %4 = alloca %struct.cmng_init_input*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmng_init*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cmng_vnic*, align 8
  %11 = alloca %struct.cmng_struct_per_port*, align 8
  %12 = alloca i64*, align 8
  store %struct.cmng_init_input* %0, %struct.cmng_init_input** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cmng_init* %2, %struct.cmng_init** %6, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.cmng_init*, %struct.cmng_init** %6, align 8
  %14 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %13, i32 0, i32 1
  store %struct.cmng_vnic* %14, %struct.cmng_vnic** %10, align 8
  %15 = load %struct.cmng_init*, %struct.cmng_init** %6, align 8
  %16 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %15, i32 0, i32 0
  store %struct.cmng_struct_per_port* %16, %struct.cmng_struct_per_port** %11, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %30, %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @MAX_COS_NUMBER, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %23 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load i64, i64* %9, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %96, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @ECORE_PORT2_MODE_NUM_VNICS, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %37
  %42 = load %struct.cmng_vnic*, %struct.cmng_vnic** %10, align 8
  %43 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %12, align 8
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %92, %41
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @MAX_COS_NUMBER, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %95

53:                                               ; preds = %49
  %54 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %55 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %59, 100
  %61 = load i32, i32* @T_FAIR_COEF, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = mul i64 800, %63
  %65 = udiv i64 %62, %64
  %66 = mul i64 %60, %65
  %67 = load i64*, i64** %12, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %66, i64* %69, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %11, align 8
  %75 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MIN_ABOVE_THRESH, align 8
  %79 = add i64 %77, %78
  %80 = icmp ult i64 %73, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %53
  %82 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %11, align 8
  %83 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MIN_ABOVE_THRESH, align 8
  %87 = add i64 %85, %86
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %81, %53
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %49

95:                                               ; preds = %49
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %7, align 8
  br label %37

99:                                               ; preds = %37
  br label %100

100:                                              ; preds = %99, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
