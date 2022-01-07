; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.itimer = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @itimer_accept(%struct.proc* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.itimer*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %9, i32 %10)
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.itimer* @itimer_find(%struct.proc* %12, i32 %13)
  store %struct.itimer* %14, %struct.itimer** %8, align 8
  %15 = load %struct.itimer*, %struct.itimer** %8, align 8
  %16 = icmp ne %struct.itimer* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.itimer*, %struct.itimer** %8, align 8
  %19 = getelementptr inbounds %struct.itimer, %struct.itimer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.itimer*, %struct.itimer** %8, align 8
  %24 = getelementptr inbounds %struct.itimer, %struct.itimer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.itimer*, %struct.itimer** %8, align 8
  %27 = getelementptr inbounds %struct.itimer, %struct.itimer* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.itimer*, %struct.itimer** %8, align 8
  %29 = getelementptr inbounds %struct.itimer, %struct.itimer* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.itimer*, %struct.itimer** %8, align 8
  %31 = call i32 @ITIMER_UNLOCK(%struct.itimer* %30)
  store i32 0, i32* %4, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local %struct.itimer* @itimer_find(%struct.proc*, i32) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
