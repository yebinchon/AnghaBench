; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_sidr_rep_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_sidr_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.rdma_id_private* }
%struct.rdma_id_private = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.rdma_cm_event*)*, %struct.TYPE_9__, i32, i32 }
%struct.rdma_cm_event = type opaque
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.ib_cm_event = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.ib_cm_sidr_rep_event_param }
%struct.ib_cm_sidr_rep_event_param = type { i32, i32, i32 }
%struct.rdma_cm_event.0 = type { i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@RDMA_CM_CONNECT = common dso_local global i64 0, align 8
@RDMA_CM_EVENT_UNREACHABLE = common dso_local global i8* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@IB_CM_SIDR_REP_PRIVATE_DATA_SIZE = common dso_local global i32 0, align 4
@IB_SIDR_SUCCESS = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_ERROR = common dso_local global i8* null, align 8
@RDMA_CM_EVENT_ESTABLISHED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"RDMA CMA: unexpected IB CM event: %d\0A\00", align 1
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @cma_sidr_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_sidr_rep_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.rdma_cm_event.0, align 8
  %8 = alloca %struct.ib_cm_sidr_rep_event_param*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  %10 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %11 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %10, i32 0, i32 0
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %11, align 8
  store %struct.rdma_id_private* %12, %struct.rdma_id_private** %6, align 8
  %13 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %14 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.ib_cm_sidr_rep_event_param* %15, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %20 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RDMA_CM_CONNECT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %146

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.rdma_cm_event.0* %7, i32 0, i32 40)
  %27 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %28 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %115 [
    i32 128, label %30
    i32 129, label %36
  ]

30:                                               ; preds = %25
  %31 = load i8*, i8** @RDMA_CM_EVENT_UNREACHABLE, align 8
  %32 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %120

36:                                               ; preds = %25
  %37 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %38 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @IB_CM_SIDR_REP_PRIVATE_DATA_SIZE, align 4
  %44 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %48 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IB_SIDR_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %36
  %53 = load i8*, i8** @RDMA_CM_EVENT_UNREACHABLE, align 8
  %54 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %56 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  br label %120

61:                                               ; preds = %36
  %62 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %63 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %64 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cma_set_qkey(%struct.rdma_id_private* %62, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i8*, i8** @RDMA_CM_EVENT_ADDR_ERROR, align 8
  %71 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  br label %120

74:                                               ; preds = %61
  %75 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %76 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %80 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %84 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = call i32 @ib_init_ah_from_path(i32 %78, i32 %82, i32 %87, i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %74
  %95 = load i8*, i8** @RDMA_CM_EVENT_ADDR_ERROR, align 8
  %96 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  br label %120

99:                                               ; preds = %74
  %100 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %101 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %107 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @RDMA_CM_EVENT_ESTABLISHED, align 8
  %113 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %120

115:                                              ; preds = %25
  %116 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %117 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %146

120:                                              ; preds = %99, %94, %69, %52, %30
  %121 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %122 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_13__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_13__*, %struct.rdma_cm_event*)** %123, align 8
  %125 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %126 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %125, i32 0, i32 2
  %127 = bitcast %struct.rdma_cm_event.0* %7 to %struct.rdma_cm_event*
  %128 = call i32 %124(%struct.TYPE_13__* %126, %struct.rdma_cm_event* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %120
  %132 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %133 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %136 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %137 = call i32 @cma_exch(%struct.rdma_id_private* %135, i32 %136)
  %138 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %139 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %142 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %141, i32 0, i32 2
  %143 = call i32 @rdma_destroy_id(%struct.TYPE_13__* %142)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %151

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145, %115, %24
  %147 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %148 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %147, i32 0, i32 1
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %146, %131
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @ib_init_ah_from_path(i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
