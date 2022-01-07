; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_initialized.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64 }

@SFXGE_EVQ_STARTING = common dso_local global i64 0, align 8
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"evq not starting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sfxge_ev_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_initialized(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sfxge_evq*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %5, %struct.sfxge_evq** %3, align 8
  %6 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %7 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %6)
  %8 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %9 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SFXGE_EVQ_STARTING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %15 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %24 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %25 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  ret i32 0
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
