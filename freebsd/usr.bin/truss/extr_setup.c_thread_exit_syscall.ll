; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_thread_exit_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_thread_exit_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { %struct.threadinfo* }
%struct.threadinfo = type { i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*)* @thread_exit_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_exit_syscall(%struct.trussinfo* %0) #0 {
  %2 = alloca %struct.trussinfo*, align 8
  %3 = alloca %struct.threadinfo*, align 8
  store %struct.trussinfo* %0, %struct.trussinfo** %2, align 8
  %4 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %5 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %4, i32 0, i32 0
  %6 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  store %struct.threadinfo* %6, %struct.threadinfo** %3, align 8
  %7 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %8 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @CLOCK_REALTIME, align 4
  %14 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %15 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %14, i32 0, i32 0
  %16 = call i32 @clock_gettime(i32 %13, i32* %15)
  %17 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %18 = call i32 @print_syscall_ret(%struct.trussinfo* %17, i32 0, i32* null)
  %19 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %20 = call i32 @free_syscall(%struct.threadinfo* %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @print_syscall_ret(%struct.trussinfo*, i32, i32*) #1

declare dso_local i32 @free_syscall(%struct.threadinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
