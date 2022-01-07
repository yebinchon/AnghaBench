; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_parse_flow_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_parse_flow_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_22__, %struct.TYPE_30__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%union.ib_flow_spec = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_21__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_21__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_21__ }
%struct.TYPE_26__ = type { i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@LAST_ETH_FIELD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@smac_47_16 = common dso_local global i32 0, align 4
@cvlan_tag = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@LAST_IPV4_FIELD = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@LAST_IPV6_FIELD = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@outer_ipv6_flow_label = common dso_local global i32 0, align 4
@LAST_TCP_UDP_FIELD = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@tcp_sport = common dso_local global i32 0, align 4
@tcp_dport = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@udp_sport = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %union.ib_flow_spec*)* @parse_flow_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flow_attr(i8* %0, i8* %1, %union.ib_flow_spec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.ib_flow_spec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %union.ib_flow_spec* %2, %union.ib_flow_spec** %7, align 8
  %17 = load i32, i32* @fte_match_param, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @outer_headers, align 4
  %20 = call i8* @MLX5_ADDR_OF(i32 %17, i8* %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* @fte_match_param, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @outer_headers, align 4
  %24 = call i8* @MLX5_ADDR_OF(i32 %21, i8* %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* @fte_match_param, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @misc_parameters, align 4
  %28 = call i8* @MLX5_ADDR_OF(i32 %25, i8* %26, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* @fte_match_param, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @misc_parameters, align 4
  %32 = call i8* @MLX5_ADDR_OF(i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %34 = bitcast %union.ib_flow_spec* %33 to i32*
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %501 [
    i32 132, label %36
    i32 131, label %189
    i32 130, label %273
    i32 129, label %377
    i32 128, label %439
  ]

36:                                               ; preds = %3
  %37 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %38 = bitcast %union.ib_flow_spec* %37 to %struct.TYPE_29__*
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i32, i32* @LAST_ETH_FIELD, align 4
  %41 = bitcast %struct.TYPE_21__* %12 to i8*
  %42 = bitcast %struct.TYPE_21__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 4 %42, i64 52, i1 false)
  %43 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %12, i32 %40)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @ENOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %505

48:                                               ; preds = %36
  %49 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @dmac_47_16, align 4
  %52 = call i8* @MLX5_ADDR_OF(i32 %49, i8* %50, i32 %51)
  %53 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %54 = bitcast %union.ib_flow_spec* %53 to %struct.TYPE_29__*
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ether_addr_copy(i8* %52, i32 %57)
  %59 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @dmac_47_16, align 4
  %62 = call i8* @MLX5_ADDR_OF(i32 %59, i8* %60, i32 %61)
  %63 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %64 = bitcast %union.ib_flow_spec* %63 to %struct.TYPE_29__*
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ether_addr_copy(i8* %62, i32 %67)
  %69 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @smac_47_16, align 4
  %72 = call i8* @MLX5_ADDR_OF(i32 %69, i8* %70, i32 %71)
  %73 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %74 = bitcast %union.ib_flow_spec* %73 to %struct.TYPE_29__*
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ether_addr_copy(i8* %72, i32 %77)
  %79 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* @smac_47_16, align 4
  %82 = call i8* @MLX5_ADDR_OF(i32 %79, i8* %80, i32 %81)
  %83 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %84 = bitcast %union.ib_flow_spec* %83 to %struct.TYPE_29__*
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ether_addr_copy(i8* %82, i32 %87)
  %89 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %90 = bitcast %union.ib_flow_spec* %89 to %struct.TYPE_29__*
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %168

95:                                               ; preds = %48
  %96 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @cvlan_tag, align 4
  %99 = call i32 @MLX5_SET(i32 %96, i8* %97, i32 %98, i32 1)
  %100 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* @cvlan_tag, align 4
  %103 = call i32 @MLX5_SET(i32 %100, i8* %101, i32 %102, i32 1)
  %104 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* @first_vid, align 4
  %107 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %108 = bitcast %union.ib_flow_spec* %107 to %struct.TYPE_29__*
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ntohs(i32 %111)
  %113 = call i32 @MLX5_SET(i32 %104, i8* %105, i32 %106, i32 %112)
  %114 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* @first_vid, align 4
  %117 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %118 = bitcast %union.ib_flow_spec* %117 to %struct.TYPE_29__*
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ntohs(i32 %121)
  %123 = call i32 @MLX5_SET(i32 %114, i8* %115, i32 %116, i32 %122)
  %124 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* @first_cfi, align 4
  %127 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %128 = bitcast %union.ib_flow_spec* %127 to %struct.TYPE_29__*
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntohs(i32 %131)
  %133 = ashr i32 %132, 12
  %134 = call i32 @MLX5_SET(i32 %124, i8* %125, i32 %126, i32 %133)
  %135 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* @first_cfi, align 4
  %138 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %139 = bitcast %union.ib_flow_spec* %138 to %struct.TYPE_29__*
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ntohs(i32 %142)
  %144 = ashr i32 %143, 12
  %145 = call i32 @MLX5_SET(i32 %135, i8* %136, i32 %137, i32 %144)
  %146 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* @first_prio, align 4
  %149 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %150 = bitcast %union.ib_flow_spec* %149 to %struct.TYPE_29__*
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ntohs(i32 %153)
  %155 = ashr i32 %154, 13
  %156 = call i32 @MLX5_SET(i32 %146, i8* %147, i32 %148, i32 %155)
  %157 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* @first_prio, align 4
  %160 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %161 = bitcast %union.ib_flow_spec* %160 to %struct.TYPE_29__*
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ntohs(i32 %164)
  %166 = ashr i32 %165, 13
  %167 = call i32 @MLX5_SET(i32 %157, i8* %158, i32 %159, i32 %166)
  br label %168

168:                                              ; preds = %95, %48
  %169 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* @ethertype, align 4
  %172 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %173 = bitcast %union.ib_flow_spec* %172 to %struct.TYPE_29__*
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ntohs(i32 %176)
  %178 = call i32 @MLX5_SET(i32 %169, i8* %170, i32 %171, i32 %177)
  %179 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* @ethertype, align 4
  %182 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %183 = bitcast %union.ib_flow_spec* %182 to %struct.TYPE_29__*
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ntohs(i32 %186)
  %188 = call i32 @MLX5_SET(i32 %179, i8* %180, i32 %181, i32 %187)
  br label %504

189:                                              ; preds = %3
  %190 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %191 = bitcast %union.ib_flow_spec* %190 to %struct.TYPE_18__*
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i32, i32* @LAST_IPV4_FIELD, align 4
  %194 = bitcast %struct.TYPE_21__* %13 to i8*
  %195 = bitcast %struct.TYPE_21__* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 4 %195, i64 52, i1 false)
  %196 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %13, i32 %193)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %189
  %199 = load i32, i32* @ENOTSUPP, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %505

201:                                              ; preds = %189
  %202 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = load i32, i32* @ethertype, align 4
  %205 = call i32 @MLX5_SET(i32 %202, i8* %203, i32 %204, i32 65535)
  %206 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %207 = load i8*, i8** %9, align 8
  %208 = load i32, i32* @ethertype, align 4
  %209 = load i32, i32* @ETH_P_IP, align 4
  %210 = call i32 @MLX5_SET(i32 %206, i8* %207, i32 %208, i32 %209)
  %211 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %214 = call i8* @MLX5_ADDR_OF(i32 %211, i8* %212, i32 %213)
  %215 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %216 = bitcast %union.ib_flow_spec* %215 to %struct.TYPE_18__*
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 6
  %219 = call i32 @memcpy(i8* %214, i32* %218, i32 4)
  %220 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %221 = load i8*, i8** %9, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %223 = call i8* @MLX5_ADDR_OF(i32 %220, i8* %221, i32 %222)
  %224 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %225 = bitcast %union.ib_flow_spec* %224 to %struct.TYPE_18__*
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  %228 = call i32 @memcpy(i8* %223, i32* %227, i32 4)
  %229 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %230 = load i8*, i8** %8, align 8
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %232 = call i8* @MLX5_ADDR_OF(i32 %229, i8* %230, i32 %231)
  %233 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %234 = bitcast %union.ib_flow_spec* %233 to %struct.TYPE_18__*
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 5
  %237 = call i32 @memcpy(i8* %232, i32* %236, i32 4)
  %238 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %239 = load i8*, i8** %9, align 8
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %241 = call i8* @MLX5_ADDR_OF(i32 %238, i8* %239, i32 %240)
  %242 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %243 = bitcast %union.ib_flow_spec* %242 to %struct.TYPE_18__*
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 2
  %246 = call i32 @memcpy(i8* %241, i32* %245, i32 4)
  %247 = load i8*, i8** %8, align 8
  %248 = load i8*, i8** %9, align 8
  %249 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %250 = bitcast %union.ib_flow_spec* %249 to %struct.TYPE_18__*
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %255 = bitcast %union.ib_flow_spec* %254 to %struct.TYPE_18__*
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @set_tos(i8* %247, i8* %248, i32 %253, i32 %258)
  %260 = load i8*, i8** %8, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %263 = bitcast %union.ib_flow_spec* %262 to %struct.TYPE_18__*
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %268 = bitcast %union.ib_flow_spec* %267 to %struct.TYPE_18__*
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @set_proto(i8* %260, i8* %261, i32 %266, i32 %271)
  br label %504

273:                                              ; preds = %3
  %274 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %275 = bitcast %union.ib_flow_spec* %274 to %struct.TYPE_25__*
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 1
  %277 = load i32, i32* @LAST_IPV6_FIELD, align 4
  %278 = bitcast %struct.TYPE_21__* %14 to i8*
  %279 = bitcast %struct.TYPE_21__* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 4 %279, i64 52, i1 false)
  %280 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %14, i32 %277)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %273
  %283 = load i32, i32* @ENOTSUPP, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %4, align 4
  br label %505

285:                                              ; preds = %273
  %286 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %287 = load i8*, i8** %8, align 8
  %288 = load i32, i32* @ethertype, align 4
  %289 = call i32 @MLX5_SET(i32 %286, i8* %287, i32 %288, i32 65535)
  %290 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %291 = load i8*, i8** %9, align 8
  %292 = load i32, i32* @ethertype, align 4
  %293 = load i32, i32* @IPPROTO_IPV6, align 4
  %294 = call i32 @MLX5_SET(i32 %290, i8* %291, i32 %292, i32 %293)
  %295 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %296 = load i8*, i8** %8, align 8
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %298 = call i8* @MLX5_ADDR_OF(i32 %295, i8* %296, i32 %297)
  %299 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %300 = bitcast %union.ib_flow_spec* %299 to %struct.TYPE_25__*
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 6
  %303 = call i32 @memcpy(i8* %298, i32* %302, i32 4)
  %304 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %305 = load i8*, i8** %9, align 8
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %307 = call i8* @MLX5_ADDR_OF(i32 %304, i8* %305, i32 %306)
  %308 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %309 = bitcast %union.ib_flow_spec* %308 to %struct.TYPE_25__*
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 4
  %312 = call i32 @memcpy(i8* %307, i32* %311, i32 4)
  %313 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %314 = load i8*, i8** %8, align 8
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %316 = call i8* @MLX5_ADDR_OF(i32 %313, i8* %314, i32 %315)
  %317 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %318 = bitcast %union.ib_flow_spec* %317 to %struct.TYPE_25__*
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 5
  %321 = call i32 @memcpy(i8* %316, i32* %320, i32 4)
  %322 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %323 = load i8*, i8** %9, align 8
  %324 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %325 = call i8* @MLX5_ADDR_OF(i32 %322, i8* %323, i32 %324)
  %326 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %327 = bitcast %union.ib_flow_spec* %326 to %struct.TYPE_25__*
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 3
  %330 = call i32 @memcpy(i8* %325, i32* %329, i32 4)
  %331 = load i8*, i8** %8, align 8
  %332 = load i8*, i8** %9, align 8
  %333 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %334 = bitcast %union.ib_flow_spec* %333 to %struct.TYPE_25__*
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %339 = bitcast %union.ib_flow_spec* %338 to %struct.TYPE_25__*
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @set_tos(i8* %331, i8* %332, i32 %337, i32 %342)
  %344 = load i8*, i8** %8, align 8
  %345 = load i8*, i8** %9, align 8
  %346 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %347 = bitcast %union.ib_flow_spec* %346 to %struct.TYPE_25__*
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %352 = bitcast %union.ib_flow_spec* %351 to %struct.TYPE_25__*
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @set_proto(i8* %344, i8* %345, i32 %350, i32 %355)
  %357 = load i32, i32* @fte_match_set_misc, align 4
  %358 = load i8*, i8** %10, align 8
  %359 = load i32, i32* @outer_ipv6_flow_label, align 4
  %360 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %361 = bitcast %union.ib_flow_spec* %360 to %struct.TYPE_25__*
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @ntohl(i32 %364)
  %366 = call i32 @MLX5_SET(i32 %357, i8* %358, i32 %359, i32 %365)
  %367 = load i32, i32* @fte_match_set_misc, align 4
  %368 = load i8*, i8** %11, align 8
  %369 = load i32, i32* @outer_ipv6_flow_label, align 4
  %370 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %371 = bitcast %union.ib_flow_spec* %370 to %struct.TYPE_25__*
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @ntohl(i32 %374)
  %376 = call i32 @MLX5_SET(i32 %367, i8* %368, i32 %369, i32 %375)
  br label %504

377:                                              ; preds = %3
  %378 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %379 = bitcast %union.ib_flow_spec* %378 to %struct.TYPE_27__*
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %379, i32 0, i32 1
  %381 = load i32, i32* @LAST_TCP_UDP_FIELD, align 4
  %382 = bitcast %struct.TYPE_21__* %15 to i8*
  %383 = bitcast %struct.TYPE_21__* %380 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %382, i8* align 4 %383, i64 52, i1 false)
  %384 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %15, i32 %381)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %377
  %387 = load i32, i32* @ENOTSUPP, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %4, align 4
  br label %505

389:                                              ; preds = %377
  %390 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %391 = load i8*, i8** %8, align 8
  %392 = load i32, i32* @ip_protocol, align 4
  %393 = call i32 @MLX5_SET(i32 %390, i8* %391, i32 %392, i32 255)
  %394 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %395 = load i8*, i8** %9, align 8
  %396 = load i32, i32* @ip_protocol, align 4
  %397 = load i32, i32* @IPPROTO_TCP, align 4
  %398 = call i32 @MLX5_SET(i32 %394, i8* %395, i32 %396, i32 %397)
  %399 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %400 = load i8*, i8** %8, align 8
  %401 = load i32, i32* @tcp_sport, align 4
  %402 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %403 = bitcast %union.ib_flow_spec* %402 to %struct.TYPE_27__*
  %404 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @ntohs(i32 %406)
  %408 = call i32 @MLX5_SET(i32 %399, i8* %400, i32 %401, i32 %407)
  %409 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %410 = load i8*, i8** %9, align 8
  %411 = load i32, i32* @tcp_sport, align 4
  %412 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %413 = bitcast %union.ib_flow_spec* %412 to %struct.TYPE_27__*
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @ntohs(i32 %416)
  %418 = call i32 @MLX5_SET(i32 %409, i8* %410, i32 %411, i32 %417)
  %419 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %420 = load i8*, i8** %8, align 8
  %421 = load i32, i32* @tcp_dport, align 4
  %422 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %423 = bitcast %union.ib_flow_spec* %422 to %struct.TYPE_27__*
  %424 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @ntohs(i32 %426)
  %428 = call i32 @MLX5_SET(i32 %419, i8* %420, i32 %421, i32 %427)
  %429 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %430 = load i8*, i8** %9, align 8
  %431 = load i32, i32* @tcp_dport, align 4
  %432 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %433 = bitcast %union.ib_flow_spec* %432 to %struct.TYPE_27__*
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @ntohs(i32 %436)
  %438 = call i32 @MLX5_SET(i32 %429, i8* %430, i32 %431, i32 %437)
  br label %504

439:                                              ; preds = %3
  %440 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %441 = bitcast %union.ib_flow_spec* %440 to %struct.TYPE_27__*
  %442 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %441, i32 0, i32 1
  %443 = load i32, i32* @LAST_TCP_UDP_FIELD, align 4
  %444 = bitcast %struct.TYPE_21__* %16 to i8*
  %445 = bitcast %struct.TYPE_21__* %442 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %444, i8* align 4 %445, i64 52, i1 false)
  %446 = call i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %16, i32 %443)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %439
  %449 = load i32, i32* @ENOTSUPP, align 4
  %450 = sub nsw i32 0, %449
  store i32 %450, i32* %4, align 4
  br label %505

451:                                              ; preds = %439
  %452 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %453 = load i8*, i8** %8, align 8
  %454 = load i32, i32* @ip_protocol, align 4
  %455 = call i32 @MLX5_SET(i32 %452, i8* %453, i32 %454, i32 255)
  %456 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %457 = load i8*, i8** %9, align 8
  %458 = load i32, i32* @ip_protocol, align 4
  %459 = load i32, i32* @IPPROTO_UDP, align 4
  %460 = call i32 @MLX5_SET(i32 %456, i8* %457, i32 %458, i32 %459)
  %461 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %462 = load i8*, i8** %8, align 8
  %463 = load i32, i32* @udp_sport, align 4
  %464 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %465 = bitcast %union.ib_flow_spec* %464 to %struct.TYPE_27__*
  %466 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @ntohs(i32 %468)
  %470 = call i32 @MLX5_SET(i32 %461, i8* %462, i32 %463, i32 %469)
  %471 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %472 = load i8*, i8** %9, align 8
  %473 = load i32, i32* @udp_sport, align 4
  %474 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %475 = bitcast %union.ib_flow_spec* %474 to %struct.TYPE_27__*
  %476 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @ntohs(i32 %478)
  %480 = call i32 @MLX5_SET(i32 %471, i8* %472, i32 %473, i32 %479)
  %481 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %482 = load i8*, i8** %8, align 8
  %483 = load i32, i32* @udp_dport, align 4
  %484 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %485 = bitcast %union.ib_flow_spec* %484 to %struct.TYPE_27__*
  %486 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @ntohs(i32 %488)
  %490 = call i32 @MLX5_SET(i32 %481, i8* %482, i32 %483, i32 %489)
  %491 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %492 = load i8*, i8** %9, align 8
  %493 = load i32, i32* @udp_dport, align 4
  %494 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %495 = bitcast %union.ib_flow_spec* %494 to %struct.TYPE_27__*
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @ntohs(i32 %498)
  %500 = call i32 @MLX5_SET(i32 %491, i8* %492, i32 %493, i32 %499)
  br label %504

501:                                              ; preds = %3
  %502 = load i32, i32* @EINVAL, align 4
  %503 = sub nsw i32 0, %502
  store i32 %503, i32* %4, align 4
  br label %505

504:                                              ; preds = %451, %389, %285, %201, %168
  store i32 0, i32* %4, align 4
  br label %505

505:                                              ; preds = %504, %501, %448, %386, %282, %198, %45
  %506 = load i32, i32* %4, align 4
  ret i32 %506
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @FIELDS_NOT_SUPPORTED(%struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @set_tos(i8*, i8*, i32, i32) #1

declare dso_local i32 @set_proto(i8*, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
