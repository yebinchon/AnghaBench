; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_disable_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_disable_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.yp_event = type { i32 }

@env = common dso_local global %struct.TYPE_4__* null, align 8
@ye_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yp_disable_events() #0 {
  %1 = alloca %struct.yp_event*, align 8
  br label %2

2:                                                ; preds = %9, %0
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @env, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call %struct.yp_event* @TAILQ_FIRST(i32* %6)
  store %struct.yp_event* %7, %struct.yp_event** %1, align 8
  %8 = icmp ne %struct.yp_event* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @env, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.yp_event*, %struct.yp_event** %1, align 8
  %15 = load i32, i32* @ye_entry, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.yp_event* %14, i32 %15)
  %17 = load %struct.yp_event*, %struct.yp_event** %1, align 8
  %18 = getelementptr inbounds %struct.yp_event, %struct.yp_event* %17, i32 0, i32 0
  %19 = call i32 @event_del(i32* %18)
  %20 = load %struct.yp_event*, %struct.yp_event** %1, align 8
  %21 = call i32 @free(%struct.yp_event* %20)
  br label %2

22:                                               ; preds = %2
  ret void
}

declare dso_local %struct.yp_event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.yp_event*, i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @free(%struct.yp_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
