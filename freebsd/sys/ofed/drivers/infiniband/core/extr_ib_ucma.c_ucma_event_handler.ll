; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64, %struct.ucma_context* }
%struct.ucma_context = type { %struct.TYPE_8__*, %struct.rdma_cm_id*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.rdma_cm_event = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ucma_event = type { i32, %struct.TYPE_6__, %struct.rdma_cm_id* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_CONNECT_REQUEST = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_DEVICE_REMOVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @ucma_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_event_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.ucma_event*, align 8
  %7 = alloca %struct.ucma_context*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 1
  %11 = load %struct.ucma_context*, %struct.ucma_context** %10, align 8
  store %struct.ucma_context* %11, %struct.ucma_context** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ucma_event* @kzalloc(i32 40, i32 %12)
  store %struct.ucma_event* %13, %struct.ucma_event** %6, align 8
  %14 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %15 = icmp ne %struct.ucma_event* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RDMA_CM_EVENT_CONNECT_REQUEST, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %145

23:                                               ; preds = %2
  %24 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %25 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %30 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %31 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %30, i32 0, i32 2
  store %struct.rdma_cm_id* %29, %struct.rdma_cm_id** %31, align 8
  %32 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %33 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %34 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %35 = call i32 @ucma_set_event_context(%struct.ucma_context* %32, %struct.rdma_cm_event* %33, %struct.ucma_event* %34)
  %36 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %40 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %43 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %46 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_QPT_UD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %23
  %54 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %55 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %59 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = call i32 @ucma_copy_ud_event(i32* %57, i32* %60)
  br label %71

62:                                               ; preds = %23
  %63 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %64 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @ucma_copy_conn_event(i32* %66, i32* %69)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %73 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RDMA_CM_EVENT_CONNECT_REQUEST, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %79 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %86 = call i32 @kfree(%struct.ucma_event* %85)
  br label %138

87:                                               ; preds = %77
  %88 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %89 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %116

92:                                               ; preds = %71
  %93 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %94 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %99 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %98, i32 0, i32 1
  %100 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %99, align 8
  %101 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %102 = icmp ne %struct.rdma_cm_id* %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97, %92
  %104 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %105 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RDMA_CM_EVENT_DEVICE_REMOVAL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %111 = call i32 @ucma_removal_event_handler(%struct.rdma_cm_id* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %114 = call i32 @kfree(%struct.ucma_event* %113)
  br label %138

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %87
  %117 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %118 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %117, i32 0, i32 0
  %119 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %120 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = call i32 @list_add_tail(i32* %118, i32* %122)
  %124 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %125 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = call i32 @wake_up_interruptible(i32* %127)
  %129 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %130 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RDMA_CM_EVENT_DEVICE_REMOVAL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %136 = call i32 @ucma_removal_event_handler(%struct.rdma_cm_id* %135)
  br label %137

137:                                              ; preds = %134, %116
  br label %138

138:                                              ; preds = %137, %112, %82
  %139 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %140 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %16
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.ucma_event* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ucma_set_event_context(%struct.ucma_context*, %struct.rdma_cm_event*, %struct.ucma_event*) #1

declare dso_local i32 @ucma_copy_ud_event(i32*, i32*) #1

declare dso_local i32 @ucma_copy_conn_event(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_event*) #1

declare dso_local i32 @ucma_removal_event_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
