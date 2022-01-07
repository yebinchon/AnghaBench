; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_early_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@main_cons = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"XCONS LOCK\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@xencons_hypervisor_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@xencons_ring_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xencons_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xencons_early_init() #0 {
  %1 = load i32, i32* @MTX_SPIN, align 4
  %2 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @main_cons, i32 0, i32 1), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = call i64 (...) @xen_get_console_evtchn()
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.TYPE_5__* @xencons_hypervisor_ops, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @main_cons, i32 0, i32 0), align 8
  br label %7

6:                                                ; preds = %0
  store %struct.TYPE_5__* @xencons_ring_ops, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @main_cons, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %6, %5
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @main_cons, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %9, align 8
  %11 = call i32 %10(%struct.TYPE_6__* @main_cons)
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @xen_get_console_evtchn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
