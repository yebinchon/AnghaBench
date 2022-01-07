; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_mcg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_mcg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.mlx4_ib_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_ib_qp = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_steering = type { i32, %struct.mlx4_flow_reg_id, %struct.TYPE_4__ }
%struct.mlx4_flow_reg_id = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@MLX4_PROT_IB_IPV6 = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"multicast attach op failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @mlx4_ib_mcg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_mcg_attach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca %struct.mlx4_ib_qp*, align 8
  %12 = alloca %struct.mlx4_ib_steering*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_flow_reg_id, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %9, align 8
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %20, align 8
  store %struct.mlx4_dev* %21, %struct.mlx4_dev** %10, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %23 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %22)
  store %struct.mlx4_ib_qp* %23, %struct.mlx4_ib_qp** %11, align 8
  store %struct.mlx4_ib_steering* null, %struct.mlx4_ib_steering** %12, align 8
  %24 = load i32, i32* @MLX4_PROT_IB_IPV6, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %26, align 8
  %28 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mlx4_ib_steering* @kmalloc(i32 32, i32 %34)
  store %struct.mlx4_ib_steering* %35, %struct.mlx4_ib_steering** %12, align 8
  %36 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %37 = icmp ne %struct.mlx4_ib_steering* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %176

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %43, i32 0, i32 0
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %44, align 8
  %46 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %46, i32 0, i32 2
  %48 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %49 = bitcast %union.ib_gid* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds %struct.mlx4_flow_reg_id, %struct.mlx4_flow_reg_id* %14, i32 0, i32 1
  %65 = call i32 @mlx4_multicast_attach(%struct.mlx4_dev* %45, i32* %47, i32 %50, i32 %53, i32 %62, i32 %63, i64* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %42
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %172

71:                                               ; preds = %42
  %72 = getelementptr inbounds %struct.mlx4_flow_reg_id, %struct.mlx4_flow_reg_id* %14, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %74 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %71
  %77 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %77, i32 0, i32 0
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %78, align 8
  %80 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %80, i32 0, i32 2
  %82 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %83 = bitcast %union.ib_gid* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 2, i32 1
  %91 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.mlx4_flow_reg_id, %struct.mlx4_flow_reg_id* %14, i32 0, i32 0
  %102 = call i32 @mlx4_multicast_attach(%struct.mlx4_dev* %79, i32* %81, i32 %84, i32 %90, i32 %99, i32 %100, i64* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %76
  br label %142

106:                                              ; preds = %76
  br label %107

107:                                              ; preds = %106, %71
  %108 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %109 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %110 = call i32 @add_gid_entry(%struct.ib_qp* %108, %union.ib_gid* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %142

114:                                              ; preds = %107
  %115 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %116 = icmp ne %struct.mlx4_ib_steering* %115, null
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_steering, %struct.mlx4_ib_steering* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %123 = bitcast %union.ib_gid* %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i32 %121, i32 %124, i32 16)
  %126 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_steering, %struct.mlx4_ib_steering* %126, i32 0, i32 1
  %128 = bitcast %struct.mlx4_flow_reg_id* %127 to i8*
  %129 = bitcast %struct.mlx4_flow_reg_id* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  %130 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %130, i32 0, i32 3
  %132 = call i32 @mutex_lock(i32* %131)
  %133 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %134 = getelementptr inbounds %struct.mlx4_ib_steering, %struct.mlx4_ib_steering* %133, i32 0, i32 0
  %135 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %135, i32 0, i32 4
  %137 = call i32 @list_add(i32* %134, i32* %136)
  %138 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %139 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %138, i32 0, i32 3
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %141

141:                                              ; preds = %117, %114
  store i32 0, i32* %4, align 4
  br label %176

142:                                              ; preds = %113, %105
  %143 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %143, i32 0, i32 0
  %145 = load %struct.mlx4_dev*, %struct.mlx4_dev** %144, align 8
  %146 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %146, i32 0, i32 2
  %148 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %149 = bitcast %union.ib_gid* %148 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = getelementptr inbounds %struct.mlx4_flow_reg_id, %struct.mlx4_flow_reg_id* %14, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @mlx4_multicast_detach(%struct.mlx4_dev* %145, i32* %147, i32 %150, i32 %151, i64 %153)
  %155 = getelementptr inbounds %struct.mlx4_flow_reg_id, %struct.mlx4_flow_reg_id* %14, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %142
  %159 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %159, i32 0, i32 0
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %160, align 8
  %162 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %11, align 8
  %163 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %162, i32 0, i32 2
  %164 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %165 = bitcast %union.ib_gid* %164 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %13, align 4
  %168 = getelementptr inbounds %struct.mlx4_flow_reg_id, %struct.mlx4_flow_reg_id* %14, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @mlx4_multicast_detach(%struct.mlx4_dev* %161, i32* %163, i32 %166, i32 %167, i64 %169)
  br label %171

171:                                              ; preds = %158, %142
  br label %172

172:                                              ; preds = %171, %68
  %173 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %174 = call i32 @kfree(%struct.mlx4_ib_steering* %173)
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %141, %38
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx4_ib_steering* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_multicast_attach(%struct.mlx4_dev*, i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @add_gid_entry(%struct.ib_qp*, %union.ib_gid*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_multicast_detach(%struct.mlx4_dev*, i32*, i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_steering*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
