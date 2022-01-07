; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_get_vport_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_get_vport_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_vport_counters = type { %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_48__, %struct.TYPE_47__, %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_41__, %struct.TYPE_35__ }
%struct.TYPE_27__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i8*, i8* }
%struct.TYPE_48__ = type { i8*, i8* }
%struct.TYPE_47__ = type { i8*, i8* }
%struct.TYPE_46__ = type { i8*, i8* }
%struct.TYPE_45__ = type { i8*, i8* }
%struct.TYPE_44__ = type { i8*, i8* }
%struct.TYPE_43__ = type { i8*, i8* }
%struct.TYPE_42__ = type { i8*, i8* }
%struct.TYPE_41__ = type { i8*, i8* }
%struct.TYPE_35__ = type { i8*, i8* }

@query_vport_counter_out = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@received_errors = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@transmit_errors = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@received_ib_unicast = common dso_local global %struct.TYPE_34__ zeroinitializer, align 4
@transmitted_ib_unicast = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@received_ib_multicast = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@transmitted_ib_multicast = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@received_eth_broadcast = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@transmitted_eth_broadcast = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@received_eth_unicast = common dso_local global %struct.TYPE_37__ zeroinitializer, align 4
@transmitted_eth_unicast = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@received_eth_multicast = common dso_local global %struct.TYPE_38__ zeroinitializer, align 4
@transmitted_eth_multicast = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_get_vport_counters(%struct.mlx5_core_dev* %0, i32 %1, %struct.mlx5_vport_counters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_vport_counters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5_vport_counters* %2, %struct.mlx5_vport_counters** %7, align 8
  %11 = load i32, i32* @query_vport_counter_out, align 4
  %12 = call i32 @MLX5_ST_SZ_BYTES(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @mlx5_vzalloc(i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %202

20:                                               ; preds = %3
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mlx5_query_vport_counter(%struct.mlx5_core_dev* %21, i32 %22, i32 0, i8* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %198

29:                                               ; preds = %20
  %30 = load i32, i32* @query_vport_counter_out, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @received_errors, i32 0, i32 1), align 4
  %33 = call i8* @MLX5_GET64(i32 %30, i8* %31, i32 %32)
  %34 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @query_vport_counter_out, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @received_errors, i32 0, i32 0), align 4
  %40 = call i8* @MLX5_GET64(i32 %37, i8* %38, i32 %39)
  %41 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @query_vport_counter_out, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @transmit_errors, i32 0, i32 1), align 4
  %47 = call i8* @MLX5_GET64(i32 %44, i8* %45, i32 %46)
  %48 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %48, i32 0, i32 10
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @query_vport_counter_out, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @transmit_errors, i32 0, i32 0), align 4
  %54 = call i8* @MLX5_GET64(i32 %51, i8* %52, i32 %53)
  %55 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @query_vport_counter_out, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @received_ib_unicast, i32 0, i32 1), align 4
  %61 = call i8* @MLX5_GET64(i32 %58, i8* %59, i32 %60)
  %62 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %63 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* @query_vport_counter_out, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @received_ib_unicast, i32 0, i32 0), align 4
  %68 = call i8* @MLX5_GET64(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %70 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* @query_vport_counter_out, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @transmitted_ib_unicast, i32 0, i32 1), align 4
  %75 = call i8* @MLX5_GET64(i32 %72, i8* %73, i32 %74)
  %76 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* @query_vport_counter_out, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @transmitted_ib_unicast, i32 0, i32 0), align 4
  %82 = call i8* @MLX5_GET64(i32 %79, i8* %80, i32 %81)
  %83 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %84 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @query_vport_counter_out, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @received_ib_multicast, i32 0, i32 1), align 4
  %89 = call i8* @MLX5_GET64(i32 %86, i8* %87, i32 %88)
  %90 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* @query_vport_counter_out, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @received_ib_multicast, i32 0, i32 0), align 4
  %96 = call i8* @MLX5_GET64(i32 %93, i8* %94, i32 %95)
  %97 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %98 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* @query_vport_counter_out, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @transmitted_ib_multicast, i32 0, i32 1), align 4
  %103 = call i8* @MLX5_GET64(i32 %100, i8* %101, i32 %102)
  %104 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %105 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load i32, i32* @query_vport_counter_out, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @transmitted_ib_multicast, i32 0, i32 0), align 4
  %110 = call i8* @MLX5_GET64(i32 %107, i8* %108, i32 %109)
  %111 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %112 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load i32, i32* @query_vport_counter_out, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @received_eth_broadcast, i32 0, i32 1), align 4
  %117 = call i8* @MLX5_GET64(i32 %114, i8* %115, i32 %116)
  %118 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %119 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* @query_vport_counter_out, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @received_eth_broadcast, i32 0, i32 0), align 4
  %124 = call i8* @MLX5_GET64(i32 %121, i8* %122, i32 %123)
  %125 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %126 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  %128 = load i32, i32* @query_vport_counter_out, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @transmitted_eth_broadcast, i32 0, i32 1), align 4
  %131 = call i8* @MLX5_GET64(i32 %128, i8* %129, i32 %130)
  %132 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %133 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load i32, i32* @query_vport_counter_out, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @transmitted_eth_broadcast, i32 0, i32 0), align 4
  %138 = call i8* @MLX5_GET64(i32 %135, i8* %136, i32 %137)
  %139 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %140 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load i32, i32* @query_vport_counter_out, align 4
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @received_eth_unicast, i32 0, i32 1), align 4
  %145 = call i8* @MLX5_GET64(i32 %142, i8* %143, i32 %144)
  %146 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %147 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %147, i32 0, i32 1
  store i8* %145, i8** %148, align 8
  %149 = load i32, i32* @query_vport_counter_out, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @received_eth_unicast, i32 0, i32 0), align 4
  %152 = call i8* @MLX5_GET64(i32 %149, i8* %150, i32 %151)
  %153 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %154 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* @query_vport_counter_out, align 4
  %157 = load i8*, i8** %9, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @transmitted_eth_unicast, i32 0, i32 1), align 4
  %159 = call i8* @MLX5_GET64(i32 %156, i8* %157, i32 %158)
  %160 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %161 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load i32, i32* @query_vport_counter_out, align 4
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @transmitted_eth_unicast, i32 0, i32 0), align 4
  %166 = call i8* @MLX5_GET64(i32 %163, i8* %164, i32 %165)
  %167 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %168 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  %170 = load i32, i32* @query_vport_counter_out, align 4
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @received_eth_multicast, i32 0, i32 1), align 4
  %173 = call i8* @MLX5_GET64(i32 %170, i8* %171, i32 %172)
  %174 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %175 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  store i8* %173, i8** %176, align 8
  %177 = load i32, i32* @query_vport_counter_out, align 4
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @received_eth_multicast, i32 0, i32 0), align 4
  %180 = call i8* @MLX5_GET64(i32 %177, i8* %178, i32 %179)
  %181 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %182 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* @query_vport_counter_out, align 4
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @transmitted_eth_multicast, i32 0, i32 1), align 4
  %187 = call i8* @MLX5_GET64(i32 %184, i8* %185, i32 %186)
  %188 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %189 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  store i8* %187, i8** %190, align 8
  %191 = load i32, i32* @query_vport_counter_out, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @transmitted_eth_multicast, i32 0, i32 0), align 4
  %194 = call i8* @MLX5_GET64(i32 %191, i8* %192, i32 %193)
  %195 = load %struct.mlx5_vport_counters*, %struct.mlx5_vport_counters** %7, align 8
  %196 = getelementptr inbounds %struct.mlx5_vport_counters, %struct.mlx5_vport_counters* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  store i8* %194, i8** %197, align 8
  br label %198

198:                                              ; preds = %29, %28
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @kvfree(i8* %199)
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %198, %17
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_query_vport_counter(%struct.mlx5_core_dev*, i32, i32, i8*, i32) #1

declare dso_local i8* @MLX5_GET64(i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
