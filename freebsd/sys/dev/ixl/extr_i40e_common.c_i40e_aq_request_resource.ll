; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_request_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_request_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aqc_request_resource = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"i40e_aq_request_resource\00", align 1
@i40e_aqc_opc_request_resource = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_AQ_RC_EBUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_request_resource(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.i40e_asq_cmd_details* %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i40e_asq_cmd_details*, align 8
  %13 = alloca %struct.i40e_aq_desc, align 4
  %14 = alloca %struct.i40e_aqc_request_resource*, align 8
  %15 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.i40e_asq_cmd_details* %5, %struct.i40e_asq_cmd_details** %12, align 8
  %16 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.i40e_aqc_request_resource*
  store %struct.i40e_aqc_request_resource* %18, %struct.i40e_aqc_request_resource** %14, align 8
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @i40e_aqc_opc_request_resource, align 4
  %21 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %13, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @CPU_TO_LE16(i32 %22)
  %24 = load %struct.i40e_aqc_request_resource*, %struct.i40e_aqc_request_resource** %14, align 8
  %25 = getelementptr inbounds %struct.i40e_aqc_request_resource, %struct.i40e_aqc_request_resource* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @CPU_TO_LE16(i32 %26)
  %28 = load %struct.i40e_aqc_request_resource*, %struct.i40e_aqc_request_resource** %14, align 8
  %29 = getelementptr inbounds %struct.i40e_aqc_request_resource, %struct.i40e_aqc_request_resource* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @CPU_TO_LE32(i32 %30)
  %32 = load %struct.i40e_aqc_request_resource*, %struct.i40e_aqc_request_resource** %14, align 8
  %33 = getelementptr inbounds %struct.i40e_aqc_request_resource, %struct.i40e_aqc_request_resource* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %35 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %12, align 8
  %36 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %34, %struct.i40e_aq_desc* %13, i32* null, i32 0, %struct.i40e_asq_cmd_details* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @I40E_SUCCESS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %6
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %42 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @I40E_AQ_RC_EBUSY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %6
  %48 = load %struct.i40e_aqc_request_resource*, %struct.i40e_aqc_request_resource** %14, align 8
  %49 = getelementptr inbounds %struct.i40e_aqc_request_resource, %struct.i40e_aqc_request_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @LE32_TO_CPU(i32 %50)
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load i32, i32* %15, align 4
  ret i32 %54
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
