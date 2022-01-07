; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_rej_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_rej_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.cm_rej_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_REJ_STALE_CONN = common dso_local global i32 0, align 4
@IB_CM_LAP_UNINIT = common dso_local global i32 0, align 4
@IB_CM_LAP_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_rej_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_rej_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_rej_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_rej_msg*
  store %struct.cm_rej_msg* %13, %struct.cm_rej_msg** %5, align 8
  %14 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %5, align 8
  %15 = call %struct.cm_id_private* @cm_acquire_rejected_id(%struct.cm_rej_msg* %14)
  store %struct.cm_id_private* %15, %struct.cm_id_private** %4, align 8
  %16 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %17 = icmp ne %struct.cm_id_private* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %143

21:                                               ; preds = %1
  %22 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %23 = call i32 @cm_format_rej_event(%struct.cm_work* %22)
  %24 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %25 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %28 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %106 [
    i32 128, label %31
    i32 133, label %31
    i32 130, label %31
    i32 135, label %31
    i32 129, label %42
    i32 132, label %42
    i32 137, label %56
    i32 131, label %67
    i32 134, label %67
    i32 136, label %70
  ]

31:                                               ; preds = %21, %21, %21, %21
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %39 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ib_cancel_mad(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %21, %21, %31
  %43 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %5, align 8
  %44 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__be16_to_cpu(i32 %45)
  %47 = load i32, i32* @IB_CM_REJ_STALE_CONN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %51 = call i32 @cm_enter_timewait(%struct.cm_id_private* %50)
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %54 = call i32 @cm_reset_to_idle(%struct.cm_id_private* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %112

56:                                               ; preds = %21
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %64 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ib_cancel_mad(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %21, %21, %56
  %68 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %69 = call i32 @cm_enter_timewait(%struct.cm_id_private* %68)
  br label %112

70:                                               ; preds = %21
  %71 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %72 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_CM_LAP_UNINIT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %79 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IB_CM_LAP_SENT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %77, %70
  %85 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %86 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IB_CM_LAP_SENT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %93 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %99 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ib_cancel_mad(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %91, %84
  %103 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %104 = call i32 @cm_enter_timewait(%struct.cm_id_private* %103)
  br label %112

105:                                              ; preds = %77
  br label %106

106:                                              ; preds = %21, %105
  %107 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %108 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_irq(i32* %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %138

112:                                              ; preds = %102, %67, %55
  %113 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %114 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %113, i32 0, i32 2
  %115 = call i32 @atomic_inc_and_test(i32* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %120 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %119, i32 0, i32 0
  %121 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %122 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %121, i32 0, i32 1
  %123 = call i32 @list_add_tail(i32* %120, i32* %122)
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %126 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_irq(i32* %126)
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %132 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %133 = call i32 @cm_process_work(%struct.cm_id_private* %131, %struct.cm_work* %132)
  br label %137

134:                                              ; preds = %124
  %135 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %136 = call i32 @cm_deref_id(%struct.cm_id_private* %135)
  br label %137

137:                                              ; preds = %134, %130
  store i32 0, i32* %2, align 4
  br label %143

138:                                              ; preds = %106
  %139 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %140 = call i32 @cm_deref_id(%struct.cm_id_private* %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %138, %137, %18
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.cm_id_private* @cm_acquire_rejected_id(%struct.cm_rej_msg*) #1

declare dso_local i32 @cm_format_rej_event(%struct.cm_work*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

declare dso_local i32 @__be16_to_cpu(i32) #1

declare dso_local i32 @cm_enter_timewait(%struct.cm_id_private*) #1

declare dso_local i32 @cm_reset_to_idle(%struct.cm_id_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

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
