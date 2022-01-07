; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_cur_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_cur_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.rlimit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lim_cur_proc(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rlimit, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @lim_rlimit_proc(%struct.proc* %6, i32 %7, %struct.rlimit* %5)
  %9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

declare dso_local i32 @lim_rlimit_proc(%struct.proc*, i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
