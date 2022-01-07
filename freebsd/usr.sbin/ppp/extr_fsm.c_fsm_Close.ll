; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)* }
%struct.TYPE_4__ = type { i32 (%struct.fsm*)*, i32 (%struct.fsm*)* }

@ST_INITIAL = common dso_local global i32 0, align 4
@ST_CLOSED = common dso_local global i32 0, align 4
@ST_CLOSING = common dso_local global i32 0, align 4
@FSM_TRM_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Close(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %80 [
    i32 130, label %6
    i32 129, label %29
    i32 128, label %33
    i32 132, label %37
    i32 131, label %71
    i32 134, label %71
    i32 133, label %71
  ]

6:                                                ; preds = %1
  %7 = load %struct.fsm*, %struct.fsm** %2, align 8
  %8 = getelementptr inbounds %struct.fsm, %struct.fsm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %10, align 8
  %12 = load %struct.fsm*, %struct.fsm** %2, align 8
  %13 = call i32 %11(%struct.fsm* %12)
  %14 = load %struct.fsm*, %struct.fsm** %2, align 8
  %15 = load i32, i32* @ST_INITIAL, align 4
  %16 = call i32 @NewState(%struct.fsm* %14, i32 %15)
  %17 = load %struct.fsm*, %struct.fsm** %2, align 8
  %18 = getelementptr inbounds %struct.fsm, %struct.fsm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %20, align 8
  %22 = load %struct.fsm*, %struct.fsm** %2, align 8
  %23 = getelementptr inbounds %struct.fsm, %struct.fsm* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fsm*, %struct.fsm** %2, align 8
  %28 = call i32 %21(i32 %26, %struct.fsm* %27)
  br label %80

29:                                               ; preds = %1
  %30 = load %struct.fsm*, %struct.fsm** %2, align 8
  %31 = load i32, i32* @ST_CLOSED, align 4
  %32 = call i32 @NewState(%struct.fsm* %30, i32 %31)
  br label %80

33:                                               ; preds = %1
  %34 = load %struct.fsm*, %struct.fsm** %2, align 8
  %35 = load i32, i32* @ST_CLOSING, align 4
  %36 = call i32 @NewState(%struct.fsm* %34, i32 %35)
  br label %80

37:                                               ; preds = %1
  %38 = load %struct.fsm*, %struct.fsm** %2, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %41, align 8
  %43 = load %struct.fsm*, %struct.fsm** %2, align 8
  %44 = call i32 %42(%struct.fsm* %43)
  %45 = load %struct.fsm*, %struct.fsm** %2, align 8
  %46 = getelementptr inbounds %struct.fsm, %struct.fsm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 132
  br i1 %48, label %49, label %70

49:                                               ; preds = %37
  %50 = load %struct.fsm*, %struct.fsm** %2, align 8
  %51 = load i32, i32* @FSM_TRM_TIMER, align 4
  %52 = call i32 @FsmInitRestartCounter(%struct.fsm* %50, i32 %51)
  %53 = load %struct.fsm*, %struct.fsm** %2, align 8
  %54 = call i32 @FsmSendTerminateReq(%struct.fsm* %53)
  %55 = load %struct.fsm*, %struct.fsm** %2, align 8
  %56 = load i32, i32* @ST_CLOSING, align 4
  %57 = call i32 @NewState(%struct.fsm* %55, i32 %56)
  %58 = load %struct.fsm*, %struct.fsm** %2, align 8
  %59 = getelementptr inbounds %struct.fsm, %struct.fsm* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %61, align 8
  %63 = load %struct.fsm*, %struct.fsm** %2, align 8
  %64 = getelementptr inbounds %struct.fsm, %struct.fsm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fsm*, %struct.fsm** %2, align 8
  %69 = call i32 %62(i32 %67, %struct.fsm* %68)
  br label %70

70:                                               ; preds = %49, %37
  br label %80

71:                                               ; preds = %1, %1, %1
  %72 = load %struct.fsm*, %struct.fsm** %2, align 8
  %73 = load i32, i32* @FSM_TRM_TIMER, align 4
  %74 = call i32 @FsmInitRestartCounter(%struct.fsm* %72, i32 %73)
  %75 = load %struct.fsm*, %struct.fsm** %2, align 8
  %76 = call i32 @FsmSendTerminateReq(%struct.fsm* %75)
  %77 = load %struct.fsm*, %struct.fsm** %2, align 8
  %78 = load i32, i32* @ST_CLOSING, align 4
  %79 = call i32 @NewState(%struct.fsm* %77, i32 %78)
  br label %80

80:                                               ; preds = %1, %71, %70, %33, %29, %6
  ret void
}

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @FsmSendTerminateReq(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
