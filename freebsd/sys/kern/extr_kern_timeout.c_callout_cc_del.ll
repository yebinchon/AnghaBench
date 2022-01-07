; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_callout_cc_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_callout_cc_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.callout = type { i32, i32* }
%struct.callout_cpu = type { i32 }

@CALLOUT_LOCAL_ALLOC = common dso_local global i32 0, align 4
@c_links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callout*, %struct.callout_cpu*)* @callout_cc_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callout_cc_del(%struct.callout* %0, %struct.callout_cpu* %1) #0 {
  %3 = alloca %struct.callout*, align 8
  %4 = alloca %struct.callout_cpu*, align 8
  store %struct.callout* %0, %struct.callout** %3, align 8
  store %struct.callout_cpu* %1, %struct.callout_cpu** %4, align 8
  %5 = load %struct.callout*, %struct.callout** %3, align 8
  %6 = getelementptr inbounds %struct.callout, %struct.callout* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CALLOUT_LOCAL_ALLOC, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.callout*, %struct.callout** %3, align 8
  %14 = getelementptr inbounds %struct.callout, %struct.callout* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.callout_cpu*, %struct.callout_cpu** %4, align 8
  %16 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %15, i32 0, i32 0
  %17 = load %struct.callout*, %struct.callout** %3, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c_links, i32 0, i32 0), align 4
  %19 = call i32 @SLIST_INSERT_HEAD(i32* %16, %struct.callout* %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.callout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
