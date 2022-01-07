; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ib_mc_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ib_mc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { %struct.TYPE_15__, %struct.cma_multicast* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.cma_multicast = type { i32, %struct.rdma_id_private* }
%struct.rdma_id_private = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_11__*, i32 }
%struct.TYPE_14__ = type { i64, i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i32, %struct.TYPE_10__, i64 }
%struct.rdma_cm_event = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.rdma_cm_event.0 = type { i32, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@RDMA_CM_ADDR_BOUND = common dso_local global i64 0, align 8
@RDMA_CM_ADDR_RESOLVED = common dso_local global i64 0, align 8
@RDMA_CM_EVENT_MULTICAST_JOIN = common dso_local global i8* null, align 8
@RDMA_CM_EVENT_MULTICAST_ERROR = common dso_local global i8* null, align 8
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @cma_ib_mc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_mc_handler(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_multicast*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.cma_multicast*, align 8
  %8 = alloca %struct.rdma_cm_event.0, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_dev_addr*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %5, align 8
  %13 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %13, i32 0, i32 1
  %15 = load %struct.cma_multicast*, %struct.cma_multicast** %14, align 8
  store %struct.cma_multicast* %15, %struct.cma_multicast** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.cma_multicast*, %struct.cma_multicast** %7, align 8
  %17 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %16, i32 0, i32 1
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %17, align 8
  store %struct.rdma_id_private* %18, %struct.rdma_id_private** %6, align 8
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %20 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RDMA_CM_ADDR_BOUND, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %29 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RDMA_CM_ADDR_RESOLVED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %183

34:                                               ; preds = %27, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %39 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %40 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = call i32 @cma_set_qkey(%struct.rdma_id_private* %38, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %34
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 4
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %45
  %52 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %53 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %59 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %63 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %66 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be16_to_cpu(i32 %68)
  %70 = call i32 @ib_attach_mcast(i64 %61, i32* %64, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %57, %51, %45
  %72 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %73 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %72, i32 0, i32 4
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = call i32 @memset(%struct.rdma_cm_event.0* %8, i32 0, i32 32)
  %76 = load i32, i32* %4, align 4
  %77 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.cma_multicast*, %struct.cma_multicast** %7, align 8
  %79 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %158, label %86

86:                                               ; preds = %71
  %87 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %88 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store %struct.rdma_dev_addr* %91, %struct.rdma_dev_addr** %10, align 8
  %92 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %10, align 8
  %93 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %10, align 8
  %96 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.net_device* @dev_get_by_index(i32 %94, i32 %97)
  store %struct.net_device* %98, %struct.net_device** %11, align 8
  %99 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %100 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %105 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %109 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %108, i32 0, i32 3
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @rdma_start_port(i32 %112)
  %114 = sub i64 %107, %113
  %115 = getelementptr inbounds i32, i32* %103, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i8*, i8** @RDMA_CM_EVENT_MULTICAST_JOIN, align 8
  %118 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %120 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %124 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %128 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %127, i32 0, i32 0
  %129 = load %struct.net_device*, %struct.net_device** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = call i32 @ib_init_ah_from_mcmember(i32 %122, i64 %126, %struct.TYPE_15__* %128, %struct.net_device* %129, i32 %130, i32* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %86
  %138 = load i8*, i8** @RDMA_CM_EVENT_MULTICAST_ERROR, align 8
  %139 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %86
  %141 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 16777215, i32* %143, align 8
  %144 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %145 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @be32_to_cpu(i32 %147)
  %149 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.net_device*, %struct.net_device** %11, align 8
  %153 = icmp ne %struct.net_device* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %140
  %155 = load %struct.net_device*, %struct.net_device** %11, align 8
  %156 = call i32 @dev_put(%struct.net_device* %155)
  br label %157

157:                                              ; preds = %154, %140
  br label %161

158:                                              ; preds = %71
  %159 = load i8*, i8** @RDMA_CM_EVENT_MULTICAST_ERROR, align 8
  %160 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i8* %159, i8** %160, align 8
  br label %161

161:                                              ; preds = %158, %157
  %162 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %163 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)** %164, align 8
  %166 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %167 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %166, i32 0, i32 2
  %168 = bitcast %struct.rdma_cm_event.0* %8 to %struct.rdma_cm_event*
  %169 = call i32 %165(%struct.TYPE_14__* %167, %struct.rdma_cm_event* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %161
  %173 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %174 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %175 = call i32 @cma_exch(%struct.rdma_id_private* %173, i32 %174)
  %176 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %177 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %176, i32 0, i32 1
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %180 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %179, i32 0, i32 2
  %181 = call i32 @rdma_destroy_id(%struct.TYPE_14__* %180)
  store i32 0, i32* %3, align 4
  br label %187

182:                                              ; preds = %161
  br label %183

183:                                              ; preds = %182, %33
  %184 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %185 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %184, i32 0, i32 1
  %186 = call i32 @mutex_unlock(i32* %185)
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %183, %172
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ib_attach_mcast(i64, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i64 @rdma_start_port(i32) #1

declare dso_local i32 @ib_init_ah_from_mcmember(i32, i64, %struct.TYPE_15__*, %struct.net_device*, i32, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
