; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_notif_wait.c_iwm_notification_wait_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_notif_wait.c_iwm_notification_wait_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_notif_wait_data = type { %struct.iwm_softc*, i32, i32 }
%struct.iwm_softc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"iwm wait_notif\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iwm_notif_wait_data* @iwm_notification_wait_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca %struct.iwm_notif_wait_data*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %4 = load i32, i32* @M_DEVBUF, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.iwm_notif_wait_data* @malloc(i32 16, i32 %4, i32 %7)
  store %struct.iwm_notif_wait_data* %8, %struct.iwm_notif_wait_data** %3, align 8
  %9 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  %10 = icmp ne %struct.iwm_notif_wait_data* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  %13 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @snprintf(i32 %14, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  %17 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  %18 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IWM_WAIT_LOCK_INIT(%struct.iwm_notif_wait_data* %16, i32 %19)
  %21 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  %22 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %21, i32 0, i32 1
  %23 = call i32 @STAILQ_INIT(i32* %22)
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %25 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  %26 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %25, i32 0, i32 0
  store %struct.iwm_softc* %24, %struct.iwm_softc** %26, align 8
  br label %27

27:                                               ; preds = %11, %1
  %28 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %3, align 8
  ret %struct.iwm_notif_wait_data* %28
}

declare dso_local %struct.iwm_notif_wait_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @IWM_WAIT_LOCK_INIT(%struct.iwm_notif_wait_data*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
