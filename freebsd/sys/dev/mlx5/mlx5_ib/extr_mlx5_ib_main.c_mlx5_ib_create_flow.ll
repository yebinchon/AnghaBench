; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_create_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow = type { i32 }
%struct.ib_qp = type { i32 }
%struct.ib_flow_attr = type { i64, i64, i32, i64 }
%struct.mlx5_ib_dev = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_ib_qp = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_flow_handler = type { %struct.ib_flow, i32, i32 }
%struct.mlx5_flow_destination = type { %struct.ib_flow, i32, i32 }
%struct.mlx5_ib_flow_prio = type { %struct.ib_flow, i32, i32 }

@MLX5_IB_FLOW_LAST_PRIO = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@IB_FLOW_DOMAIN_USER = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_FLAGS_DONT_TRAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_IB_FT_RX = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_SNIFFER = common dso_local global i64 0, align 8
@MLX5_IB_FT_TX = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@MLX5_IB_QP_RSS = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_NORMAL = common dso_local global i64 0, align 8
@IB_FLOW_ATTR_ALL_DEFAULT = common dso_local global i64 0, align 8
@IB_FLOW_ATTR_MC_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)* @mlx5_ib_create_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_flow* @mlx5_ib_create_flow(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_flow*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_flow_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_ib_qp*, align 8
  %10 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %11 = alloca %struct.mlx5_flow_destination*, align 8
  %12 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %13 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %8, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %20 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %19)
  store %struct.mlx5_ib_qp* %20, %struct.mlx5_ib_qp** %9, align 8
  store %struct.mlx5_ib_flow_handler* null, %struct.mlx5_ib_flow_handler** %10, align 8
  store %struct.mlx5_flow_destination* null, %struct.mlx5_flow_destination** %11, align 8
  store %struct.mlx5_ib_flow_prio* null, %struct.mlx5_ib_flow_prio** %12, align 8
  %21 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX5_IB_FLOW_LAST_PRIO, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_flow* @ERR_PTR(i32 %28)
  store %struct.ib_flow* %29, %struct.ib_flow** %4, align 8
  br label %236

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IB_FLOW_DOMAIN_USER, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @num_ports, align 4
  %42 = call i64 @MLX5_CAP_GEN(i32 %40, i32 %41)
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44, %34, %30
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.ib_flow* @ERR_PTR(i32 %54)
  store %struct.ib_flow* %55, %struct.ib_flow** %4, align 8
  br label %236

56:                                               ; preds = %44
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.mlx5_ib_flow_prio* @kzalloc(i32 12, i32 %57)
  %59 = bitcast %struct.mlx5_ib_flow_prio* %58 to %struct.mlx5_flow_destination*
  store %struct.mlx5_flow_destination* %59, %struct.mlx5_flow_destination** %11, align 8
  %60 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %61 = icmp ne %struct.mlx5_flow_destination* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.ib_flow* @ERR_PTR(i32 %64)
  store %struct.ib_flow* %65, %struct.ib_flow** %4, align 8
  br label %236

66:                                               ; preds = %56
  %67 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %72 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %73 = load i32, i32* @MLX5_IB_FT_RX, align 4
  %74 = call %struct.mlx5_ib_flow_prio* @get_flow_table(%struct.mlx5_ib_dev* %71, %struct.ib_flow_attr* %72, i32 %73)
  store %struct.mlx5_ib_flow_prio* %74, %struct.mlx5_ib_flow_prio** %13, align 8
  %75 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %76 = call i64 @IS_ERR(%struct.mlx5_ib_flow_prio* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %80 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_prio* %79)
  store i32 %80, i32* %14, align 4
  br label %223

81:                                               ; preds = %66
  %82 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IB_FLOW_ATTR_SNIFFER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %89 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %90 = load i32, i32* @MLX5_IB_FT_TX, align 4
  %91 = call %struct.mlx5_ib_flow_prio* @get_flow_table(%struct.mlx5_ib_dev* %88, %struct.ib_flow_attr* %89, i32 %90)
  store %struct.mlx5_ib_flow_prio* %91, %struct.mlx5_ib_flow_prio** %12, align 8
  %92 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %12, align 8
  %93 = call i64 @IS_ERR(%struct.mlx5_ib_flow_prio* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %12, align 8
  %97 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_prio* %96)
  store i32 %97, i32* %14, align 4
  store %struct.mlx5_ib_flow_prio* null, %struct.mlx5_ib_flow_prio** %12, align 8
  br label %212

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %81
  %100 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %101 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %102 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MLX5_IB_QP_RSS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %99
  %110 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %111 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %115 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %124

116:                                              ; preds = %99
  %117 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %118 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %123 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %109
  %125 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IB_FLOW_ATTR_NORMAL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %124
  %131 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %139 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %140 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %141 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %142 = bitcast %struct.mlx5_flow_destination* %141 to %struct.mlx5_ib_flow_prio*
  %143 = call %struct.mlx5_ib_flow_prio* @create_dont_trap_rule(%struct.mlx5_ib_dev* %138, %struct.mlx5_ib_flow_prio* %139, %struct.ib_flow_attr* %140, %struct.mlx5_ib_flow_prio* %142)
  %144 = bitcast %struct.mlx5_ib_flow_prio* %143 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %144, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %153

145:                                              ; preds = %130
  %146 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %147 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %148 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %149 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %150 = bitcast %struct.mlx5_flow_destination* %149 to %struct.mlx5_ib_flow_prio*
  %151 = call %struct.mlx5_ib_flow_prio* @create_flow_rule(%struct.mlx5_ib_dev* %146, %struct.mlx5_ib_flow_prio* %147, %struct.ib_flow_attr* %148, %struct.mlx5_ib_flow_prio* %150)
  %152 = bitcast %struct.mlx5_ib_flow_prio* %151 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %152, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %153

153:                                              ; preds = %145, %137
  br label %193

154:                                              ; preds = %124
  %155 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IB_FLOW_ATTR_ALL_DEFAULT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %162 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IB_FLOW_ATTR_MC_DEFAULT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160, %154
  %167 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %168 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %169 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %170 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %171 = bitcast %struct.mlx5_flow_destination* %170 to %struct.mlx5_ib_flow_prio*
  %172 = call %struct.mlx5_ib_flow_prio* @create_leftovers_rule(%struct.mlx5_ib_dev* %167, %struct.mlx5_ib_flow_prio* %168, %struct.ib_flow_attr* %169, %struct.mlx5_ib_flow_prio* %171)
  %173 = bitcast %struct.mlx5_ib_flow_prio* %172 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %173, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %192

174:                                              ; preds = %160
  %175 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %176 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IB_FLOW_ATTR_SNIFFER, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %182 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %183 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %12, align 8
  %184 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %185 = bitcast %struct.mlx5_flow_destination* %184 to %struct.mlx5_ib_flow_prio*
  %186 = call %struct.mlx5_ib_flow_prio* @create_sniffer_rule(%struct.mlx5_ib_dev* %181, %struct.mlx5_ib_flow_prio* %182, %struct.mlx5_ib_flow_prio* %183, %struct.mlx5_ib_flow_prio* %185)
  %187 = bitcast %struct.mlx5_ib_flow_prio* %186 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %187, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %191

188:                                              ; preds = %174
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %14, align 4
  br label %212

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191, %166
  br label %193

193:                                              ; preds = %192, %153
  %194 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %195 = bitcast %struct.mlx5_ib_flow_handler* %194 to %struct.mlx5_ib_flow_prio*
  %196 = call i64 @IS_ERR(%struct.mlx5_ib_flow_prio* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %200 = bitcast %struct.mlx5_ib_flow_handler* %199 to %struct.mlx5_ib_flow_prio*
  %201 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_prio* %200)
  store i32 %201, i32* %14, align 4
  store %struct.mlx5_ib_flow_handler* null, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %212

202:                                              ; preds = %193
  %203 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %204 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %208 = bitcast %struct.mlx5_flow_destination* %207 to %struct.mlx5_ib_flow_prio*
  %209 = call i32 @kfree(%struct.mlx5_ib_flow_prio* %208)
  %210 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %211 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %210, i32 0, i32 0
  store %struct.ib_flow* %211, %struct.ib_flow** %4, align 8
  br label %236

212:                                              ; preds = %198, %188, %95
  %213 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %214 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %13, align 8
  %215 = call i32 @put_flow_table(%struct.mlx5_ib_dev* %213, %struct.mlx5_ib_flow_prio* %214, i32 0)
  %216 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %12, align 8
  %217 = icmp ne %struct.mlx5_ib_flow_prio* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %220 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %12, align 8
  %221 = call i32 @put_flow_table(%struct.mlx5_ib_dev* %219, %struct.mlx5_ib_flow_prio* %220, i32 0)
  br label %222

222:                                              ; preds = %218, %212
  br label %223

223:                                              ; preds = %222, %78
  %224 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %225 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = call i32 @mutex_unlock(i32* %226)
  %228 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %229 = bitcast %struct.mlx5_flow_destination* %228 to %struct.mlx5_ib_flow_prio*
  %230 = call i32 @kfree(%struct.mlx5_ib_flow_prio* %229)
  %231 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %232 = bitcast %struct.mlx5_ib_flow_handler* %231 to %struct.mlx5_ib_flow_prio*
  %233 = call i32 @kfree(%struct.mlx5_ib_flow_prio* %232)
  %234 = load i32, i32* %14, align 4
  %235 = call %struct.ib_flow* @ERR_PTR(i32 %234)
  store %struct.ib_flow* %235, %struct.ib_flow** %4, align 8
  br label %236

236:                                              ; preds = %223, %202, %62, %52, %26
  %237 = load %struct.ib_flow*, %struct.ib_flow** %4, align 8
  ret %struct.ib_flow* %237
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.ib_flow* @ERR_PTR(i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.mlx5_ib_flow_prio* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @get_flow_table(%struct.mlx5_ib_dev*, %struct.ib_flow_attr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_flow_prio*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_ib_flow_prio*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @create_dont_trap_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_ib_flow_prio*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @create_flow_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_ib_flow_prio*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @create_leftovers_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_ib_flow_prio*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @create_sniffer_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_prio*) #1

declare dso_local i32 @put_flow_table(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
