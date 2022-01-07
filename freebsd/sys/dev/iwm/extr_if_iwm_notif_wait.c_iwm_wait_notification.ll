; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_notif_wait.c_iwm_wait_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_notif_wait.c_iwm_wait_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_notif_wait_data = type { i32, i32 }
%struct.iwm_notification_wait = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"iwm_notif\00", align 1
@iwm_notification_wait = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_wait_notification(%struct.iwm_notif_wait_data* %0, %struct.iwm_notification_wait* %1, i32 %2) #0 {
  %4 = alloca %struct.iwm_notif_wait_data*, align 8
  %5 = alloca %struct.iwm_notification_wait*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwm_notif_wait_data* %0, %struct.iwm_notif_wait_data** %4, align 8
  store %struct.iwm_notification_wait* %1, %struct.iwm_notification_wait** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %4, align 8
  %9 = call i32 @IWM_WAIT_LOCK(%struct.iwm_notif_wait_data* %8)
  %10 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %5, align 8
  %11 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %5, align 8
  %16 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %5, align 8
  %21 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %4, align 8
  %22 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %21, i32 0, i32 1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @msleep(%struct.iwm_notification_wait* %20, i32* %22, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19, %14, %3
  %26 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %4, align 8
  %27 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %26, i32 0, i32 0
  %28 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %5, align 8
  %29 = load i32, i32* @iwm_notification_wait, align 4
  %30 = load i32, i32* @entry, align 4
  %31 = call i32 @STAILQ_REMOVE(i32* %27, %struct.iwm_notification_wait* %28, i32 %29, i32 %30)
  %32 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %4, align 8
  %33 = call i32 @IWM_WAIT_UNLOCK(%struct.iwm_notif_wait_data* %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @IWM_WAIT_LOCK(%struct.iwm_notif_wait_data*) #1

declare dso_local i32 @msleep(%struct.iwm_notification_wait*, i32*, i32, i8*, i32) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.iwm_notification_wait*, i32, i32) #1

declare dso_local i32 @IWM_WAIT_UNLOCK(%struct.iwm_notif_wait_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
