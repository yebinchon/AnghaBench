; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_join_ib_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_join_ib_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.cma_multicast = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ib_sa_mcmember_rec = type { i64, i32, i32, i32, i32 }
%struct.ib_class_port_info = type { i32 }
%struct.sockaddr = type { i32 }

@SENDONLY_FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@IB_SA_CAP_MASK2_SENDONLY_FULL_MEM_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"RDMA CM: %s port %u Unable to multicast join\0ARDMA CM: SM doesn't support Send Only Full Member option\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@RDMA_PS_IPOIB = common dso_local global i64 0, align 8
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cma_ib_mc_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_join_ib_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_join_ib_multicast(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_multicast*, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec, align 8
  %7 = alloca %struct.ib_class_port_info, align 4
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %5, align 8
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.rdma_dev_addr* %15, %struct.rdma_dev_addr** %8, align 8
  %16 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %17 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %18 = call i32 @ib_addr_get_mgid(%struct.rdma_dev_addr* %16, i32* %17)
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %20 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %28 = call i32 @ib_sa_get_mcmember_rec(%struct.TYPE_12__* %22, i32 %26, i32* %27, %struct.ib_sa_mcmember_rec* %6)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %158

33:                                               ; preds = %2
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %35 = call i32 @cma_set_qkey(%struct.rdma_id_private* %34, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %158

40:                                               ; preds = %33
  %41 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %42 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %43 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %42, i32 0, i32 2
  %44 = bitcast i32* %43 to %struct.sockaddr*
  %45 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %46 = call i32 @cma_set_mgid(%struct.rdma_id_private* %41, %struct.sockaddr* %44, i32* %45)
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %53 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 2
  %54 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %52, i32* %53)
  %55 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %56 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %55)
  %57 = call i32 @cpu_to_be16(i32 %56)
  %58 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %60 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @SENDONLY_FULLMEMBER_JOIN, align 4
  %66 = call i64 @BIT(i32 %65)
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %40
  %69 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %70 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %74 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cma_query_sa_classport_info(%struct.TYPE_12__* %72, i32 %76, %struct.ib_class_port_info* %7)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %158

82:                                               ; preds = %68
  %83 = call i32 @ib_get_cpi_capmask2(%struct.ib_class_port_info* %7)
  %84 = load i32, i32* @IB_SA_CAP_MASK2_SENDONLY_FULL_MEM_SUPPORT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %89 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %95 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pr_warn(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %97)
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %158

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101, %40
  %103 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %104 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %9, align 4
  %118 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %119 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RDMA_PS_IPOIB, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %102
  %125 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %126 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %124, %102
  %137 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %138 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %142 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = load i32, i32* @cma_ib_mc_handler, align 4
  %148 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %149 = call i32 @ib_sa_join_multicast(i32* @sa_client, %struct.TYPE_12__* %140, i32 %144, %struct.ib_sa_mcmember_rec* %6, i32 %145, i32 %146, i32 %147, %struct.cma_multicast* %148)
  %150 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %151 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %154 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @PTR_ERR_OR_ZERO(i32 %156)
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %136, %87, %80, %38, %31
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @ib_addr_get_mgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @ib_sa_get_mcmember_rec(%struct.TYPE_12__*, i32, i32*, %struct.ib_sa_mcmember_rec*) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_set_mgid(%struct.rdma_id_private*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @cma_query_sa_classport_info(%struct.TYPE_12__*, i32, %struct.ib_class_port_info*) #1

declare dso_local i32 @ib_get_cpi_capmask2(%struct.ib_class_port_info*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @ib_sa_join_multicast(i32*, %struct.TYPE_12__*, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.cma_multicast*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
