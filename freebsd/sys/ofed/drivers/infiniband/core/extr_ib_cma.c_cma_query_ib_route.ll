; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_ib_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_ib_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.cma_work = type { i32 }
%struct.ib_sa_path_rec = type { i32, i32, i8*, i8*, i32, i8*, i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ib = type { i32 }

@IB_SA_PATH_REC_DGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_NUMB_PATH = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_REVERSIBLE = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SERVICE_ID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_QOS_CLASS = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cma_query_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i32, %struct.cma_work*)* @cma_query_ib_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_query_ib_route(%struct.rdma_id_private* %0, i32 %1, %struct.cma_work* %2) #0 {
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_work*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca %struct.ib_sa_path_rec, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_ib*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cma_work* %2, %struct.cma_work** %6, align 8
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %13 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.rdma_dev_addr* %16, %struct.rdma_dev_addr** %7, align 8
  %17 = call i32 @memset(%struct.ib_sa_path_rec* %8, i32 0, i32 48)
  %18 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %19 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 7
  %20 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %18, i32* %19)
  %21 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %22 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 6
  %23 = call i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr* %21, i32* %22)
  %24 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %25 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %24)
  %26 = call i8* @cpu_to_be16(i32 %25)
  %27 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 2
  %32 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %33 = call i32 @cma_dst_addr(%struct.rdma_id_private* %32)
  %34 = call i32 @rdma_get_service_id(%struct.TYPE_6__* %31, i32 %33)
  %35 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @IB_SA_PATH_REC_DGID, align 4
  %37 = load i32, i32* @IB_SA_PATH_REC_SGID, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IB_SA_PATH_REC_PKEY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IB_SA_PATH_REC_NUMB_PATH, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IB_SA_PATH_REC_REVERSIBLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IB_SA_PATH_REC_SERVICE_ID, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %48 = call i32 @cma_family(%struct.rdma_id_private* %47)
  switch i32 %48, label %88 [
    i32 129, label %49
    i32 128, label %58
    i32 130, label %73
  ]

49:                                               ; preds = %3
  %50 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %51 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @cpu_to_be16(i32 %52)
  %54 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 3
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @IB_SA_PATH_REC_QOS_CLASS, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %88

58:                                               ; preds = %3
  %59 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %60 = call i64 @cma_src_addr(%struct.rdma_id_private* %59)
  %61 = inttoptr i64 %60 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %61, %struct.sockaddr_in6** %10, align 8
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = ashr i32 %65, 20
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %88

73:                                               ; preds = %3
  %74 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %75 = call i64 @cma_src_addr(%struct.rdma_id_private* %74)
  %76 = inttoptr i64 %75 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %76, %struct.sockaddr_ib** %11, align 8
  %77 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %11, align 8
  %78 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = ashr i32 %80, 20
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %8, i32 0, i32 2
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %3, %73, %58, %49
  %89 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %90 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %94 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = load i32, i32* @cma_query_handler, align 4
  %101 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %102 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %103 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %102, i32 0, i32 1
  %104 = call i64 @ib_sa_path_rec_get(i32* @sa_client, i32 %92, i32 %96, %struct.ib_sa_path_rec* %8, i32 %97, i32 %98, i32 %99, i32 %100, %struct.cma_work* %101, i32* %103)
  %105 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %106 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %108 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %88
  %112 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %113 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  br label %116

115:                                              ; preds = %88
  br label %116

116:                                              ; preds = %115, %111
  %117 = phi i64 [ %114, %111 ], [ 0, %115 ]
  %118 = trunc i64 %117 to i32
  ret i32 %118
}

declare dso_local i32 @memset(%struct.ib_sa_path_rec*, i32, i32) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_family(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ib_sa_path_rec_get(i32*, i32, i32, %struct.ib_sa_path_rec*, i32, i32, i32, i32, %struct.cma_work*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
