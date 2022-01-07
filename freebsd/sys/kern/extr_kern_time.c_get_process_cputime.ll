; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_get_process_cputime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_get_process_cputime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }
%struct.rusage = type { i32 }

@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@switchtime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.timespec*)* @get_process_cputime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_process_cputime(%struct.proc* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rusage, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = call i32 @PROC_STATLOCK(%struct.proc* %7)
  %9 = load %struct.proc*, %struct.proc** %3, align 8
  %10 = call i32 @rufetch(%struct.proc* %9, %struct.rusage* %6)
  %11 = load %struct.proc*, %struct.proc** %3, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  %18 = load %struct.proc*, %struct.proc** %3, align 8
  %19 = icmp eq %struct.proc* %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = call i64 (...) @cpu_ticks()
  %22 = load i32, i32* @switchtime, align 4
  %23 = call i64 @PCPU_GET(i32 %22)
  %24 = sub nsw i64 %21, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.proc*, %struct.proc** %3, align 8
  %31 = call i32 @PROC_STATUNLOCK(%struct.proc* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.timespec*, %struct.timespec** %4, align 8
  %34 = call i32 @cputick2timespec(i32 %32, %struct.timespec* %33)
  ret void
}

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @rufetch(%struct.proc*, %struct.rusage*) #1

declare dso_local i64 @cpu_ticks(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

declare dso_local i32 @cputick2timespec(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
