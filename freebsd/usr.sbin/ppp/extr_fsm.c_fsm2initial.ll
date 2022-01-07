; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm2initial.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm2initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, i32, i32, i32 }

@ST_STOPPED = common dso_local global i64 0, align 8
@ST_INITIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm2initial(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 3
  %5 = call i32 @timer_Stop(i32* %4)
  %6 = load %struct.fsm*, %struct.fsm** %2, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 2
  %8 = call i32 @timer_Stop(i32* %7)
  %9 = load %struct.fsm*, %struct.fsm** %2, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 1
  %11 = call i32 @timer_Stop(i32* %10)
  %12 = load %struct.fsm*, %struct.fsm** %2, align 8
  %13 = getelementptr inbounds %struct.fsm, %struct.fsm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ST_STOPPED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.fsm*, %struct.fsm** %2, align 8
  %19 = call i32 @fsm_Close(%struct.fsm* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.fsm*, %struct.fsm** %2, align 8
  %22 = getelementptr inbounds %struct.fsm, %struct.fsm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ST_INITIAL, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.fsm*, %struct.fsm** %2, align 8
  %28 = call i32 @fsm_Down(%struct.fsm* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.fsm*, %struct.fsm** %2, align 8
  %31 = getelementptr inbounds %struct.fsm, %struct.fsm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ST_INITIAL, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.fsm*, %struct.fsm** %2, align 8
  %37 = call i32 @fsm_Close(%struct.fsm* %36)
  br label %38

38:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @fsm_Close(%struct.fsm*) #1

declare dso_local i32 @fsm_Down(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
