; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_evtchn = type { i32, %struct.per_user_data* }
%struct.per_user_data = type { i64, i64, i32, i32, i32, i32* }

@EVTCHN_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @evtchn_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evtchn_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.user_evtchn*, align 8
  %4 = alloca %struct.per_user_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.user_evtchn*
  store %struct.user_evtchn* %6, %struct.user_evtchn** %3, align 8
  %7 = load %struct.user_evtchn*, %struct.user_evtchn** %3, align 8
  %8 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %7, i32 0, i32 1
  %9 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  store %struct.per_user_data* %9, %struct.per_user_data** %4, align 8
  %10 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %11 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %10, i32 0, i32 3
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %14 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %17 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load i64, i64* @EVTCHN_RING_SIZE, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %1
  %23 = load %struct.user_evtchn*, %struct.user_evtchn** %3, align 8
  %24 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %27 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %30 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @EVTCHN_RING_MASK(i64 %31)
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32 %25, i32* %33, align 4
  %34 = call i32 (...) @wmb()
  %35 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %36 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %39 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = icmp eq i64 %37, %40
  br i1 %42, label %43, label %49

43:                                               ; preds = %22
  %44 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %45 = call i32 @wakeup(%struct.per_user_data* %44)
  %46 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %47 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %46, i32 0, i32 4
  %48 = call i32 @selwakeup(i32* %47)
  br label %49

49:                                               ; preds = %43, %22
  br label %53

50:                                               ; preds = %1
  %51 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %52 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %49
  %54 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %55 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %54, i32 0, i32 3
  %56 = call i32 @mtx_unlock(i32* %55)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @EVTCHN_RING_MASK(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wakeup(%struct.per_user_data*) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
