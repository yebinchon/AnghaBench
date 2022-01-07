; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_fill_kinfo_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_fill_kinfo_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kinfo_proc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_kinfo_proc(%struct.proc* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %5 = load %struct.proc*, %struct.proc** %3, align 8
  %6 = call i32* @FIRST_THREAD_IN_PROC(%struct.proc* %5)
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @MPASS(i32 %8)
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %12 = call i32 @fill_kinfo_proc_only(%struct.proc* %10, %struct.kinfo_proc* %11)
  %13 = load %struct.proc*, %struct.proc** %3, align 8
  %14 = call i32* @FIRST_THREAD_IN_PROC(%struct.proc* %13)
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %16 = call i32 @fill_kinfo_thread(i32* %14, %struct.kinfo_proc* %15, i32 0)
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %19 = call i32 @fill_kinfo_aggregate(%struct.proc* %17, %struct.kinfo_proc* %18)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

declare dso_local i32 @fill_kinfo_proc_only(%struct.proc*, %struct.kinfo_proc*) #1

declare dso_local i32 @fill_kinfo_thread(i32*, %struct.kinfo_proc*, i32) #1

declare dso_local i32 @fill_kinfo_aggregate(%struct.proc*, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
