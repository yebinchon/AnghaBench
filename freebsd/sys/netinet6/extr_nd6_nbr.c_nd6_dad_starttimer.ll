; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_starttimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_starttimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i32 }

@nd6_dad_timer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dadq*, i32, i32)* @nd6_dad_starttimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_starttimer(%struct.dadq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dadq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dadq* %0, %struct.dadq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @NET_EPOCH_ASSERT()
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.dadq*, %struct.dadq** %4, align 8
  %12 = call i32 @nd6_dad_ns_output(%struct.dadq* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.dadq*, %struct.dadq** %4, align 8
  %15 = getelementptr inbounds %struct.dadq, %struct.dadq* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* @nd6_dad_timer, align 8
  %18 = inttoptr i64 %17 to void (i8*)*
  %19 = load %struct.dadq*, %struct.dadq** %4, align 8
  %20 = bitcast %struct.dadq* %19 to i8*
  %21 = call i32 @callout_reset(i32* %15, i32 %16, void (i8*)* %18, i8* %20)
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @nd6_dad_ns_output(%struct.dadq*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
