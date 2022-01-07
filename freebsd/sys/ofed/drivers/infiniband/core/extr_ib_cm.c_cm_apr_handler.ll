; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_apr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_apr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.cm_id_private = type { i32, i32, i32, i32*, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.cm_apr_msg = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@IB_CM_LAP_SENT = common dso_local global i64 0, align 8
@IB_CM_MRA_LAP_RCVD = common dso_local global i64 0, align 8
@IB_CM_LAP_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_apr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_apr_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_apr_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_apr_msg*
  store %struct.cm_apr_msg* %13, %struct.cm_apr_msg** %5, align 8
  %14 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %15 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %18 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cm_id_private* @cm_acquire_id(i32 %16, i32 %19)
  store %struct.cm_id_private* %20, %struct.cm_id_private** %4, align 8
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %22 = icmp ne %struct.cm_id_private* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %129

26:                                               ; preds = %1
  %27 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %28 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %31 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 8
  %35 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %36 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %35, i32 0, i32 2
  %37 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %38 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32* %36, i32** %41, align 8
  %42 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %43 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %46 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 8
  %50 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %51 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %50, i32 0, i32 0
  %52 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %53 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %56 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %59 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %26
  %65 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %66 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_CM_LAP_SENT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %73 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IB_CM_MRA_LAP_RCVD, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71, %26
  %79 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %80 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  br label %124

82:                                               ; preds = %71, %64
  %83 = load i64, i64* @IB_CM_LAP_IDLE, align 8
  %84 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %85 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %88 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %94 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ib_cancel_mad(i32 %92, i32* %95)
  %97 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %98 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %100 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %99, i32 0, i32 2
  %101 = call i32 @atomic_inc_and_test(i32* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %82
  %105 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %106 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %105, i32 0, i32 0
  %107 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %108 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %107, i32 0, i32 1
  %109 = call i32 @list_add_tail(i32* %106, i32* %108)
  br label %110

110:                                              ; preds = %104, %82
  %111 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %112 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock_irq(i32* %112)
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %118 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %119 = call i32 @cm_process_work(%struct.cm_id_private* %117, %struct.cm_work* %118)
  br label %123

120:                                              ; preds = %110
  %121 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %122 = call i32 @cm_deref_id(%struct.cm_id_private* %121)
  br label %123

123:                                              ; preds = %120, %116
  store i32 0, i32* %2, align 4
  br label %129

124:                                              ; preds = %78
  %125 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %126 = call i32 @cm_deref_id(%struct.cm_id_private* %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %124, %123, %23
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32*) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
