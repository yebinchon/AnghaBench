; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimer = type { i32 }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.itimer** }

@MA_OWNED = common dso_local global i32 0, align 4
@TIMER_MAX = common dso_local global i32 0, align 4
@ITF_DELETING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.itimer* (%struct.proc*, i32)* @itimer_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.itimer* @itimer_find(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.itimer*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimer*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.proc*, %struct.proc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TIMER_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.itimer**, %struct.itimer*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.itimer*, %struct.itimer** %26, i64 %28
  %30 = load %struct.itimer*, %struct.itimer** %29, align 8
  store %struct.itimer* %30, %struct.itimer** %6, align 8
  %31 = icmp eq %struct.itimer* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21, %17, %14, %2
  store %struct.itimer* null, %struct.itimer** %3, align 8
  br label %47

33:                                               ; preds = %21
  %34 = load %struct.itimer*, %struct.itimer** %6, align 8
  %35 = call i32 @ITIMER_LOCK(%struct.itimer* %34)
  %36 = load %struct.itimer*, %struct.itimer** %6, align 8
  %37 = getelementptr inbounds %struct.itimer, %struct.itimer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ITF_DELETING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.itimer*, %struct.itimer** %6, align 8
  %44 = call i32 @ITIMER_UNLOCK(%struct.itimer* %43)
  store %struct.itimer* null, %struct.itimer** %6, align 8
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.itimer*, %struct.itimer** %6, align 8
  store %struct.itimer* %46, %struct.itimer** %3, align 8
  br label %47

47:                                               ; preds = %45, %32
  %48 = load %struct.itimer*, %struct.itimer** %3, align 8
  ret %struct.itimer* %48
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @ITIMER_LOCK(%struct.itimer*) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
