; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_ib_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_ib_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.ib_cm_id* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_conn_param = type { i64, i32 }
%struct.ib_cm_sidr_req_param = type { i64, i32, i32, i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_sidr_rep_handler = common dso_local global i32 0, align 4
@CMA_CM_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@CMA_MAX_CM_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_resolve_ib_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_udp(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.ib_cm_sidr_req_param, align 8
  %7 = alloca %struct.ib_cm_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %11 = call i32 @memset(%struct.ib_cm_sidr_req_param* %6, i32 0, i32 32)
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %13 = call i32 @cma_user_data_offset(%struct.rdma_id_private* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %17 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %139

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i8* @kzalloc(i64 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %139

44:                                               ; preds = %34
  br label %46

45:                                               ; preds = %30
  store i8* null, i8** %8, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %48 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %53 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %62 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %65 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i8* %60, i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %56, %51, %46
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %74 = call i32 @cma_format_hdr(i8* %72, %struct.rdma_id_private* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %135

78:                                               ; preds = %71
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 5
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %68
  %82 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %83 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @cma_sidr_rep_handler, align 4
  %87 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %88 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %85, i32 %86, %struct.rdma_id_private* %87)
  store %struct.ib_cm_id* %88, %struct.ib_cm_id** %7, align 8
  %89 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %90 = call i64 @IS_ERR(%struct.ib_cm_id* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %94 = call i32 @PTR_ERR(%struct.ib_cm_id* %93)
  store i32 %94, i32* %10, align 4
  br label %135

95:                                               ; preds = %81
  %96 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %98 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.ib_cm_id* %96, %struct.ib_cm_id** %99, align 8
  %100 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %101 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %107 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %106, i32 0, i32 1
  %108 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %109 = call i32 @cma_dst_addr(%struct.rdma_id_private* %108)
  %110 = call i32 @rdma_get_service_id(%struct.TYPE_6__* %107, i32 %109)
  %111 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 3
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* @CMA_CM_RESPONSE_TIMEOUT, align 4
  %113 = sub nsw i32 %112, 8
  %114 = shl i32 1, %113
  %115 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 1
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* @CMA_MAX_CM_RETRIES, align 4
  %117 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %119 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.ib_cm_id*, %struct.ib_cm_id** %120, align 8
  %122 = call i32 @ib_send_cm_sidr_req(%struct.ib_cm_id* %121, %struct.ib_cm_sidr_req_param* %6)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %95
  %126 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %127 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load %struct.ib_cm_id*, %struct.ib_cm_id** %128, align 8
  %130 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %129)
  %131 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %132 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %133, align 8
  br label %134

134:                                              ; preds = %125, %95
  br label %135

135:                                              ; preds = %134, %92, %77
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @kfree(i8* %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %41, %27
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @memset(%struct.ib_cm_sidr_req_param*, i32, i32) #1

declare dso_local i32 @cma_user_data_offset(%struct.rdma_id_private*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @cma_format_hdr(i8*, %struct.rdma_id_private*) #1

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @ib_send_cm_sidr_req(%struct.ib_cm_id*, %struct.ib_cm_sidr_req_param*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
