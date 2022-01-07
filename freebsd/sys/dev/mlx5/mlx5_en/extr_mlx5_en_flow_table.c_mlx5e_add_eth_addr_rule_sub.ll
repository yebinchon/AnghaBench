; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_add_eth_addr_rule_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_add_eth_addr_rule_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mlx5e_priv = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5e_eth_addr_info = type { i32, %struct.mlx5_flow_rule**, i32 }
%struct.mlx5_flow_rule = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MLX5E_TT_ANY = common dso_local global i64 0, align 8
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FS_ETH_FLOW_TAG = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4 = common dso_local global i64 0, align 8
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV6 = common dso_local global i64 0, align 8
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_UDP = common dso_local global i64 0, align 8
@MLX5E_TT_IPV6_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_TCP = common dso_local global i64 0, align 8
@MLX5E_TT_IPV6_TCP = common dso_local global i64 0, align 8
@IPPROTO_AH = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_IPSEC_AH = common dso_local global i64 0, align 8
@MLX5E_TT_IPV6_IPSEC_AH = common dso_local global i64 0, align 8
@IPPROTO_ESP = common dso_local global i32 0, align 4
@MLX5E_TT_IPV4_IPSEC_ESP = common dso_local global i64 0, align 8
@MLX5E_TT_IPV6_IPSEC_ESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_eth_addr_info*, i32, i32*, i32*)* @mlx5e_add_eth_addr_rule_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_add_eth_addr_rule_sub(%struct.mlx5e_priv* %0, %struct.mlx5e_eth_addr_info* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_eth_addr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5_flow_destination, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_flow_rule**, align 8
  %15 = alloca %struct.mlx5_flow_table*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_eth_addr_info* %1, %struct.mlx5e_eth_addr_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = bitcast %struct.mlx5_flow_destination* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  store i32 0, i32* %13, align 4
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %25, align 8
  store %struct.mlx5_flow_table* %26, %struct.mlx5_flow_table** %15, align 8
  %27 = load i32, i32* @fte_match_param, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 2), align 4
  %30 = call i32* @MLX5_ADDR_OF(i32 %27, i32* %28, i32 %29)
  store i32* %30, i32** %16, align 8
  %31 = load i32, i32* @fte_match_param, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 2), align 4
  %34 = call i32* @MLX5_ADDR_OF(i32 %31, i32* %32, i32 %33)
  store i32* %34, i32** %17, align 8
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %18, align 8
  store i32 0, i32* %20, align 4
  %38 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %39 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %58 [
    i32 129, label %41
    i32 130, label %51
    i32 128, label %57
  ]

41:                                               ; preds = %5
  %42 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memset(i32* %43, i32 255, i32 %44)
  %46 = load i32*, i32** %17, align 8
  %47 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %48 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ether_addr_copy(i32* %46, i32 %49)
  br label %59

51:                                               ; preds = %5
  %52 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 1, i32* %56, align 4
  br label %59

57:                                               ; preds = %5
  br label %59

58:                                               ; preds = %5
  br label %59

59:                                               ; preds = %58, %57, %51, %41
  %60 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @mlx5e_get_tt_vec(%struct.mlx5e_eth_addr_info* %60, i32 %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i64, i64* @MLX5E_TT_ANY, align 8
  %65 = call i32 @BIT(i64 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %59
  %69 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %69, i32 0, i32 1
  %71 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %70, align 8
  %72 = load i64, i64* @MLX5E_TT_ANY, align 8
  %73 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %71, i64 %72
  store %struct.mlx5_flow_rule** %73, %struct.mlx5_flow_rule*** %14, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = load i64, i64* @MLX5E_TT_ANY, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %84 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %85 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %79, i32 %80, i32* %81, i32* %82, i32 %83, i32 %84, %struct.mlx5_flow_destination* %12)
  %86 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %85, %struct.mlx5_flow_rule** %86, align 8
  %87 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %88 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %87, align 8
  %89 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  br label %549

92:                                               ; preds = %68
  %93 = load i64, i64* @MLX5E_TT_ANY, align 8
  %94 = call i32 @BIT(i64 %93)
  %95 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %96 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %59
  %100 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* @fte_match_param, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %104 = call i32 @MLX5_SET_TO_ONES(i32 %101, i32* %102, i32 %103)
  %105 = load i32, i32* %19, align 4
  %106 = load i64, i64* @MLX5E_TT_IPV4, align 8
  %107 = call i32 @BIT(i64 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %99
  %111 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %112 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %111, i32 0, i32 1
  %113 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %112, align 8
  %114 = load i64, i64* @MLX5E_TT_IPV4, align 8
  %115 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %113, i64 %114
  store %struct.mlx5_flow_rule** %115, %struct.mlx5_flow_rule*** %14, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = load i64, i64* @MLX5E_TT_IPV4, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @fte_match_param, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %124 = load i32, i32* @ETHERTYPE_IP, align 4
  %125 = call i32 @MLX5_SET(i32 %121, i32* %122, i32 %123, i32 %124)
  %126 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %131 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %132 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %126, i32 %127, i32* %128, i32* %129, i32 %130, i32 %131, %struct.mlx5_flow_destination* %12)
  %133 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %132, %struct.mlx5_flow_rule** %133, align 8
  %134 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %135 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %134, align 8
  %136 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %110
  br label %549

139:                                              ; preds = %110
  %140 = load i64, i64* @MLX5E_TT_IPV4, align 8
  %141 = call i32 @BIT(i64 %140)
  %142 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %143 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %139, %99
  %147 = load i32, i32* %19, align 4
  %148 = load i64, i64* @MLX5E_TT_IPV6, align 8
  %149 = call i32 @BIT(i64 %148)
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %188

152:                                              ; preds = %146
  %153 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %154 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %153, i32 0, i32 1
  %155 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %154, align 8
  %156 = load i64, i64* @MLX5E_TT_IPV6, align 8
  %157 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %155, i64 %156
  store %struct.mlx5_flow_rule** %157, %struct.mlx5_flow_rule*** %14, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = load i64, i64* @MLX5E_TT_IPV6, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* @fte_match_param, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %166 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %167 = call i32 @MLX5_SET(i32 %163, i32* %164, i32 %165, i32 %166)
  %168 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %173 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %174 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %168, i32 %169, i32* %170, i32* %171, i32 %172, i32 %173, %struct.mlx5_flow_destination* %12)
  %175 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %174, %struct.mlx5_flow_rule** %175, align 8
  %176 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %177 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %176, align 8
  %178 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %152
  br label %549

181:                                              ; preds = %152
  %182 = load i64, i64* @MLX5E_TT_IPV6, align 8
  %183 = call i32 @BIT(i64 %182)
  %184 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %185 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %146
  %189 = load i32, i32* @fte_match_param, align 4
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %192 = call i32 @MLX5_SET_TO_ONES(i32 %189, i32* %190, i32 %191)
  %193 = load i32, i32* @fte_match_param, align 4
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %196 = load i32, i32* @IPPROTO_UDP, align 4
  %197 = call i32 @MLX5_SET(i32 %193, i32* %194, i32 %195, i32 %196)
  %198 = load i32, i32* %19, align 4
  %199 = load i64, i64* @MLX5E_TT_IPV4_UDP, align 8
  %200 = call i32 @BIT(i64 %199)
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %239

203:                                              ; preds = %188
  %204 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %205 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %204, i32 0, i32 1
  %206 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %205, align 8
  %207 = load i64, i64* @MLX5E_TT_IPV4_UDP, align 8
  %208 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %206, i64 %207
  store %struct.mlx5_flow_rule** %208, %struct.mlx5_flow_rule*** %14, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = load i64, i64* @MLX5E_TT_IPV4_UDP, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* @fte_match_param, align 4
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %217 = load i32, i32* @ETHERTYPE_IP, align 4
  %218 = call i32 @MLX5_SET(i32 %214, i32* %215, i32 %216, i32 %217)
  %219 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %224 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %225 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %219, i32 %220, i32* %221, i32* %222, i32 %223, i32 %224, %struct.mlx5_flow_destination* %12)
  %226 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %225, %struct.mlx5_flow_rule** %226, align 8
  %227 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %228 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %227, align 8
  %229 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %203
  br label %549

232:                                              ; preds = %203
  %233 = load i64, i64* @MLX5E_TT_IPV4_UDP, align 8
  %234 = call i32 @BIT(i64 %233)
  %235 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %236 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %232, %188
  %240 = load i32, i32* %19, align 4
  %241 = load i64, i64* @MLX5E_TT_IPV6_UDP, align 8
  %242 = call i32 @BIT(i64 %241)
  %243 = and i32 %240, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %281

245:                                              ; preds = %239
  %246 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %247 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %246, i32 0, i32 1
  %248 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %247, align 8
  %249 = load i64, i64* @MLX5E_TT_IPV6_UDP, align 8
  %250 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %248, i64 %249
  store %struct.mlx5_flow_rule** %250, %struct.mlx5_flow_rule*** %14, align 8
  %251 = load i32*, i32** %18, align 8
  %252 = load i64, i64* @MLX5E_TT_IPV6_UDP, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %254, i32* %255, align 4
  %256 = load i32, i32* @fte_match_param, align 4
  %257 = load i32*, i32** %11, align 8
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %259 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %260 = call i32 @MLX5_SET(i32 %256, i32* %257, i32 %258, i32 %259)
  %261 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %262 = load i32, i32* %13, align 4
  %263 = load i32*, i32** %10, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %266 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %267 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %261, i32 %262, i32* %263, i32* %264, i32 %265, i32 %266, %struct.mlx5_flow_destination* %12)
  %268 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %267, %struct.mlx5_flow_rule** %268, align 8
  %269 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %270 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %269, align 8
  %271 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %245
  br label %549

274:                                              ; preds = %245
  %275 = load i64, i64* @MLX5E_TT_IPV6_UDP, align 8
  %276 = call i32 @BIT(i64 %275)
  %277 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %278 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %274, %239
  %282 = load i32, i32* @fte_match_param, align 4
  %283 = load i32*, i32** %11, align 8
  %284 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %285 = load i32, i32* @IPPROTO_TCP, align 4
  %286 = call i32 @MLX5_SET(i32 %282, i32* %283, i32 %284, i32 %285)
  %287 = load i32, i32* %19, align 4
  %288 = load i64, i64* @MLX5E_TT_IPV4_TCP, align 8
  %289 = call i32 @BIT(i64 %288)
  %290 = and i32 %287, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %328

292:                                              ; preds = %281
  %293 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %294 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %293, i32 0, i32 1
  %295 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %294, align 8
  %296 = load i64, i64* @MLX5E_TT_IPV4_TCP, align 8
  %297 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %295, i64 %296
  store %struct.mlx5_flow_rule** %297, %struct.mlx5_flow_rule*** %14, align 8
  %298 = load i32*, i32** %18, align 8
  %299 = load i64, i64* @MLX5E_TT_IPV4_TCP, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  %303 = load i32, i32* @fte_match_param, align 4
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %306 = load i32, i32* @ETHERTYPE_IP, align 4
  %307 = call i32 @MLX5_SET(i32 %303, i32* %304, i32 %305, i32 %306)
  %308 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %309 = load i32, i32* %13, align 4
  %310 = load i32*, i32** %10, align 8
  %311 = load i32*, i32** %11, align 8
  %312 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %313 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %314 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %308, i32 %309, i32* %310, i32* %311, i32 %312, i32 %313, %struct.mlx5_flow_destination* %12)
  %315 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %314, %struct.mlx5_flow_rule** %315, align 8
  %316 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %317 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %316, align 8
  %318 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %292
  br label %549

321:                                              ; preds = %292
  %322 = load i64, i64* @MLX5E_TT_IPV4_TCP, align 8
  %323 = call i32 @BIT(i64 %322)
  %324 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %325 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %321, %281
  %329 = load i32, i32* %19, align 4
  %330 = load i64, i64* @MLX5E_TT_IPV6_TCP, align 8
  %331 = call i32 @BIT(i64 %330)
  %332 = and i32 %329, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %370

334:                                              ; preds = %328
  %335 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %336 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %335, i32 0, i32 1
  %337 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %336, align 8
  %338 = load i64, i64* @MLX5E_TT_IPV6_TCP, align 8
  %339 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %337, i64 %338
  store %struct.mlx5_flow_rule** %339, %struct.mlx5_flow_rule*** %14, align 8
  %340 = load i32*, i32** %18, align 8
  %341 = load i64, i64* @MLX5E_TT_IPV6_TCP, align 8
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %343, i32* %344, align 4
  %345 = load i32, i32* @fte_match_param, align 4
  %346 = load i32*, i32** %11, align 8
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %348 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %349 = call i32 @MLX5_SET(i32 %345, i32* %346, i32 %347, i32 %348)
  %350 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %351 = load i32, i32* %13, align 4
  %352 = load i32*, i32** %10, align 8
  %353 = load i32*, i32** %11, align 8
  %354 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %355 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %356 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %350, i32 %351, i32* %352, i32* %353, i32 %354, i32 %355, %struct.mlx5_flow_destination* %12)
  %357 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %356, %struct.mlx5_flow_rule** %357, align 8
  %358 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %359 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %358, align 8
  %360 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %334
  br label %549

363:                                              ; preds = %334
  %364 = load i64, i64* @MLX5E_TT_IPV6_TCP, align 8
  %365 = call i32 @BIT(i64 %364)
  %366 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %367 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %363, %328
  %371 = load i32, i32* @fte_match_param, align 4
  %372 = load i32*, i32** %11, align 8
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %374 = load i32, i32* @IPPROTO_AH, align 4
  %375 = call i32 @MLX5_SET(i32 %371, i32* %372, i32 %373, i32 %374)
  %376 = load i32, i32* %19, align 4
  %377 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_AH, align 8
  %378 = call i32 @BIT(i64 %377)
  %379 = and i32 %376, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %417

381:                                              ; preds = %370
  %382 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %383 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %382, i32 0, i32 1
  %384 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %383, align 8
  %385 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_AH, align 8
  %386 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %384, i64 %385
  store %struct.mlx5_flow_rule** %386, %struct.mlx5_flow_rule*** %14, align 8
  %387 = load i32*, i32** %18, align 8
  %388 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_AH, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %390, i32* %391, align 4
  %392 = load i32, i32* @fte_match_param, align 4
  %393 = load i32*, i32** %11, align 8
  %394 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %395 = load i32, i32* @ETHERTYPE_IP, align 4
  %396 = call i32 @MLX5_SET(i32 %392, i32* %393, i32 %394, i32 %395)
  %397 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %398 = load i32, i32* %13, align 4
  %399 = load i32*, i32** %10, align 8
  %400 = load i32*, i32** %11, align 8
  %401 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %402 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %403 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %397, i32 %398, i32* %399, i32* %400, i32 %401, i32 %402, %struct.mlx5_flow_destination* %12)
  %404 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %403, %struct.mlx5_flow_rule** %404, align 8
  %405 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %406 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %405, align 8
  %407 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %381
  br label %549

410:                                              ; preds = %381
  %411 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_AH, align 8
  %412 = call i32 @BIT(i64 %411)
  %413 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %414 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %410, %370
  %418 = load i32, i32* %19, align 4
  %419 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_AH, align 8
  %420 = call i32 @BIT(i64 %419)
  %421 = and i32 %418, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %459

423:                                              ; preds = %417
  %424 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %425 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %424, i32 0, i32 1
  %426 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %425, align 8
  %427 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_AH, align 8
  %428 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %426, i64 %427
  store %struct.mlx5_flow_rule** %428, %struct.mlx5_flow_rule*** %14, align 8
  %429 = load i32*, i32** %18, align 8
  %430 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_AH, align 8
  %431 = getelementptr inbounds i32, i32* %429, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %432, i32* %433, align 4
  %434 = load i32, i32* @fte_match_param, align 4
  %435 = load i32*, i32** %11, align 8
  %436 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %437 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %438 = call i32 @MLX5_SET(i32 %434, i32* %435, i32 %436, i32 %437)
  %439 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %440 = load i32, i32* %13, align 4
  %441 = load i32*, i32** %10, align 8
  %442 = load i32*, i32** %11, align 8
  %443 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %444 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %445 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %439, i32 %440, i32* %441, i32* %442, i32 %443, i32 %444, %struct.mlx5_flow_destination* %12)
  %446 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %445, %struct.mlx5_flow_rule** %446, align 8
  %447 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %448 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %447, align 8
  %449 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %423
  br label %549

452:                                              ; preds = %423
  %453 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_AH, align 8
  %454 = call i32 @BIT(i64 %453)
  %455 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %456 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = or i32 %457, %454
  store i32 %458, i32* %456, align 8
  br label %459

459:                                              ; preds = %452, %417
  %460 = load i32, i32* @fte_match_param, align 4
  %461 = load i32*, i32** %11, align 8
  %462 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %463 = load i32, i32* @IPPROTO_ESP, align 4
  %464 = call i32 @MLX5_SET(i32 %460, i32* %461, i32 %462, i32 %463)
  %465 = load i32, i32* %19, align 4
  %466 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_ESP, align 8
  %467 = call i32 @BIT(i64 %466)
  %468 = and i32 %465, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %506

470:                                              ; preds = %459
  %471 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %472 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %471, i32 0, i32 1
  %473 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %472, align 8
  %474 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_ESP, align 8
  %475 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %473, i64 %474
  store %struct.mlx5_flow_rule** %475, %struct.mlx5_flow_rule*** %14, align 8
  %476 = load i32*, i32** %18, align 8
  %477 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_ESP, align 8
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %479, i32* %480, align 4
  %481 = load i32, i32* @fte_match_param, align 4
  %482 = load i32*, i32** %11, align 8
  %483 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %484 = load i32, i32* @ETHERTYPE_IP, align 4
  %485 = call i32 @MLX5_SET(i32 %481, i32* %482, i32 %483, i32 %484)
  %486 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %487 = load i32, i32* %13, align 4
  %488 = load i32*, i32** %10, align 8
  %489 = load i32*, i32** %11, align 8
  %490 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %491 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %492 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %486, i32 %487, i32* %488, i32* %489, i32 %490, i32 %491, %struct.mlx5_flow_destination* %12)
  %493 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %492, %struct.mlx5_flow_rule** %493, align 8
  %494 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %495 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %494, align 8
  %496 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %470
  br label %549

499:                                              ; preds = %470
  %500 = load i64, i64* @MLX5E_TT_IPV4_IPSEC_ESP, align 8
  %501 = call i32 @BIT(i64 %500)
  %502 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %503 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = or i32 %504, %501
  store i32 %505, i32* %503, align 8
  br label %506

506:                                              ; preds = %499, %459
  %507 = load i32, i32* %19, align 4
  %508 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_ESP, align 8
  %509 = call i32 @BIT(i64 %508)
  %510 = and i32 %507, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %548

512:                                              ; preds = %506
  %513 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %514 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %513, i32 0, i32 1
  %515 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %514, align 8
  %516 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_ESP, align 8
  %517 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %515, i64 %516
  store %struct.mlx5_flow_rule** %517, %struct.mlx5_flow_rule*** %14, align 8
  %518 = load i32*, i32** %18, align 8
  %519 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_ESP, align 8
  %520 = getelementptr inbounds i32, i32* %518, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %521, i32* %522, align 4
  %523 = load i32, i32* @fte_match_param, align 4
  %524 = load i32*, i32** %11, align 8
  %525 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %526 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %527 = call i32 @MLX5_SET(i32 %523, i32* %524, i32 %525, i32 %526)
  %528 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %529 = load i32, i32* %13, align 4
  %530 = load i32*, i32** %10, align 8
  %531 = load i32*, i32** %11, align 8
  %532 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %533 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %534 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %528, i32 %529, i32* %530, i32* %531, i32 %532, i32 %533, %struct.mlx5_flow_destination* %12)
  %535 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %534, %struct.mlx5_flow_rule** %535, align 8
  %536 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %537 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %536, align 8
  %538 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule* %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %512
  br label %549

541:                                              ; preds = %512
  %542 = load i64, i64* @MLX5E_TT_IPV6_IPSEC_ESP, align 8
  %543 = call i32 @BIT(i64 %542)
  %544 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %545 = getelementptr inbounds %struct.mlx5e_eth_addr_info, %struct.mlx5e_eth_addr_info* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = or i32 %546, %543
  store i32 %547, i32* %545, align 8
  br label %548

548:                                              ; preds = %541, %506
  store i32 0, i32* %6, align 4
  br label %558

549:                                              ; preds = %540, %498, %451, %409, %362, %320, %273, %231, %180, %138, %91
  %550 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %551 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %550, align 8
  %552 = call i32 @PTR_ERR(%struct.mlx5_flow_rule* %551)
  store i32 %552, i32* %20, align 4
  %553 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* null, %struct.mlx5_flow_rule** %553, align 8
  %554 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %555 = load %struct.mlx5e_eth_addr_info*, %struct.mlx5e_eth_addr_info** %8, align 8
  %556 = call i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv* %554, %struct.mlx5e_eth_addr_info* %555)
  %557 = load i32, i32* %20, align 4
  store i32 %557, i32* %6, align 4
  br label %558

558:                                              ; preds = %549, %548
  %559 = load i32, i32* %6, align 4
  ret i32 %559
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ether_addr_copy(i32*, i32) #2

declare dso_local i32 @mlx5e_get_tt_vec(%struct.mlx5e_eth_addr_info*, i32) #2

declare dso_local i32 @BIT(i64) #2

declare dso_local %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table*, i32, i32*, i32*, i32, i32, %struct.mlx5_flow_destination*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_flow_rule*) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32*, i32) #2

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_rule*) #2

declare dso_local i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv*, %struct.mlx5e_eth_addr_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
