; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_helper_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_helper_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i32 }
%struct.syscall_helper_data = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_syscall_helper_unregister(%struct.sysent* %0, %struct.syscall_helper_data* %1) #0 {
  %3 = alloca %struct.sysent*, align 8
  %4 = alloca %struct.syscall_helper_data*, align 8
  %5 = alloca %struct.syscall_helper_data*, align 8
  store %struct.sysent* %0, %struct.sysent** %3, align 8
  store %struct.syscall_helper_data* %1, %struct.syscall_helper_data** %4, align 8
  %6 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %4, align 8
  store %struct.syscall_helper_data* %6, %struct.syscall_helper_data** %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %5, align 8
  %9 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.sysent*, %struct.sysent** %3, align 8
  %14 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %5, align 8
  %15 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %5, align 8
  %18 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %17, i32 0, i32 1
  %19 = call i32 @kern_syscall_deregister(%struct.sysent* %13, i32 %16, i32* %18)
  %20 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %5, align 8
  %21 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %5, align 8
  %24 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %23, i32 1
  store %struct.syscall_helper_data* %24, %struct.syscall_helper_data** %5, align 8
  br label %7

25:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @kern_syscall_deregister(%struct.sysent*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
