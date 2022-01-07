; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_enable_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_yp_enable_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.yp_event = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@yp_fd_event = common dso_local global i32 0, align 4
@env = common dso_local global %struct.TYPE_4__* null, align 8
@ye_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yp_enable_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.yp_event*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (...) @getdtablesize()
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = call %struct.yp_event* @calloc(i32 1, i32 4)
  store %struct.yp_event* %8, %struct.yp_event** %2, align 8
  %9 = icmp eq %struct.yp_event* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @fatal(i32* null)
  br label %12

12:                                               ; preds = %10, %7
  %13 = load %struct.yp_event*, %struct.yp_event** %2, align 8
  %14 = getelementptr inbounds %struct.yp_event, %struct.yp_event* %13, i32 0, i32 0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @EV_READ, align 4
  %17 = load i32, i32* @yp_fd_event, align 4
  %18 = call i32 @event_set(i32* %14, i32 %15, i32 %16, i32 %17, i32* null)
  %19 = load %struct.yp_event*, %struct.yp_event** %2, align 8
  %20 = getelementptr inbounds %struct.yp_event, %struct.yp_event* %19, i32 0, i32 0
  %21 = call i32 @event_add(i32* %20, i32* null)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @env, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.yp_event*, %struct.yp_event** %2, align 8
  %27 = load i32, i32* @ye_entry, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %25, %struct.yp_event* %26, i32 %27)
  br label %29

29:                                               ; preds = %12
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %3

32:                                               ; preds = %3
  ret void
}

declare dso_local i32 @getdtablesize(...) #1

declare dso_local %struct.yp_event* @calloc(i32, i32) #1

declare dso_local i32 @fatal(i32*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.yp_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
