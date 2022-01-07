; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_valid_vf_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_valid_vf_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vport_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Cannot change VF state to %s while rate is set\0A\00", align 1
@MLX4_VGT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"VGT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VST\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"VST priority %d not supported for QoS\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Please set rate to 0 prior to this VF state change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_vport_state*, i32, i32)* @mlx4_valid_vf_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_valid_vf_state_change(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vport_state* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vport_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_vport_state, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vport_state* %2, %struct.mlx4_vport_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = bitcast %struct.mlx4_vport_state* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %17 = call i64 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev* %14, i32 %15, %struct.mlx4_vport_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %21 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %5
  store i32 1, i32* %6, align 4
  br label %53

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %12, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %12, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev* %30, i32 %31, %struct.mlx4_vport_state* %12)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %53

35:                                               ; preds = %25
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MLX4_VGT, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MLX4_VGT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %52 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %34, %24
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev*, i32, %struct.mlx4_vport_state*) #2

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
