; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmSendConfigReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmSendConfigReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.fsm*)* }

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: Too many %s REQs sent - abandoning negotiation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @FsmSendConfigReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmSendConfigReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp sgt i64 %6, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.fsm*, %struct.fsm** %2, align 8
  %11 = getelementptr inbounds %struct.fsm, %struct.fsm* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.fsm*, %struct.fsm** %2, align 8
  %17 = getelementptr inbounds %struct.fsm, %struct.fsm* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %19, align 8
  %21 = load %struct.fsm*, %struct.fsm** %2, align 8
  %22 = call i32 %20(%struct.fsm* %21)
  %23 = load %struct.fsm*, %struct.fsm** %2, align 8
  %24 = getelementptr inbounds %struct.fsm, %struct.fsm* %23, i32 0, i32 3
  %25 = call i32 @timer_Start(i32* %24)
  br label %51

26:                                               ; preds = %9, %1
  %27 = load %struct.fsm*, %struct.fsm** %2, align 8
  %28 = getelementptr inbounds %struct.fsm, %struct.fsm* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @LogPHASE, align 4
  %34 = load %struct.fsm*, %struct.fsm** %2, align 8
  %35 = getelementptr inbounds %struct.fsm, %struct.fsm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fsm*, %struct.fsm** %2, align 8
  %40 = getelementptr inbounds %struct.fsm, %struct.fsm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @log_Printf(i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %26
  %44 = load %struct.fsm*, %struct.fsm** %2, align 8
  %45 = getelementptr inbounds %struct.fsm, %struct.fsm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @lcp_SendIdentification(i32* %47)
  %49 = load %struct.fsm*, %struct.fsm** %2, align 8
  %50 = call i32 @fsm_Close(%struct.fsm* %49)
  br label %51

51:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @timer_Start(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @lcp_SendIdentification(i32*) #1

declare dso_local i32 @fsm_Close(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
