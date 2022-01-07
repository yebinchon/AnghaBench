; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_els_delay_timer_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_els_delay_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@OCS_EVT_TIMER_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ocs_els_delay_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_els_delay_timer_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @ocs_node_lock_try(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load i32, i32* @OCS_EVT_TIMER_EXPIRED, align 4
  %16 = call i32 @ocs_els_post_event(%struct.TYPE_4__* %14, i32 %15, i32* null)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ocs_node_unlock(i32* %17)
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = call i32 @ocs_setup_timer(i32 %22, i32* %24, void (i8*)* @ocs_els_delay_timer_cb, %struct.TYPE_4__* %25, i32 1)
  br label %27

27:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @ocs_node_lock_try(i32*) #1

declare dso_local i32 @ocs_els_post_event(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @ocs_node_unlock(i32*) #1

declare dso_local i32 @ocs_setup_timer(i32, i32*, void (i8*)*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
