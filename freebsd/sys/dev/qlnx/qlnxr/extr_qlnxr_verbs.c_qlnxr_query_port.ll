; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.qlnxr_dev = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_rdma_port = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"port [%d] > 1 \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"rdma_ctx == NULL\0A\00", align 1
@ECORE_RDMA_PORT_UP = common dso_local global i64 0, align 8
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@QLNXR_MAX_SGID = common dso_local global i32 0, align 4
@QLNXR_ROCE_PKEY_TABLE_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [165 x i8] c"state = %d phys_state = %d  link_speed = %d active_speed = %d active_width = %d attr->gid_tbl_len = %d attr->pkey_tbl_len = %d max_msg_sz = 0x%x max_vl_num = 0x%x \0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.ecore_rdma_port*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device* %11)
  store %struct.qlnxr_dev* %12, %struct.qlnxr_dev** %8, align 8
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %153

26:                                               ; preds = %3
  %27 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %28 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %153

36:                                               ; preds = %26
  %37 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %38 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call %struct.ecore_rdma_port* @ecore_rdma_query_port(i32* %39)
  store %struct.ecore_rdma_port* %40, %struct.ecore_rdma_port** %9, align 8
  %41 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %42 = call i32 @memset(%struct.ib_port_attr* %41, i32 0, i32 96)
  %43 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %9, align 8
  %44 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ECORE_RDMA_PORT_UP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %50 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %51 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %53 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %52, i32 0, i32 0
  store i32 5, i32* %53, align 8
  br label %60

54:                                               ; preds = %36
  %55 = load i32, i32* @IB_PORT_DOWN, align 4
  %56 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %59 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %58, i32 0, i32 0
  store i32 3, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @IB_MTU_4096, align 4
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 16
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %65 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iboe_get_mtu(i32 %70)
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 15
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %75 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %74, i32 0, i32 14
  store i64 0, i64* %75, align 8
  %76 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %77 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %76, i32 0, i32 13
  store i64 0, i64* %77, align 8
  %78 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %78, i32 0, i32 12
  store i64 0, i64* %79, align 8
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 11
  store i64 0, i64* %81, align 8
  %82 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %83 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %82, i32 0, i32 10
  store i64 0, i64* %83, align 8
  %84 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %85 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %60
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %99

92:                                               ; preds = %60
  %93 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %94 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %95 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @QLNXR_ROCE_PKEY_TABLE_LEN, align 4
  %97 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %98 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %9, align 8
  %101 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %104 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %106 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %105, i32 0, i32 8
  store i64 0, i64* %106, align 8
  %107 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %9, align 8
  %108 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 6
  %112 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %113 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %112, i32 0, i32 5
  %114 = call i32 @get_link_speed_and_width(i32 %109, i32* %111, i32* %113)
  %115 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %9, align 8
  %116 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %119 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %121 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %120, i32 0, i32 3
  store i32 4, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %124 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %127 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %9, align 8
  %130 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %133 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %136 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %139 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %142 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %145 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %148 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %122, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %99, %31, %20
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device*) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.ecore_rdma_port* @ecore_rdma_query_port(i32*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @get_link_speed_and_width(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
