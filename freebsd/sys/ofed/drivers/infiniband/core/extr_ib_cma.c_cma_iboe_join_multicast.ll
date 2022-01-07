; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_iboe_join_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_iboe_join_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i64, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.cma_multicast = type { i64, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.iboe_mcast_work* }
%struct.iboe_mcast_work = type { i32, %struct.cma_multicast*, %struct.rdma_id_private*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i64 }
%struct.net_device = type { i32 }

@SENDONLY_FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@RDMA_UDP_QKEY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@IPV6_DEFAULT_HOPLIMIT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@iboe_mcast_work_handler = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_iboe_join_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_iboe_join_multicast(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_multicast*, align 8
  %6 = alloca %struct.iboe_mcast_work*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %5, align 8
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.rdma_dev_addr* %17, %struct.rdma_dev_addr** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %19 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %18, i32 0, i32 4
  %20 = bitcast i32* %19 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %21 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %22 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @SENDONLY_FULLMEMBER_JOIN, align 4
  %25 = call i64 @BIT(i32 %24)
  %26 = icmp eq i64 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %29 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %28, i32 0, i32 4
  %30 = bitcast i32* %29 to %struct.sockaddr*
  %31 = call i64 @cma_zero_addr(%struct.sockaddr* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %266

36:                                               ; preds = %2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 56, i32 %37)
  %39 = bitcast i8* %38 to %struct.iboe_mcast_work*
  store %struct.iboe_mcast_work* %39, %struct.iboe_mcast_work** %6, align 8
  %40 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %41 = icmp ne %struct.iboe_mcast_work* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %266

45:                                               ; preds = %36
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 4, i32 %46)
  %48 = bitcast i8* %47 to %struct.iboe_mcast_work*
  %49 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %50 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store %struct.iboe_mcast_work* %48, %struct.iboe_mcast_work** %51, align 8
  %52 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %53 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %54, align 8
  %56 = icmp ne %struct.iboe_mcast_work* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %262

60:                                               ; preds = %45
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %67 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %71 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @rdma_start_port(i32 %74)
  %76 = sub i64 %69, %75
  %77 = getelementptr inbounds i32, i32* %65, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %80 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %81 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %82, align 8
  %84 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @cma_iboe_set_mgid(%struct.sockaddr* %79, i32* %85, i32 %86)
  %88 = call i32 @cpu_to_be16(i32 65535)
  %89 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %90 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %91, align 8
  %93 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  store i32 %88, i32* %94, align 8
  %95 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %96 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RDMA_PS_UDP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %60
  %102 = load i32, i32* @RDMA_UDP_QKEY, align 4
  %103 = call i32 @cpu_to_be32(i32 %102)
  %104 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %105 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %106, align 8
  %108 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %101, %60
  %111 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %112 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %117 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %120 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.net_device* @dev_get_by_index(i32 %118, i64 %121)
  store %struct.net_device* %122, %struct.net_device** %10, align 8
  br label %123

123:                                              ; preds = %115, %110
  %124 = load %struct.net_device*, %struct.net_device** %10, align 8
  %125 = icmp ne %struct.net_device* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %256

129:                                              ; preds = %123
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = call i32 @iboe_get_rate(%struct.net_device* %130)
  %132 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %133 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %134, align 8
  %136 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  store i32 %131, i32* %137, align 8
  %138 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %139 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %140, align 8
  %142 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %10, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @iboe_get_mtu(i32 %146)
  %148 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %149 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %150, align 8
  %152 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i32 %147, i32* %153, align 8
  %154 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %155 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @AF_INET, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %129
  %160 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %161 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AF_INET6, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %159, %129
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %195

169:                                              ; preds = %165
  %170 = load i32, i32* @IPV6_DEFAULT_HOPLIMIT, align 4
  %171 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %172 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %173, align 8
  %175 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i32 %170, i32* %176, align 8
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %194, label %179

179:                                              ; preds = %169
  %180 = load %struct.net_device*, %struct.net_device** %10, align 8
  %181 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %182 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %183, align 8
  %185 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = call i32 @cma_igmp_send(%struct.net_device* %180, i32* %186, i32 1)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %179
  %191 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %192 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %191, i32 0, i32 1
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %179
  br label %194

194:                                              ; preds = %193, %169
  br label %195

195:                                              ; preds = %194, %165
  br label %204

196:                                              ; preds = %159
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* @ENOTSUPP, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200, %196
  br label %204

204:                                              ; preds = %203, %195
  %205 = load %struct.net_device*, %struct.net_device** %10, align 8
  %206 = call i32 @dev_put(%struct.net_device* %205)
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %204
  %210 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %211 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %212, align 8
  %214 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %209, %204
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %221, %218
  br label %256

225:                                              ; preds = %209
  %226 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %227 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = bitcast i32* %230 to %struct.sockaddr*
  %232 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %233 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %234, align 8
  %236 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  %238 = call i32 @rdma_ip2gid(%struct.sockaddr* %231, i32* %237)
  %239 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %240 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %241 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %240, i32 0, i32 2
  store %struct.rdma_id_private* %239, %struct.rdma_id_private** %241, align 8
  %242 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %243 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %244 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %243, i32 0, i32 1
  store %struct.cma_multicast* %242, %struct.cma_multicast** %244, align 8
  %245 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %246 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %245, i32 0, i32 0
  %247 = load i32, i32* @iboe_mcast_work_handler, align 4
  %248 = call i32 @INIT_WORK(i32* %246, i32 %247)
  %249 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %250 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %249, i32 0, i32 3
  %251 = call i32 @kref_get(i32* %250)
  %252 = load i32, i32* @cma_wq, align 4
  %253 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %254 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %253, i32 0, i32 0
  %255 = call i32 @queue_work(i32 %252, i32* %254)
  store i32 0, i32* %3, align 4
  br label %266

256:                                              ; preds = %224, %126
  %257 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %258 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %259, align 8
  %261 = call i32 @kfree(%struct.iboe_mcast_work* %260)
  br label %262

262:                                              ; preds = %256, %57
  %263 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %264 = call i32 @kfree(%struct.iboe_mcast_work* %263)
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %262, %225, %42, %33
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @cma_zero_addr(%struct.sockaddr*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @rdma_start_port(i32) #1

declare dso_local i32 @cma_iboe_set_mgid(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @iboe_get_rate(%struct.net_device*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @cma_igmp_send(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.iboe_mcast_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
