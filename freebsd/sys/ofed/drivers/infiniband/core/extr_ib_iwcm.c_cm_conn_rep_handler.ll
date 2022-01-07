; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwcm.c_cm_conn_rep_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwcm.c_cm_conn_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i64, i32, %struct.TYPE_6__, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.iw_cm_event = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.iw_cm_event.0 = type { i64, i32, i64, i32, i32 }

@IWCM_F_CONNECT_WAIT = common dso_local global i32 0, align 4
@IW_CM_STATE_CONN_SENT = common dso_local global i64 0, align 8
@IW_CM_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@IW_CM_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event.0*)* @cm_conn_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_conn_rep_handler(%struct.iwcm_id_private* %0, %struct.iw_cm_event.0* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event.0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event.0* %1, %struct.iw_cm_event.0** %4, align 8
  %7 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %8 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %7, i32 0, i32 3
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @IWCM_F_CONNECT_WAIT, align 4
  %12 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %13 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %12, i32 0, i32 5
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IW_CM_STATE_CONN_SENT, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %23 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %2
  %27 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %28 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %31 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %34 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %37 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  %39 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %44 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %46 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %50 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* @IW_CM_STATE_ESTABLISHED, align 8
  %52 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %53 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %72

54:                                               ; preds = %2
  %55 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %56 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (i32*)*, i32 (i32*)** %61, align 8
  %63 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %64 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 %62(i32* %65)
  %67 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %68 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load i64, i64* @IW_CM_STATE_IDLE, align 8
  %70 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %71 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %54, %26
  %73 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %74 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %73, i32 0, i32 3
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %78 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %79, align 8
  %81 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %82 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %81, i32 0, i32 2
  %83 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %84 = bitcast %struct.iw_cm_event.0* %83 to %struct.iw_cm_event*
  %85 = call i32 %80(%struct.TYPE_6__* %82, %struct.iw_cm_event* %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %87 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %92 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @kfree(i32 %93)
  br label %95

95:                                               ; preds = %90, %72
  %96 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %97 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %96, i32 0, i32 1
  %98 = call i32 @wake_up_all(i32* %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
