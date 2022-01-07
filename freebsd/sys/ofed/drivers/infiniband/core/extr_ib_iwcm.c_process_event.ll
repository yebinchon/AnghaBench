; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwcm.c_process_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwcm.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i32 }
%struct.iw_cm_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event*)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_event(%struct.iwcm_id_private* %0, %struct.iw_cm_event* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event*, align 8
  %5 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event* %1, %struct.iw_cm_event** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %7 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 131, label %13
    i32 128, label %17
    i32 129, label %21
    i32 132, label %25
  ]

9:                                                ; preds = %2
  %10 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %11 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %12 = call i32 @cm_conn_req_handler(%struct.iwcm_id_private* %10, %struct.iw_cm_event* %11)
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %15 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %16 = call i32 @cm_conn_rep_handler(%struct.iwcm_id_private* %14, %struct.iw_cm_event* %15)
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %19 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %20 = call i32 @cm_conn_est_handler(%struct.iwcm_id_private* %18, %struct.iw_cm_event* %19)
  store i32 %20, i32* %5, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %23 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %24 = call i32 @cm_disconnect_handler(%struct.iwcm_id_private* %22, %struct.iw_cm_event* %23)
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %27 = load %struct.iw_cm_event*, %struct.iw_cm_event** %4, align 8
  %28 = call i32 @cm_close_handler(%struct.iwcm_id_private* %26, %struct.iw_cm_event* %27)
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %2
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %25, %21, %17, %13, %9
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @cm_conn_req_handler(%struct.iwcm_id_private*, %struct.iw_cm_event*) #1

declare dso_local i32 @cm_conn_rep_handler(%struct.iwcm_id_private*, %struct.iw_cm_event*) #1

declare dso_local i32 @cm_conn_est_handler(%struct.iwcm_id_private*, %struct.iw_cm_event*) #1

declare dso_local i32 @cm_disconnect_handler(%struct.iwcm_id_private*, %struct.iw_cm_event*) #1

declare dso_local i32 @cm_close_handler(%struct.iwcm_id_private*, %struct.iw_cm_event*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
