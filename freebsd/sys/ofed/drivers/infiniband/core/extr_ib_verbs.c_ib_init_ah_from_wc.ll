; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_init_ah_from_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_init_ah_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_grh = type { i32 }
%struct.ib_ah_attr = type { %struct.TYPE_4__, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, %union.ib_gid }
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_gid_attr = type { i32* }
%union.rdma_network_hdr = type { i32 }

@RDMA_NETWORK_IB = common dso_local global i32 0, align 4
@IB_GID_TYPE_IB = common dso_local global i32 0, align 4
@IB_WC_WITH_NETWORK_HDR_TYPE = common dso_local global i32 0, align 4
@IB_WC_WITH_VLAN = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_SA_WELL_KNOWN_GUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_from_wc(%struct.ib_device* %0, i8* %1, %struct.ib_wc* %2, %struct.ib_grh* %3, %struct.ib_ah_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.ib_grh*, align 8
  %11 = alloca %struct.ib_ah_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.ib_gid, align 8
  %19 = alloca %union.ib_gid, align 8
  %20 = alloca %struct.ib_gid_attr, align 8
  %21 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store %struct.ib_grh* %3, %struct.ib_grh** %10, align 8
  store %struct.ib_ah_attr* %4, %struct.ib_ah_attr** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @RDMA_NETWORK_IB, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @IB_GID_TYPE_IB, align 4
  store i32 %23, i32* %16, align 4
  store i32 255, i32* %17, align 4
  %24 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %25 = call i32 @memset(%struct.ib_ah_attr* %24, i32 0, i32 64)
  %26 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @rdma_cap_eth_ah(%struct.ib_device* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %5
  %31 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IB_WC_WITH_NETWORK_HDR_TYPE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %45 = call i32 @ib_get_net_type_by_grh(%struct.ib_device* %42, i8* %43, %struct.ib_grh* %44)
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @ib_network_to_gid_type(i32 %47)
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %46, %5
  %50 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %51 = bitcast %struct.ib_grh* %50 to %union.rdma_network_hdr*
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @get_gids_from_rdma_hdr(%union.rdma_network_hdr* %51, i32 %52, %union.ib_gid* %19, %union.ib_gid* %18)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %210

58:                                               ; preds = %49
  %59 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @rdma_protocol_roce(%struct.ib_device* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %127

63:                                               ; preds = %58
  %64 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IB_WC_WITH_VLAN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 65535, %74 ]
  store i32 %76, i32* %21, align 4
  %77 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IB_WC_GRH, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @EPROTOTYPE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %210

86:                                               ; preds = %75
  %87 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @get_sgid_index_from_eth(%struct.ib_device* %87, i8* %88, i32 %89, %union.ib_gid* %18, i32 %90, i32* %13)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %210

96:                                               ; preds = %86
  %97 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ib_get_cached_gid(%struct.ib_device* %97, i8* %98, i32 %99, %union.ib_gid* %18, %struct.ib_gid_attr* %20)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %6, align 4
  br label %210

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %20, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %210

112:                                              ; preds = %105
  %113 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %114 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %20, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @rdma_addr_find_l2_eth_by_grh(%union.ib_gid* %18, %union.ib_gid* %19, i32 %115, i32* %117, i32* %17)
  store i32 %118, i32* %14, align 4
  %119 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %20, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @dev_put(i32* %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %6, align 4
  br label %210

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126, %58
  %128 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %129 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %132 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %134 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %137 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %139 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %142 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %145 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %147 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IB_WC_GRH, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %127
  %153 = load i32, i32* @IB_AH_GRH, align 4
  %154 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %155 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %157 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = bitcast %union.ib_gid* %158 to i8*
  %160 = bitcast %union.ib_gid* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 8, i1 false)
  %161 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call i64 @rdma_cap_eth_ah(%struct.ib_device* %161, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %183, label %165

165:                                              ; preds = %152
  %166 = bitcast %union.ib_gid* %18 to %struct.TYPE_3__*
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @IB_SA_WELL_KNOWN_GUID, align 4
  %170 = call i64 @cpu_to_be64(i32 %169)
  %171 = icmp ne i64 %168, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %174 = load i32, i32* @IB_GID_TYPE_IB, align 4
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @ib_find_cached_gid_by_port(%struct.ib_device* %173, %union.ib_gid* %18, i32 %174, i8* %175, i32* null, i32* %13)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %6, align 4
  br label %210

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %165
  br label %183

183:                                              ; preds = %182, %152
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %188 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  store i8* %186, i8** %189, align 8
  %190 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %191 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @be32_to_cpu(i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = and i32 %194, 1048575
  %196 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %197 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  %199 = load i32, i32* %17, align 4
  %200 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %201 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* %12, align 4
  %204 = ashr i32 %203, 20
  %205 = and i32 %204, 255
  %206 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %207 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 8
  br label %209

209:                                              ; preds = %183, %127
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %209, %179, %124, %109, %103, %94, %83, %56
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i64 @rdma_cap_eth_ah(%struct.ib_device*, i8*) #1

declare dso_local i32 @ib_get_net_type_by_grh(%struct.ib_device*, i8*, %struct.ib_grh*) #1

declare dso_local i32 @ib_network_to_gid_type(i32) #1

declare dso_local i32 @get_gids_from_rdma_hdr(%union.rdma_network_hdr*, i32, %union.ib_gid*, %union.ib_gid*) #1

declare dso_local i64 @rdma_protocol_roce(%struct.ib_device*, i8*) #1

declare dso_local i32 @get_sgid_index_from_eth(%struct.ib_device*, i8*, i32, %union.ib_gid*, i32, i32*) #1

declare dso_local i32 @ib_get_cached_gid(%struct.ib_device*, i8*, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_addr_find_l2_eth_by_grh(%union.ib_gid*, %union.ib_gid*, i32, i32*, i32*) #1

declare dso_local i32 @dev_put(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @ib_find_cached_gid_by_port(%struct.ib_device*, %union.ib_gid*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
