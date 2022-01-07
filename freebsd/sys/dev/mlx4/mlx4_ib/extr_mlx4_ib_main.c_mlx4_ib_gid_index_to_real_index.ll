; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_gid_index_to_real_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_gid_index_to_real_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.mlx4_ib_dev = type { i32, i32, %struct.mlx4_ib_iboe }
%struct.mlx4_ib_iboe = type { i32, %struct.mlx4_port_gid_table* }
%struct.mlx4_port_gid_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.gid_cache_context*, %union.ib_gid }
%struct.gid_cache_context = type { i32 }
%struct.ib_gid_attr = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@zgid = common dso_local global %union.ib_gid zeroinitializer, align 4
@MLX4_MAX_PORT_GIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_gid_index_to_real_index(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_ib_iboe*, align 8
  %9 = alloca %struct.gid_cache_context*, align 8
  %10 = alloca %union.ib_gid, align 4
  %11 = alloca %struct.mlx4_port_gid_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ib_gid_attr, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 2
  store %struct.mlx4_ib_iboe* %18, %struct.mlx4_ib_iboe** %8, align 8
  store %struct.gid_cache_context* null, %struct.gid_cache_context** %9, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %130

27:                                               ; preds = %3
  %28 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @mlx4_is_bonded(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rdma_cap_roce_gid_table(i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %4, align 4
  br label %130

42:                                               ; preds = %34
  %43 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ib_get_cached_gid(i32* %44, i32 %45, i32 %46, %union.ib_gid* %10, %struct.ib_gid_attr* %16)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %4, align 4
  br label %130

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %16, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %16, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dev_put(i64 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = call i32 @memcmp(%union.ib_gid* %10, %union.ib_gid* @zgid, i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %130

66:                                               ; preds = %60
  %67 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %67, i32 0, i32 0
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %71, i32 0, i32 1
  %73 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %73, i64 %76
  store %struct.mlx4_port_gid_table* %77, %struct.mlx4_port_gid_table** %11, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %114, %66
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %78
  %83 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %11, align 8
  %84 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = call i32 @memcmp(%union.ib_gid* %89, %union.ib_gid* %10, i32 4)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %16, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %11, align 8
  %96 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %94, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %92
  %105 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %11, align 8
  %106 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load %struct.gid_cache_context*, %struct.gid_cache_context** %111, align 8
  store %struct.gid_cache_context* %112, %struct.gid_cache_context** %9, align 8
  br label %117

113:                                              ; preds = %92, %82
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %78

117:                                              ; preds = %104, %78
  %118 = load %struct.gid_cache_context*, %struct.gid_cache_context** %9, align 8
  %119 = icmp ne %struct.gid_cache_context* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.gid_cache_context*, %struct.gid_cache_context** %9, align 8
  %122 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %8, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %125, i32 0, i32 0
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %124, %63, %50, %40, %24
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @mlx4_is_bonded(i32) #1

declare dso_local i32 @rdma_cap_roce_gid_table(i32*, i32) #1

declare dso_local i32 @ib_get_cached_gid(i32*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @memcmp(%union.ib_gid*, %union.ib_gid*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
