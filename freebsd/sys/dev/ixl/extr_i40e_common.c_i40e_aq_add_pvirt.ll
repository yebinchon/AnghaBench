; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_pvirt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_pvirt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_update_pv = type { i8*, i8*, i8* }
%struct.i40e_aqc_add_update_pv_completion = type { i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_add_pv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_pvirt(%struct.i40e_hw* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca %struct.i40e_aqc_add_update_pv*, align 8
  %14 = alloca %struct.i40e_aqc_add_update_pv_completion*, align 8
  %15 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.i40e_aqc_add_update_pv*
  store %struct.i40e_aqc_add_update_pv* %18, %struct.i40e_aqc_add_update_pv** %13, align 8
  %19 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.i40e_aqc_add_update_pv_completion*
  store %struct.i40e_aqc_add_update_pv_completion* %21, %struct.i40e_aqc_add_update_pv_completion** %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %25, i32* %6, align 4
  br label %56

26:                                               ; preds = %5
  %27 = load i32, i32* @i40e_aqc_opc_add_pv, align 4
  %28 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = call i8* @CPU_TO_LE16(i64 %29)
  %31 = load %struct.i40e_aqc_add_update_pv*, %struct.i40e_aqc_add_update_pv** %13, align 8
  %32 = getelementptr inbounds %struct.i40e_aqc_add_update_pv, %struct.i40e_aqc_add_update_pv* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i8* @CPU_TO_LE16(i64 %33)
  %35 = load %struct.i40e_aqc_add_update_pv*, %struct.i40e_aqc_add_update_pv** %13, align 8
  %36 = getelementptr inbounds %struct.i40e_aqc_add_update_pv, %struct.i40e_aqc_add_update_pv* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i8* @CPU_TO_LE16(i64 %37)
  %39 = load %struct.i40e_aqc_add_update_pv*, %struct.i40e_aqc_add_update_pv** %13, align 8
  %40 = getelementptr inbounds %struct.i40e_aqc_add_update_pv, %struct.i40e_aqc_add_update_pv* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %42 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %41, %struct.i40e_aq_desc* %12, i32* null, i32 0, i32* null)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %26
  %46 = load i64*, i64** %11, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.i40e_aqc_add_update_pv_completion*, %struct.i40e_aqc_add_update_pv_completion** %14, align 8
  %50 = getelementptr inbounds %struct.i40e_aqc_add_update_pv_completion, %struct.i40e_aqc_add_update_pv_completion* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @LE16_TO_CPU(i32 %51)
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %45, %26
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

declare dso_local i64 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
