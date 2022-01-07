; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_master_activate_admin_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_master_activate_admin_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.mlx4_slave_state* }
%struct.TYPE_14__ = type { %struct.mlx4_vport_state*, i32* }
%struct.mlx4_vport_state = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.mlx4_vport_oper_state*, i32* }
%struct.mlx4_vport_oper_state = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i32, i32, i64, i32 }
%struct.mlx4_slave_state = type { i64 }
%struct.mlx4_active_ports = type { i32 }

@ETH_P_8021AD = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i64 0, align 8
@NO_INDX = common dso_local global i8* null, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No vlan resources slave %d, port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"No mac resources slave %d, port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"alloc mac %llx idx  %d slave %d port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32)* @mlx4_master_activate_admin_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_master_activate_admin_state(%struct.mlx4_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_state*, align 8
  %9 = alloca %struct.mlx4_vport_oper_state*, align 8
  %10 = alloca %struct.mlx4_slave_state*, align 8
  %11 = alloca %struct.mlx4_active_ports, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %18, i64 %20
  store %struct.mlx4_slave_state* %21, %struct.mlx4_slave_state** %10, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlx4_get_active_ports(%struct.TYPE_18__* %23, i32 %24)
  %26 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @find_first_bit(i32 %28, i32 %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bitmap_weight(i32 %39, i32 %44)
  %46 = add nsw i32 %37, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %274, %2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %277

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @test_bit(i32 %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %274

60:                                               ; preds = %52
  %61 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %74, i32* %87, align 4
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %97, i64 %99
  store %struct.mlx4_vport_oper_state* %100, %struct.mlx4_vport_oper_state** %9, align 8
  %101 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %110, i64 %112
  store %struct.mlx4_vport_state* %113, %struct.mlx4_vport_state** %8, align 8
  %114 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %115 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @ETH_P_8021AD, align 4
  %118 = call i64 @htons(i32 %117)
  %119 = icmp ne i64 %116, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %60
  %121 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %10, align 8
  %122 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120, %60
  %126 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %127 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %133 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %136 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  store i64 %134, i64* %137, align 8
  %138 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %139 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %142 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 7
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %125, %120
  %145 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %146 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %149 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  store i64 %147, i64* %150, align 8
  %151 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %152 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %155 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 6
  store i64 %153, i64* %156, align 8
  %157 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %158 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %161 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 5
  store i32 %159, i32* %162, align 8
  %163 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %164 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %167 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 4
  store i32 %165, i32* %168, align 4
  %169 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %170 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %173 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 8
  %175 = load i64, i64* @MLX4_VGT, align 8
  %176 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %177 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %175, %178
  br i1 %179, label %180, label %227

180:                                              ; preds = %144
  %181 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %182 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %185 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %188 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %187, i32 0, i32 0
  %189 = call i32 @__mlx4_register_vlan(%struct.TYPE_18__* %182, i32 %183, i64 %186, i32* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %180
  %193 = load i8*, i8** @NO_INDX, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %196 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i64, i64* @MLX4_VGT, align 8
  %198 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %199 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  store i64 %197, i64* %200, align 8
  %201 = load i32, i32* @ETH_P_8021Q, align 4
  %202 = call i64 @htons(i32 %201)
  %203 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %204 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %207 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %206, i32 0, i32 0
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @mlx4_warn(%struct.TYPE_18__* %207, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %208, i32 %209)
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %3, align 4
  br label %278

212:                                              ; preds = %180
  %213 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %214 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %213, i32 0, i32 0
  %215 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %216 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = sext i32 %219 to i64
  %221 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %222 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @mlx4_dbg(%struct.TYPE_18__* %214, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %220, i32 %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %212, %144
  %228 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %229 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %273

232:                                              ; preds = %227
  %233 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %234 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %233, i32 0, i32 0
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %237 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @__mlx4_register_mac(%struct.TYPE_18__* %234, i32 %235, i64 %238)
  %240 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %241 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %243 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp sgt i32 0, %244
  br i1 %245, label %246, label %260

246:                                              ; preds = %232
  %247 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %248 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %7, align 4
  %250 = load i8*, i8** @NO_INDX, align 8
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %253 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %255 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %254, i32 0, i32 0
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @mlx4_warn(%struct.TYPE_18__* %255, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %256, i32 %257)
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %3, align 4
  br label %278

260:                                              ; preds = %232
  %261 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %262 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %261, i32 0, i32 0
  %263 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %264 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %268 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @mlx4_dbg(%struct.TYPE_18__* %262, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %266, i32 %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %260, %227
  br label %274

274:                                              ; preds = %273, %59
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %48

277:                                              ; preds = %48
  store i32 0, i32* %3, align 4
  br label %278

278:                                              ; preds = %277, %246, %192
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @mlx4_get_active_ports(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__mlx4_register_vlan(%struct.TYPE_18__*, i32, i64, i32*) #1

declare dso_local i32 @mlx4_warn(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.TYPE_18__*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @__mlx4_register_mac(%struct.TYPE_18__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
