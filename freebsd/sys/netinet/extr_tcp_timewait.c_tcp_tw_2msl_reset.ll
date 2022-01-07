; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_tw_2msl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_timewait.c_tcp_tw_2msl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcptw = type { i64, i32 }

@V_tw_lock = common dso_local global i32 0, align 4
@V_twq_2msl = common dso_local global i32 0, align 4
@tw_2msl = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@tcp_msl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcptw*, i32)* @tcp_tw_2msl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_tw_2msl_reset(%struct.tcptw* %0, i32 %1) #0 {
  %3 = alloca %struct.tcptw*, align 8
  %4 = alloca i32, align 4
  store %struct.tcptw* %0, %struct.tcptw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @NET_EPOCH_ASSERT()
  %6 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %7 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @INP_WLOCK_ASSERT(i32 %8)
  %10 = load i32, i32* @V_tw_lock, align 4
  %11 = call i32 @TW_WLOCK(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %16 = load i32, i32* @tw_2msl, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* @V_twq_2msl, %struct.tcptw* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i64, i64* @ticks, align 8
  %20 = load i32, i32* @tcp_msl, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %25 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.tcptw*, %struct.tcptw** %3, align 8
  %27 = load i32, i32* @tw_2msl, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* @V_twq_2msl, %struct.tcptw* %26, i32 %27)
  %29 = load i32, i32* @V_tw_lock, align 4
  %30 = call i32 @TW_WUNLOCK(i32 %29)
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @TW_WLOCK(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tcptw*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tcptw*, i32) #1

declare dso_local i32 @TW_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
