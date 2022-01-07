; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_setowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_setowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_pi = type { %struct.thread* }
%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32 }

@umtx_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@pi_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umtx_pi*, %struct.thread*)* @umtx_pi_setowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtx_pi_setowner(%struct.umtx_pi* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.umtx_pi*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.umtx_q*, align 8
  store %struct.umtx_pi* %0, %struct.umtx_pi** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.umtx_q*, %struct.umtx_q** %7, align 8
  store %struct.umtx_q* %8, %struct.umtx_q** %5, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* @umtx_lock, i32 %9)
  %11 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %12 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %11, i32 0, i32 0
  %13 = load %struct.thread*, %struct.thread** %12, align 8
  %14 = icmp eq %struct.thread* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %19 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %18, i32 0, i32 0
  store %struct.thread* %17, %struct.thread** %19, align 8
  %20 = load %struct.umtx_q*, %struct.umtx_q** %5, align 8
  %21 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %20, i32 0, i32 0
  %22 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %23 = load i32, i32* @pi_link, align 4
  %24 = call i32 @TAILQ_INSERT_TAIL(i32* %21, %struct.umtx_pi* %22, i32 %23)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.umtx_pi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
