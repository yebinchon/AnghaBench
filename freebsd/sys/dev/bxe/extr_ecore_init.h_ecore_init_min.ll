; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_init_min.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_init_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmng_init_input = type { i32, i64* }
%struct.cmng_init = type { %struct.cmng_struct_per_port, %struct.cmng_vnic }
%struct.cmng_struct_per_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.cmng_vnic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@QM_ARB_BYTES = common dso_local global i64 0, align 8
@T_FAIR_COEF = common dso_local global i32 0, align 4
@FAIR_MEM = common dso_local global i64 0, align 8
@SDM_TICKS = common dso_local global i64 0, align 8
@ECORE_PORT2_MODE_NUM_VNICS = common dso_local global i64 0, align 8
@MIN_ABOVE_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmng_init_input*, i64, %struct.cmng_init*)* @ecore_init_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_min(%struct.cmng_init_input* %0, i64 %1, %struct.cmng_init* %2) #0 {
  %4 = alloca %struct.cmng_init_input*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmng_init*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cmng_vnic*, align 8
  %12 = alloca %struct.cmng_struct_per_port*, align 8
  store %struct.cmng_init_input* %0, %struct.cmng_init_input** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cmng_init* %2, %struct.cmng_init** %6, align 8
  %13 = load %struct.cmng_init*, %struct.cmng_init** %6, align 8
  %14 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %13, i32 0, i32 1
  store %struct.cmng_vnic* %14, %struct.cmng_vnic** %11, align 8
  %15 = load %struct.cmng_init*, %struct.cmng_init** %6, align 8
  %16 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %15, i32 0, i32 0
  store %struct.cmng_struct_per_port* %16, %struct.cmng_struct_per_port** %12, align 8
  %17 = load i64, i64* @QM_ARB_BYTES, align 8
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @T_FAIR_COEF, align 4
  %21 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %22 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %20, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @QM_ARB_BYTES, align 8
  %27 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %12, align 8
  %28 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 %30, %31
  %33 = load i64, i64* @FAIR_MEM, align 8
  %34 = mul i64 %32, %33
  %35 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %12, align 8
  %36 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @SDM_TICKS, align 8
  %40 = udiv i64 %38, %39
  %41 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %12, align 8
  %42 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %57, %3
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @ECORE_PORT2_MODE_NUM_VNICS, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %50 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %48
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %44

60:                                               ; preds = %44
  %61 = load i64, i64* %9, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %120

63:                                               ; preds = %60
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %116, %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @ECORE_PORT2_MODE_NUM_VNICS, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %119

68:                                               ; preds = %64
  %69 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %70 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %74, 100
  %76 = load i32, i32* @T_FAIR_COEF, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %9, align 8
  %79 = mul i64 800, %78
  %80 = udiv i64 %77, %79
  %81 = mul i64 %75, %80
  %82 = load %struct.cmng_vnic*, %struct.cmng_vnic** %11, align 8
  %83 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 %81, i64* %87, align 8
  %88 = load %struct.cmng_vnic*, %struct.cmng_vnic** %11, align 8
  %89 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %12, align 8
  %96 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MIN_ABOVE_THRESH, align 8
  %100 = add i64 %98, %99
  %101 = icmp ult i64 %94, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %68
  %103 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %12, align 8
  %104 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MIN_ABOVE_THRESH, align 8
  %108 = add i64 %106, %107
  %109 = load %struct.cmng_vnic*, %struct.cmng_vnic** %11, align 8
  %110 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %102, %68
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %64

119:                                              ; preds = %64
  br label %120

120:                                              ; preds = %119, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
