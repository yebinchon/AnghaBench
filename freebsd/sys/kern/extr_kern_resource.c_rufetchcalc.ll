; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rufetchcalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_rufetchcalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.rusage = type { i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rufetchcalc(%struct.proc* %0, %struct.rusage* %1, %struct.timeval* %2, %struct.timeval* %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.rusage*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.timeval*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.rusage* %1, %struct.rusage** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = call i32 @PROC_STATLOCK(%struct.proc* %9)
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = load %struct.rusage*, %struct.rusage** %6, align 8
  %13 = call i32 @rufetch(%struct.proc* %11, %struct.rusage* %12)
  %14 = load %struct.proc*, %struct.proc** %5, align 8
  %15 = load %struct.timeval*, %struct.timeval** %7, align 8
  %16 = load %struct.timeval*, %struct.timeval** %8, align 8
  %17 = call i32 @calcru(%struct.proc* %14, %struct.timeval* %15, %struct.timeval* %16)
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = call i32 @PROC_STATUNLOCK(%struct.proc* %18)
  ret void
}

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @rufetch(%struct.proc*, %struct.rusage*) #1

declare dso_local i32 @calcru(%struct.proc*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
