; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_mlx4_ib_demux_cm_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_mlx4_ib_demux_cm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.id_map_entry = type { i32, i32 }
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CM_REQ_ATTR_ID = common dso_local global i64 0, align 8
@CM_SIDR_REQ_ATTR_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"failed matching slave_id by gid (0x%llx)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't find an entry for pv_cm_id 0x%x\0A\00", align 1
@CM_DREQ_ATTR_ID = common dso_local global i64 0, align 8
@CM_REJ_ATTR_ID = common dso_local global i64 0, align 8
@CM_DREP_ATTR_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_demux_cm_handler(%struct.ib_device* %0, i32 %1, i32* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.id_map_entry*, align 8
  %12 = alloca %union.ib_gid, align 8
  %13 = alloca %union.ib_gid, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %15 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CM_REQ_ATTR_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %22 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CM_SIDR_REQ_ATTR_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %20, %4
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %116

31:                                               ; preds = %27
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %34 = call i64 @gid_from_req_msg(%struct.ib_device* %32, %struct.ib_mad* %33)
  %35 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %13, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = bitcast %union.ib_gid* %12 to i8*
  %38 = bitcast %union.ib_gid* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = bitcast %union.ib_gid* %12 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @mlx4_ib_find_real_gid(%struct.ib_device* %39, i32 %40, i64 %43)
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %31
  %50 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %51 = bitcast %union.ib_gid* %12 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @mlx4_ib_warn(%struct.ib_device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %116

57:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %116

58:                                               ; preds = %20
  %59 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %60 = call i64 @get_remote_comm_id(%struct.ib_mad* %59)
  store i64 %60, i64* %10, align 8
  %61 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %62 = bitcast i64* %10 to i32*
  %63 = call %struct.id_map_entry* @id_map_get(%struct.ib_device* %61, i32* %62, i32 -1, i32 -1)
  store %struct.id_map_entry* %63, %struct.id_map_entry** %11, align 8
  %64 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %65 = icmp ne %struct.id_map_entry* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %116

71:                                               ; preds = %58
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %76 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %81 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %82 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @set_remote_comm_id(%struct.ib_mad* %80, i32 %83)
  %85 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %86 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CM_DREQ_ATTR_ID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %93 = load %struct.id_map_entry*, %struct.id_map_entry** %11, align 8
  %94 = call i32 @schedule_delayed(%struct.ib_device* %92, %struct.id_map_entry* %93)
  br label %115

95:                                               ; preds = %79
  %96 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %97 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CM_REJ_ATTR_ID, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %104 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CM_DREP_ATTR_ID, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102, %95
  %110 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %111 = load i64, i64* %10, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @id_map_find_del(%struct.ib_device* %110, i32 %112)
  br label %114

114:                                              ; preds = %109, %102
  br label %115

115:                                              ; preds = %114, %91
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %66, %57, %49, %30
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @gid_from_req_msg(%struct.ib_device*, %struct.ib_mad*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_ib_find_real_gid(%struct.ib_device*, i32, i64) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, i64) #1

declare dso_local i64 @get_remote_comm_id(%struct.ib_mad*) #1

declare dso_local %struct.id_map_entry* @id_map_get(%struct.ib_device*, i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @set_remote_comm_id(%struct.ib_mad*, i32) #1

declare dso_local i32 @schedule_delayed(%struct.ib_device*, %struct.id_map_entry*) #1

declare dso_local i32 @id_map_find_del(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
