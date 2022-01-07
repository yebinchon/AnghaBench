; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_drep_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_drep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.cm_drep_msg = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_DREQ_SENT = common dso_local global i64 0, align 8
@IB_CM_DREQ_RCVD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_drep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_drep_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_drep_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_drep_msg*
  store %struct.cm_drep_msg* %13, %struct.cm_drep_msg** %5, align 8
  %14 = load %struct.cm_drep_msg*, %struct.cm_drep_msg** %5, align 8
  %15 = getelementptr inbounds %struct.cm_drep_msg, %struct.cm_drep_msg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cm_drep_msg*, %struct.cm_drep_msg** %5, align 8
  %18 = getelementptr inbounds %struct.cm_drep_msg, %struct.cm_drep_msg* %17, i32 0, i32 1
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
  br label %95

26:                                               ; preds = %1
  %27 = load %struct.cm_drep_msg*, %struct.cm_drep_msg** %5, align 8
  %28 = getelementptr inbounds %struct.cm_drep_msg, %struct.cm_drep_msg* %27, i32 0, i32 0
  %29 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %30 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %36 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_CM_DREQ_SENT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %26
  %42 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %43 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_CM_DREQ_RCVD, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %50 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  br label %90

52:                                               ; preds = %41, %26
  %53 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %54 = call i32 @cm_enter_timewait(%struct.cm_id_private* %53)
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %56 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ib_cancel_mad(i32 %60, i32 %63)
  %65 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %66 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %65, i32 0, i32 2
  %67 = call i32 @atomic_inc_and_test(i32* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %52
  %71 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %72 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %71, i32 0, i32 0
  %73 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %74 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  br label %76

76:                                               ; preds = %70, %52
  %77 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %78 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %84 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %85 = call i32 @cm_process_work(%struct.cm_id_private* %83, %struct.cm_work* %84)
  br label %89

86:                                               ; preds = %76
  %87 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %88 = call i32 @cm_deref_id(%struct.cm_id_private* %87)
  br label %89

89:                                               ; preds = %86, %82
  store i32 0, i32* %2, align 4
  br label %95

90:                                               ; preds = %48
  %91 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %92 = call i32 @cm_deref_id(%struct.cm_id_private* %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %89, %23
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_enter_timewait(%struct.cm_id_private*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

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
