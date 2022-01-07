; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_mr_hw_get_mpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_mr_hw_get_mpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_mr = type { i64, i32 }
%struct.mlx4_mpt_entry = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX4_MPT_EN_HW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HW2SW_MPT failed (%d).\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Most likely the MR has MWs bound to it.\0A\00", align 1
@MLX4_MPT_EN_SW = common dso_local global i64 0, align 8
@MLX4_CMD_QUERY_MPT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_mr_hw_get_mpt(%struct.mlx4_dev* %0, %struct.mlx4_mr* %1, %struct.mlx4_mpt_entry*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_mr*, align 8
  %7 = alloca %struct.mlx4_mpt_entry***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_mr* %1, %struct.mlx4_mr** %6, align 8
  store %struct.mlx4_mpt_entry*** %2, %struct.mlx4_mpt_entry**** %7, align 8
  %11 = load %struct.mlx4_mr*, %struct.mlx4_mr** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @key_to_hw_index(i32 %13)
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %14, %19
  store i32 %20, i32* %9, align 4
  store %struct.mlx4_cmd_mailbox* null, %struct.mlx4_cmd_mailbox** %10, align 8
  %21 = load %struct.mlx4_mr*, %struct.mlx4_mr** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX4_MPT_EN_HW, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %103

29:                                               ; preds = %3
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev* %30, i32* null, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %40 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %103

42:                                               ; preds = %29
  %43 = load i64, i64* @MLX4_MPT_EN_SW, align 8
  %44 = load %struct.mlx4_mr*, %struct.mlx4_mr** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %47 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %51 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.mlx4_mpt_entry* @mlx4_table_find(i32* %53, i32 %54, i32* null)
  %56 = load %struct.mlx4_mpt_entry***, %struct.mlx4_mpt_entry**** %7, align 8
  %57 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %56, align 8
  store %struct.mlx4_mpt_entry* %55, %struct.mlx4_mpt_entry** %57, align 8
  br label %85

58:                                               ; preds = %42
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %60 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %59)
  store %struct.mlx4_cmd_mailbox* %60, %struct.mlx4_cmd_mailbox** %10, align 8
  %61 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %62 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %66 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %65)
  store i32 %66, i32* %4, align 4
  br label %103

67:                                               ; preds = %58
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %69 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %70 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MLX4_CMD_QUERY_MPT, align 4
  %74 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %75 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %76 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %68, i32 0, i32 %71, i32 %72, i32 0, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %98

80:                                               ; preds = %67
  %81 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %82 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %81, i32 0, i32 0
  %83 = bitcast i32* %82 to %struct.mlx4_mpt_entry**
  %84 = load %struct.mlx4_mpt_entry***, %struct.mlx4_mpt_entry**** %7, align 8
  store %struct.mlx4_mpt_entry** %83, %struct.mlx4_mpt_entry*** %84, align 8
  br label %85

85:                                               ; preds = %80, %49
  %86 = load %struct.mlx4_mpt_entry***, %struct.mlx4_mpt_entry**** %7, align 8
  %87 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %86, align 8
  %88 = icmp ne %struct.mlx4_mpt_entry** %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.mlx4_mpt_entry***, %struct.mlx4_mpt_entry**** %7, align 8
  %91 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %90, align 8
  %92 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %91, align 8
  %93 = icmp ne %struct.mlx4_mpt_entry* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %98

97:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %103

98:                                               ; preds = %94, %79
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %100 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %101 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %99, %struct.mlx4_cmd_mailbox* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %97, %64, %35, %26
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_mpt_entry* @mlx4_table_find(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
