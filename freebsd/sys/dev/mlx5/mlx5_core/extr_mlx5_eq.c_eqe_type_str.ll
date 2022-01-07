; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_eqe_type_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_eqe_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"MLX5_EVENT_TYPE_COMP\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MLX5_EVENT_TYPE_PATH_MIG\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"MLX5_EVENT_TYPE_COMM_EST\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"MLX5_EVENT_TYPE_SQ_DRAINED\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MLX5_EVENT_TYPE_SRQ_LAST_WQE\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"MLX5_EVENT_TYPE_SRQ_RQ_LIMIT\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"MLX5_EVENT_TYPE_CQ_ERROR\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"MLX5_EVENT_TYPE_WQ_CATAS_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"MLX5_EVENT_TYPE_PATH_MIG_FAILED\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"MLX5_EVENT_TYPE_WQ_INVAL_REQ_ERROR\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"MLX5_EVENT_TYPE_WQ_ACCESS_ERROR\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"MLX5_EVENT_TYPE_SRQ_CATAS_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"MLX5_EVENT_TYPE_INTERNAL_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"MLX5_EVENT_TYPE_PORT_CHANGE\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"MLX5_EVENT_TYPE_GPIO_EVENT\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"MLX5_EVENT_TYPE_PORT_MODULE_EVENT\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"MLX5_EVENT_TYPE_TEMP_WARN_EVENT\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"MLX5_EVENT_TYPE_REMOTE_CONFIG\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"MLX5_EVENT_TYPE_DB_BF_CONGESTION\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"MLX5_EVENT_TYPE_STALL_EVENT\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"MLX5_EVENT_TYPE_CMD\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"MLX5_EVENT_TYPE_PAGE_REQUEST\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"MLX5_EVENT_TYPE_NIC_VPORT_CHANGE\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"MLX5_EVENT_TYPE_FPGA_ERROR\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"MLX5_EVENT_TYPE_FPGA_QP_ERROR\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Unrecognized event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @eqe_type_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eqe_type_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %32 [
    i32 149, label %5
    i32 140, label %6
    i32 150, label %7
    i32 136, label %8
    i32 134, label %9
    i32 133, label %10
    i32 148, label %11
    i32 129, label %12
    i32 139, label %13
    i32 128, label %14
    i32 130, label %15
    i32 135, label %16
    i32 143, label %17
    i32 138, label %18
    i32 144, label %19
    i32 151, label %20
    i32 131, label %21
    i32 137, label %22
    i32 147, label %23
    i32 132, label %24
    i32 154, label %25
    i32 141, label %26
    i32 142, label %27
    i32 146, label %28
    i32 145, label %29
    i32 153, label %30
    i32 152, label %31
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %33

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %33

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %33

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %33

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %33

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %33

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %33

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %33

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %33

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %33

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %33

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %33

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %33

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %33

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %33

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %33

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %33

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %33

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %33

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %33

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %33

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %33

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %33

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %33

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %33

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %33

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
