; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_switch_element_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_switch_element_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.i40e_aqc_switch_config_element_resp = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"MAC %3d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PF  %3d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"VF  %3d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"EMP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"BMC\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"VEB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"PA\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"VSI %3d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ixl_switch_element_string(%struct.sbuf* %0, %struct.i40e_aqc_switch_config_element_resp* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.i40e_aqc_switch_config_element_resp*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.i40e_aqc_switch_config_element_resp* %1, %struct.i40e_aqc_switch_config_element_resp** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = call i32 @sbuf_clear(%struct.sbuf* %5)
  %7 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %49 [
    i32 134, label %10
    i32 132, label %16
    i32 129, label %22
    i32 135, label %28
    i32 136, label %31
    i32 131, label %34
    i32 130, label %37
    i32 133, label %40
    i32 128, label %43
  ]

10:                                               ; preds = %2
  %11 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %12 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sbuf_printf(%struct.sbuf* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %18 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sbuf_printf(%struct.sbuf* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %24 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sbuf_printf(%struct.sbuf* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %30 = call i32 @sbuf_cat(%struct.sbuf* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %52

31:                                               ; preds = %2
  %32 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %33 = call i32 @sbuf_cat(%struct.sbuf* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %36 = call i32 @sbuf_cat(%struct.sbuf* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %52

37:                                               ; preds = %2
  %38 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %39 = call i32 @sbuf_cat(%struct.sbuf* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %42 = call i32 @sbuf_cat(%struct.sbuf* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %52

43:                                               ; preds = %2
  %44 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %45 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %4, align 8
  %46 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sbuf_printf(%struct.sbuf* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  br label %52

49:                                               ; preds = %2
  %50 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %51 = call i32 @sbuf_cat(%struct.sbuf* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %43, %40, %37, %34, %31, %28, %22, %16, %10
  %53 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %54 = call i32 @sbuf_finish(%struct.sbuf* %53)
  %55 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %56 = call i8* @sbuf_data(%struct.sbuf* %55)
  ret i8* %56
}

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
