; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmTimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_3__ = type { i32 (%struct.fsm*)* }

@ST_CLOSED = common dso_local global i32 0, align 4
@ST_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FsmTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmTimeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.fsm*
  store %struct.fsm* %5, %struct.fsm** %3, align 8
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.fsm*, %struct.fsm** %3, align 8
  %12 = getelementptr inbounds %struct.fsm, %struct.fsm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %25 [
    i32 130, label %14
    i32 128, label %14
    i32 129, label %17
    i32 131, label %17
    i32 132, label %20
  ]

14:                                               ; preds = %10, %10
  %15 = load %struct.fsm*, %struct.fsm** %3, align 8
  %16 = call i32 @FsmSendTerminateReq(%struct.fsm* %15)
  br label %25

17:                                               ; preds = %10, %10
  %18 = load %struct.fsm*, %struct.fsm** %3, align 8
  %19 = call i32 @FsmSendConfigReq(%struct.fsm* %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.fsm*, %struct.fsm** %3, align 8
  %22 = call i32 @FsmSendConfigReq(%struct.fsm* %21)
  %23 = load %struct.fsm*, %struct.fsm** %3, align 8
  %24 = call i32 @NewState(%struct.fsm* %23, i32 129)
  br label %25

25:                                               ; preds = %10, %20, %17, %14
  %26 = load %struct.fsm*, %struct.fsm** %3, align 8
  %27 = getelementptr inbounds %struct.fsm, %struct.fsm* %26, i32 0, i32 3
  %28 = call i32 @timer_Start(i32* %27)
  br label %103

29:                                               ; preds = %1
  %30 = load %struct.fsm*, %struct.fsm** %3, align 8
  %31 = getelementptr inbounds %struct.fsm, %struct.fsm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %102 [
    i32 130, label %33
    i32 128, label %56
    i32 129, label %79
    i32 131, label %79
    i32 132, label %79
  ]

33:                                               ; preds = %29
  %34 = load %struct.fsm*, %struct.fsm** %3, align 8
  %35 = getelementptr inbounds %struct.fsm, %struct.fsm* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %37, align 8
  %39 = load %struct.fsm*, %struct.fsm** %3, align 8
  %40 = call i32 %38(%struct.fsm* %39)
  %41 = load %struct.fsm*, %struct.fsm** %3, align 8
  %42 = load i32, i32* @ST_CLOSED, align 4
  %43 = call i32 @NewState(%struct.fsm* %41, i32 %42)
  %44 = load %struct.fsm*, %struct.fsm** %3, align 8
  %45 = getelementptr inbounds %struct.fsm, %struct.fsm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %47, align 8
  %49 = load %struct.fsm*, %struct.fsm** %3, align 8
  %50 = getelementptr inbounds %struct.fsm, %struct.fsm* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fsm*, %struct.fsm** %3, align 8
  %55 = call i32 %48(i32 %53, %struct.fsm* %54)
  br label %102

56:                                               ; preds = %29
  %57 = load %struct.fsm*, %struct.fsm** %3, align 8
  %58 = getelementptr inbounds %struct.fsm, %struct.fsm* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %60, align 8
  %62 = load %struct.fsm*, %struct.fsm** %3, align 8
  %63 = call i32 %61(%struct.fsm* %62)
  %64 = load %struct.fsm*, %struct.fsm** %3, align 8
  %65 = load i32, i32* @ST_STOPPED, align 4
  %66 = call i32 @NewState(%struct.fsm* %64, i32 %65)
  %67 = load %struct.fsm*, %struct.fsm** %3, align 8
  %68 = getelementptr inbounds %struct.fsm, %struct.fsm* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %70, align 8
  %72 = load %struct.fsm*, %struct.fsm** %3, align 8
  %73 = getelementptr inbounds %struct.fsm, %struct.fsm* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fsm*, %struct.fsm** %3, align 8
  %78 = call i32 %71(i32 %76, %struct.fsm* %77)
  br label %102

79:                                               ; preds = %29, %29, %29
  %80 = load %struct.fsm*, %struct.fsm** %3, align 8
  %81 = getelementptr inbounds %struct.fsm, %struct.fsm* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %83, align 8
  %85 = load %struct.fsm*, %struct.fsm** %3, align 8
  %86 = call i32 %84(%struct.fsm* %85)
  %87 = load %struct.fsm*, %struct.fsm** %3, align 8
  %88 = load i32, i32* @ST_STOPPED, align 4
  %89 = call i32 @NewState(%struct.fsm* %87, i32 %88)
  %90 = load %struct.fsm*, %struct.fsm** %3, align 8
  %91 = getelementptr inbounds %struct.fsm, %struct.fsm* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %93, align 8
  %95 = load %struct.fsm*, %struct.fsm** %3, align 8
  %96 = getelementptr inbounds %struct.fsm, %struct.fsm* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.fsm*, %struct.fsm** %3, align 8
  %101 = call i32 %94(i32 %99, %struct.fsm* %100)
  br label %102

102:                                              ; preds = %29, %79, %56, %33
  br label %103

103:                                              ; preds = %102, %25
  ret void
}

declare dso_local i32 @FsmSendTerminateReq(%struct.fsm*) #1

declare dso_local i32 @FsmSendConfigReq(%struct.fsm*) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

declare dso_local i32 @timer_Start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
