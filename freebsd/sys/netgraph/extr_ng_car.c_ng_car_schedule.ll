; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookinfo = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@hz = common dso_local global i32 0, align 4
@ng_car_q_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hookinfo*)* @ng_car_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_car_schedule(%struct.hookinfo* %0) #0 {
  %2 = alloca %struct.hookinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.hookinfo* %0, %struct.hookinfo** %2, align 8
  %4 = load %struct.hookinfo*, %struct.hookinfo** %2, align 8
  %5 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 0, %6
  %8 = load i32, i32* @hz, align 4
  %9 = mul nsw i32 %7, %8
  %10 = mul nsw i32 %9, 8
  %11 = load %struct.hookinfo*, %struct.hookinfo** %2, align 8
  %12 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %10, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = load %struct.hookinfo*, %struct.hookinfo** %2, align 8
  %18 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %17, i32 0, i32 2
  %19 = load %struct.hookinfo*, %struct.hookinfo** %2, align 8
  %20 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NG_HOOK_NODE(i32 %21)
  %23 = load %struct.hookinfo*, %struct.hookinfo** %2, align 8
  %24 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ng_callout(i32* %18, i32 %22, i32 %25, i32 %26, i32* @ng_car_q_event, i32* null, i32 0)
  ret void
}

declare dso_local i32 @ng_callout(i32*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
