; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_iboe_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_iboe_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.rdma_route, i32, i32 }
%struct.rdma_route = type { i32, %struct.cma_work*, %struct.rdma_addr }
%struct.cma_work = type { i64, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.rdma_id_private* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.rdma_addr = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.sockaddr = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_work_handler = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i64 0, align 8
@IB_SA_EQ = common dso_local global i8* null, align 8
@CMA_IBOE_PACKET_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_iboe_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_iboe_route(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_route*, align 8
  %5 = alloca %struct.rdma_addr*, align 8
  %6 = alloca %struct.cma_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.rdma_route* %12, %struct.rdma_route** %4, align 8
  %13 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %13, i32 0, i32 2
  store %struct.rdma_addr* %14, %struct.rdma_addr** %5, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 128, i32 %15)
  %17 = bitcast i8* %16 to %struct.cma_work*
  store %struct.cma_work* %17, %struct.cma_work** %6, align 8
  %18 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %19 = icmp ne %struct.cma_work* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %289

23:                                               ; preds = %1
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %25 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %26 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %25, i32 0, i32 21
  store %struct.rdma_id_private* %24, %struct.rdma_id_private** %26, align 8
  %27 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %28 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %27, i32 0, i32 3
  %29 = load i32, i32* @cma_work_handler, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 128, i32 %31)
  %33 = bitcast i8* %32 to %struct.cma_work*
  %34 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %35 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %34, i32 0, i32 1
  store %struct.cma_work* %33, %struct.cma_work** %35, align 8
  %36 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %37 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %36, i32 0, i32 1
  %38 = load %struct.cma_work*, %struct.cma_work** %37, align 8
  %39 = icmp ne %struct.cma_work* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %285

43:                                               ; preds = %23
  %44 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %45 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %47 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %43
  %52 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %53 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %57 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.net_device* @dev_get_by_index(i32 %55, i64 %59)
  store %struct.net_device* %60, %struct.net_device** %8, align 8
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %278

66:                                               ; preds = %51
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %71 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %70, i32 0, i32 1
  %72 = load %struct.cma_work*, %struct.cma_work** %71, align 8
  %73 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %72, i32 0, i32 20
  store i32 %69, i32* %73, align 4
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %78 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %77, i32 0, i32 1
  %79 = load %struct.cma_work*, %struct.cma_work** %78, align 8
  %80 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %79, i32 0, i32 19
  store i32 %76, i32* %80, align 8
  %81 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %82 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %86 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @roce_gid_type_mask_support(i32 %84, i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %91 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %96 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @cma_route_gid_type(i32 %93, i64 %94, i32 %97)
  %99 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %100 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %99, i32 0, i32 1
  %101 = load %struct.cma_work*, %struct.cma_work** %100, align 8
  %102 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %101, i32 0, i32 0
  store i64 %98, i64* %102, align 8
  br label %103

103:                                              ; preds = %66, %43
  %104 = load %struct.net_device*, %struct.net_device** %8, align 8
  %105 = icmp ne %struct.net_device* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %278

109:                                              ; preds = %103
  %110 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %111 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %110, i32 0, i32 1
  %112 = load %struct.cma_work*, %struct.cma_work** %111, align 8
  %113 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %112, i32 0, i32 18
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %116 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = call i32 @memcpy(i32 %114, i32 %118, i32 %119)
  %121 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %122 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %124, i32 0, i32 2
  %126 = bitcast i32* %125 to %struct.sockaddr*
  %127 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %128 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %127, i32 0, i32 1
  %129 = load %struct.cma_work*, %struct.cma_work** %128, align 8
  %130 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %129, i32 0, i32 17
  %131 = call i32 @rdma_ip2gid(%struct.sockaddr* %126, i32* %130)
  %132 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %133 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %135, i32 0, i32 1
  %137 = bitcast i32* %136 to %struct.sockaddr*
  %138 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %139 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %138, i32 0, i32 1
  %140 = load %struct.cma_work*, %struct.cma_work** %139, align 8
  %141 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %140, i32 0, i32 16
  %142 = call i32 @rdma_ip2gid(%struct.sockaddr* %137, i32* %141)
  %143 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %144 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %143, i32 0, i32 1
  %145 = load %struct.cma_work*, %struct.cma_work** %144, align 8
  %146 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %149 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ib_network_to_gid_type(i32 %151)
  %153 = icmp slt i64 %147, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %109
  %155 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %156 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @ib_network_to_gid_type(i32 %158)
  %160 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %161 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %160, i32 0, i32 1
  %162 = load %struct.cma_work*, %struct.cma_work** %161, align 8
  %163 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %162, i32 0, i32 0
  store i64 %159, i64* %163, align 8
  br label %164

164:                                              ; preds = %154, %109
  %165 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %166 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %168, i32 0, i32 1
  %170 = bitcast i32* %169 to %struct.sockaddr*
  %171 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AF_IB, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %164
  %176 = load %struct.rdma_addr*, %struct.rdma_addr** %5, align 8
  %177 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %181 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %180, i32 0, i32 1
  %182 = load %struct.cma_work*, %struct.cma_work** %181, align 8
  %183 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 8
  br label %189

184:                                              ; preds = %164
  %185 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %186 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %185, i32 0, i32 1
  %187 = load %struct.cma_work*, %struct.cma_work** %186, align 8
  %188 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %187, i32 0, i32 1
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %184, %175
  %190 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %191 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %190, i32 0, i32 1
  %192 = load %struct.cma_work*, %struct.cma_work** %191, align 8
  %193 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %192, i32 0, i32 2
  store i32 1, i32* %193, align 4
  %194 = call i32 @cpu_to_be16(i32 65535)
  %195 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %196 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %195, i32 0, i32 1
  %197 = load %struct.cma_work*, %struct.cma_work** %196, align 8
  %198 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %197, i32 0, i32 15
  store i32 %194, i32* %198, align 8
  %199 = load i8*, i8** @IB_SA_EQ, align 8
  %200 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %201 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %200, i32 0, i32 1
  %202 = load %struct.cma_work*, %struct.cma_work** %201, align 8
  %203 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %202, i32 0, i32 14
  store i8* %199, i8** %203, align 8
  %204 = load %struct.net_device*, %struct.net_device** %8, align 8
  %205 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %206 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @iboe_tos_to_sl(%struct.net_device* %204, i32 %207)
  %209 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %210 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %209, i32 0, i32 1
  %211 = load %struct.cma_work*, %struct.cma_work** %210, align 8
  %212 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %211, i32 0, i32 13
  store i32 %208, i32* %212, align 4
  %213 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %214 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %217 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %216, i32 0, i32 1
  %218 = load %struct.cma_work*, %struct.cma_work** %217, align 8
  %219 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %218, i32 0, i32 12
  store i32 %215, i32* %219, align 8
  %220 = load %struct.net_device*, %struct.net_device** %8, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @iboe_get_mtu(i32 %222)
  %224 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %225 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %224, i32 0, i32 1
  %226 = load %struct.cma_work*, %struct.cma_work** %225, align 8
  %227 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %226, i32 0, i32 7
  store i32 %223, i32* %227, align 8
  %228 = load i8*, i8** @IB_SA_EQ, align 8
  %229 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %230 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %229, i32 0, i32 1
  %231 = load %struct.cma_work*, %struct.cma_work** %230, align 8
  %232 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %231, i32 0, i32 11
  store i8* %228, i8** %232, align 8
  %233 = load %struct.net_device*, %struct.net_device** %8, align 8
  %234 = call i32 @iboe_get_rate(%struct.net_device* %233)
  %235 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %236 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %235, i32 0, i32 1
  %237 = load %struct.cma_work*, %struct.cma_work** %236, align 8
  %238 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %237, i32 0, i32 10
  store i32 %234, i32* %238, align 8
  %239 = load %struct.net_device*, %struct.net_device** %8, align 8
  %240 = call i32 @dev_put(%struct.net_device* %239)
  %241 = load i8*, i8** @IB_SA_EQ, align 8
  %242 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %243 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %242, i32 0, i32 1
  %244 = load %struct.cma_work*, %struct.cma_work** %243, align 8
  %245 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %244, i32 0, i32 9
  store i8* %241, i8** %245, align 8
  %246 = load i32, i32* @CMA_IBOE_PACKET_LIFETIME, align 4
  %247 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %248 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %247, i32 0, i32 1
  %249 = load %struct.cma_work*, %struct.cma_work** %248, align 8
  %250 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %249, i32 0, i32 8
  store i32 %246, i32* %250, align 4
  %251 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %252 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %251, i32 0, i32 1
  %253 = load %struct.cma_work*, %struct.cma_work** %252, align 8
  %254 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %189
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %7, align 4
  br label %278

260:                                              ; preds = %189
  %261 = load i32, i32* @RDMA_CM_ROUTE_QUERY, align 4
  %262 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %263 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @RDMA_CM_ROUTE_RESOLVED, align 4
  %265 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %266 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* @RDMA_CM_EVENT_ROUTE_RESOLVED, align 4
  %268 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %269 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  store i32 %267, i32* %270, align 8
  %271 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %272 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  store i64 0, i64* %273, align 8
  %274 = load i32, i32* @cma_wq, align 4
  %275 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %276 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %275, i32 0, i32 3
  %277 = call i32 @queue_work(i32 %274, i32* %276)
  store i32 0, i32* %2, align 4
  br label %289

278:                                              ; preds = %257, %106, %63
  %279 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %280 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %279, i32 0, i32 1
  %281 = load %struct.cma_work*, %struct.cma_work** %280, align 8
  %282 = call i32 @kfree(%struct.cma_work* %281)
  %283 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %284 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %283, i32 0, i32 1
  store %struct.cma_work* null, %struct.cma_work** %284, align 8
  br label %285

285:                                              ; preds = %278, %40
  %286 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %287 = call i32 @kfree(%struct.cma_work* %286)
  %288 = load i32, i32* %7, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %285, %260, %20
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i64 @roce_gid_type_mask_support(i32, i32) #1

declare dso_local i64 @cma_route_gid_type(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, i32*) #1

declare dso_local i64 @ib_network_to_gid_type(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @iboe_tos_to_sl(%struct.net_device*, i32) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @iboe_get_rate(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
