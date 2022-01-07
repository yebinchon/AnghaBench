; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timerattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timerattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.kq_timer_cb_data* }
%struct.kq_timer_cb_data = type { i32 }

@kq_ncallouts = common dso_local global i32 0, align 4
@kq_calloutmax = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NOTE_ABSTIME = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@KN_DETACHED = common dso_local global i32 0, align 4
@M_KQUEUE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @filt_timerattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_timerattach(%struct.knote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kq_timer_cb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = call i32 @filt_timervalidate(%struct.knote* %8, i32* %5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %23, %14
  %16 = load i32, i32* @kq_ncallouts, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @kq_calloutmax, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  %27 = call i32 @atomic_cmpset_int(i32* @kq_ncallouts, i32 %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %15, label %30

30:                                               ; preds = %23
  %31 = load %struct.knote*, %struct.knote** %3, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NOTE_ABSTIME, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @EV_CLEAR, align 4
  %39 = load %struct.knote*, %struct.knote** %3, align 8
  %40 = getelementptr inbounds %struct.knote, %struct.knote* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, i32* @KN_DETACHED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.knote*, %struct.knote** %3, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @M_KQUEUE, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call %struct.kq_timer_cb_data* @malloc(i32 4, i32 %50, i32 %51)
  store %struct.kq_timer_cb_data* %52, %struct.kq_timer_cb_data** %4, align 8
  %53 = load %struct.knote*, %struct.knote** %3, align 8
  %54 = getelementptr inbounds %struct.knote, %struct.knote* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.kq_timer_cb_data* %52, %struct.kq_timer_cb_data** %55, align 8
  %56 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %4, align 8
  %57 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %56, i32 0, i32 0
  %58 = call i32 @callout_init(i32* %57, i32 1)
  %59 = load %struct.knote*, %struct.knote** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @filt_timerstart(%struct.knote* %59, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %43, %20, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @filt_timervalidate(%struct.knote*, i32*) #1

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local %struct.kq_timer_cb_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @filt_timerstart(%struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
