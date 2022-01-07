; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_i40e_vc_stat_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_i40e_vc_stat_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"VIRTCHNL_ERR_PARAM\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"VIRTCHNL_STATUS_ERR_INVALID_VF_ID\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"VIRTCHNL_STATUS_NOT_SUPPORTED\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i40e_vc_stat_str(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 133, label %8
    i32 130, label %9
    i32 132, label %10
    i32 131, label %11
    i32 129, label %12
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %22

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %22

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %22

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %22

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %22

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snprintf(i8* %16, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %13, %12, %11, %10, %9, %8, %7
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
