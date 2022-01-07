; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32, i32, %struct.mlx5_fpga_device*, %struct.TYPE_2__ }
%struct.mlx5_fpga_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@fpga_qpc = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_FPGA_QPC_STATE_ACTIVE = common dso_local global i32 0, align 4
@MLX5_FPGA_QPC_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to activate FPGA RC QP: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to change QP state to reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to modify QP from RESET to INIT\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to change QP state from INIT to RTR\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to change QP state from RTR to RTS\0A\00", align 1
@MLX5_FPGA_QPC_STATE_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to revert FPGA QP to INIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*)* @mlx5_fpga_conn_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_connect(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_conn*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %2, align 8
  %5 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %5, i32 0, i32 2
  %7 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  store %struct.mlx5_fpga_device* %7, %struct.mlx5_fpga_device** %3, align 8
  %8 = load i32, i32* @fpga_qpc, align 4
  %9 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @state, align 4
  %13 = load i32, i32* @MLX5_FPGA_QPC_STATE_ACTIVE, align 4
  %14 = call i32 @MLX5_SET(i32 %8, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %15, i32 0, i32 2
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %16, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MLX5_FPGA_QPC_STATE, align 4
  %24 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %24, i32 0, i32 0
  %26 = call i32 @mlx5_fpga_modify_qp(i32 %19, i32 %22, i32 %23, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (%struct.mlx5_fpga_device*, i8*, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %104

33:                                               ; preds = %1
  %34 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %35 = call i32 @mlx5_fpga_conn_reset_qp(%struct.mlx5_fpga_conn* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %40 = call i32 (%struct.mlx5_fpga_device*, i8*, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %79

41:                                               ; preds = %33
  %42 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %43 = call i32 @mlx5_fpga_conn_init_qp(%struct.mlx5_fpga_conn* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %48 = call i32 (%struct.mlx5_fpga_device*, i8*, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %79

49:                                               ; preds = %41
  %50 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %58, %49
  %54 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %55 = call i32 @mlx5_fpga_conn_post_recv_buf(%struct.mlx5_fpga_conn* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %53

59:                                               ; preds = %53
  %60 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %61 = call i32 @mlx5_fpga_conn_rtr_qp(%struct.mlx5_fpga_conn* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %66 = call i32 (%struct.mlx5_fpga_device*, i8*, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %76

67:                                               ; preds = %59
  %68 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %69 = call i32 @mlx5_fpga_conn_rts_qp(%struct.mlx5_fpga_conn* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %74 = call i32 (%struct.mlx5_fpga_device*, i8*, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %76

75:                                               ; preds = %67
  br label %104

76:                                               ; preds = %72, %64
  %77 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %78 = call i32 @mlx5_fpga_conn_free_recv_bufs(%struct.mlx5_fpga_conn* %77)
  br label %79

79:                                               ; preds = %76, %46, %38
  %80 = load i32, i32* @fpga_qpc, align 4
  %81 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %82 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @state, align 4
  %85 = load i32, i32* @MLX5_FPGA_QPC_STATE_INIT, align 4
  %86 = call i32 @MLX5_SET(i32 %80, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %88 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %87, i32 0, i32 2
  %89 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %88, align 8
  %90 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %93 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MLX5_FPGA_QPC_STATE, align 4
  %96 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %2, align 8
  %97 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %96, i32 0, i32 0
  %98 = call i32 @mlx5_fpga_modify_qp(i32 %91, i32 %94, i32 %95, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %79
  %101 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %102 = call i32 (%struct.mlx5_fpga_device*, i8*, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %79
  br label %104

104:                                              ; preds = %103, %75, %29
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_modify_qp(i32, i32, i32, i32*) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, ...) #1

declare dso_local i32 @mlx5_fpga_conn_reset_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_init_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_post_recv_buf(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_rtr_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_rts_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_free_recv_bufs(%struct.mlx5_fpga_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
