; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_helper_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_helper_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i32 }
%struct.syscall_helper_data = type { i64, i32, i32, i32 }

@NO_SYSCALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_syscall_helper_register(%struct.sysent* %0, %struct.syscall_helper_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysent*, align 8
  %6 = alloca %struct.syscall_helper_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.syscall_helper_data*, align 8
  %9 = alloca i32, align 4
  store %struct.sysent* %0, %struct.sysent** %5, align 8
  store %struct.syscall_helper_data* %1, %struct.syscall_helper_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %6, align 8
  store %struct.syscall_helper_data* %10, %struct.syscall_helper_data** %8, align 8
  br label %11

11:                                               ; preds = %37, %3
  %12 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %8, align 8
  %13 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NO_SYSCALL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.sysent*, %struct.sysent** %5, align 8
  %19 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %8, align 8
  %20 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %19, i32 0, i32 0
  %21 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %8, align 8
  %22 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %21, i32 0, i32 3
  %23 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %8, align 8
  %24 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %23, i32 0, i32 2
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @kern_syscall_register(%struct.sysent* %18, i64* %20, i32* %22, i32* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.sysent*, %struct.sysent** %5, align 8
  %31 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %6, align 8
  %32 = call i32 @kern_syscall_helper_unregister(%struct.sysent* %30, %struct.syscall_helper_data* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %17
  %35 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %8, align 8
  %36 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.syscall_helper_data*, %struct.syscall_helper_data** %8, align 8
  %39 = getelementptr inbounds %struct.syscall_helper_data, %struct.syscall_helper_data* %38, i32 1
  store %struct.syscall_helper_data* %39, %struct.syscall_helper_data** %8, align 8
  br label %11

40:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @kern_syscall_register(%struct.sysent*, i64*, i32*, i32*, i32) #1

declare dso_local i32 @kern_syscall_helper_unregister(%struct.sysent*, %struct.syscall_helper_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
