; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_hca_vport_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_hca_vport_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@query_hca_vport_gid_in = common dso_local global i32 0, align 4
@query_hca_vport_gid_out = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@gid_table_size = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_HCA_VPORT_GID = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_hca_vport_gid(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, %union.ib_gid* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ib_gid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %union.ib_gid*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.ib_gid* %4, %union.ib_gid** %11, align 8
  %21 = load i32, i32* @query_hca_vport_gid_in, align 4
  %22 = call i32 @MLX5_ST_SZ_BYTES(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @query_hca_vport_gid_out, align 4
  %24 = call i32 @MLX5_ST_SZ_BYTES(i32 %23)
  store i32 %24, i32* %13, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %26 = load i32, i32* @vport_group_manager, align 4
  %27 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %29 = load i32, i32* @gid_table_size, align 4
  %30 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %28, i32 %29)
  %31 = call i32 @mlx5_get_gid_table_len(i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 65535
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %144

41:                                               ; preds = %35, %5
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %19, align 4
  br label %47

46:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @mlx5_vzalloc(i32 %55)
  store i8* %56, i8** %16, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i8* @mlx5_vzalloc(i32 %57)
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %47
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %20, align 4
  br label %138

67:                                               ; preds = %61
  %68 = load i32, i32* @query_hca_vport_gid_in, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* @opcode, align 4
  %71 = load i32, i32* @MLX5_CMD_OP_QUERY_HCA_VPORT_GID, align 4
  %72 = call i32 @MLX5_SET(i32 %68, i8* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* @query_hca_vport_gid_in, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* @vport_number, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @MLX5_SET(i32 %79, i8* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @query_hca_vport_gid_in, align 4
  %85 = load i8*, i8** %16, align 8
  %86 = load i32, i32* @other_vport, align 4
  %87 = call i32 @MLX5_SET(i32 %84, i8* %85, i32 %86, i32 1)
  br label %91

88:                                               ; preds = %75
  %89 = load i32, i32* @EPERM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %20, align 4
  br label %138

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %67
  %93 = load i32, i32* @query_hca_vport_gid_in, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @MLX5_SET(i32 %93, i8* %94, i32 %95, i32 %96)
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %99 = load i32, i32* @num_ports, align 4
  %100 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %98, i32 %99)
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load i32, i32* @query_hca_vport_gid_in, align 4
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @MLX5_SET(i32 %103, i8* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %92
  %109 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %109, i8* %110, i32 %111, i8* %112, i32 %113)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %138

118:                                              ; preds = %108
  %119 = load i32, i32* @query_hca_vport_gid_out, align 4
  %120 = load i8*, i8** %15, align 8
  %121 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %122 = call i64 @MLX5_ADDR_OF(i32 %119, i8* %120, %union.ib_gid* %121)
  %123 = inttoptr i64 %122 to %union.ib_gid*
  store %union.ib_gid* %123, %union.ib_gid** %17, align 8
  %124 = load %union.ib_gid*, %union.ib_gid** %17, align 8
  %125 = bitcast %union.ib_gid* %124 to %struct.TYPE_2__*
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %129 = bitcast %union.ib_gid* %128 to %struct.TYPE_2__*
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %union.ib_gid*, %union.ib_gid** %17, align 8
  %132 = bitcast %union.ib_gid* %131 to %struct.TYPE_2__*
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %136 = bitcast %union.ib_gid* %135 to %struct.TYPE_2__*
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %118, %117, %88, %64
  %139 = load i8*, i8** %16, align 8
  %140 = call i32 @kvfree(i8* %139)
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @kvfree(i8* %141)
  %143 = load i32, i32* %20, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %138, %38
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_get_gid_table_len(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i8*, %union.ib_gid*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
