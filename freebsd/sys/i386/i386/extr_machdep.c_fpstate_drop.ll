; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fpstate_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fpstate_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"fpstate_drop: kernel-owned fpu\00", align 1
@fpcurthread = common dso_local global i32 0, align 4
@PCB_NPXINITDONE = common dso_local global i32 0, align 4
@PCB_NPXUSERINITDONE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @fpstate_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpstate_drop(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = load %struct.thread*, %struct.thread** %2, align 8
  %4 = getelementptr inbounds %struct.thread, %struct.thread* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @PCB_USER_FPU(i32 %5)
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @critical_enter()
  %9 = load i32, i32* @fpcurthread, align 4
  %10 = call %struct.thread* @PCPU_GET(i32 %9)
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = icmp eq %struct.thread* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @npxdrop()
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @PCB_NPXINITDONE, align 4
  %17 = load i32, i32* @PCB_NPXUSERINITDONE, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCB_USER_FPU(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @npxdrop(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
