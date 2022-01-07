; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_alternate_write = type { i32, i32, i8*, i8* }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_alternate_read = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_alternate_read(%struct.i40e_hw* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca %struct.i40e_aqc_alternate_write*, align 8
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aqc_alternate_write*
  store %struct.i40e_aqc_alternate_write* %17, %struct.i40e_aqc_alternate_write** %13, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %21, i32* %6, align 4
  br label %55

22:                                               ; preds = %5
  %23 = load i32, i32* @i40e_aqc_opc_alternate_read, align 4
  %24 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @CPU_TO_LE32(i32 %25)
  %27 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %13, align 8
  %28 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i8* @CPU_TO_LE32(i32 %29)
  %31 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %13, align 8
  %32 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %34 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %33, %struct.i40e_aq_desc* %12, i32* null, i32 0, i32* null)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @I40E_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %22
  %39 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %13, align 8
  %40 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @LE32_TO_CPU(i32 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %13, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @LE32_TO_CPU(i32 %49)
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %38
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
