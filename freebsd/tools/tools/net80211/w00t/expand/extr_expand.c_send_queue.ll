; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_send_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_send_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, %struct.queue* }
%struct.queue = type { %struct.queue* }

@S_WAIT_RELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_queue(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.queue*, align 8
  %4 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %5 = load %struct.params*, %struct.params** %2, align 8
  %6 = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 2
  %7 = load %struct.queue*, %struct.queue** %6, align 8
  store %struct.queue* %7, %struct.queue** %3, align 8
  %8 = load %struct.queue*, %struct.queue** %3, align 8
  %9 = call i32 @assert(%struct.queue* %8)
  %10 = load %struct.queue*, %struct.queue** %3, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 0
  %12 = load %struct.queue*, %struct.queue** %11, align 8
  %13 = call i32 @assert(%struct.queue* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.params*, %struct.params** %2, align 8
  %19 = load %struct.params*, %struct.params** %2, align 8
  %20 = getelementptr inbounds %struct.params, %struct.params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = call i32 @send_mcast(%struct.params* %18, i32 %21)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* @S_WAIT_RELAY, align 4
  %29 = load %struct.params*, %struct.params** %2, align 8
  %30 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @assert(%struct.queue*) #1

declare dso_local i32 @send_mcast(%struct.params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
