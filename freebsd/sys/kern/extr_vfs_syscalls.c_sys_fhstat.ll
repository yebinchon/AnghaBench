; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fhstat_args = type { i32, i32 }
%struct.stat = type { i32 }
%struct.fhandle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fhstat(%struct.thread* %0, %struct.fhstat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fhstat_args*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.fhandle, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fhstat_args* %1, %struct.fhstat_args** %5, align 8
  %9 = load %struct.fhstat_args*, %struct.fhstat_args** %5, align 8
  %10 = getelementptr inbounds %struct.fhstat_args, %struct.fhstat_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, %struct.fhandle* %7, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.fhandle, %struct.fhandle* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kern_fhstat(%struct.thread* %18, i32 %20, %struct.stat* %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.fhstat_args*, %struct.fhstat_args** %5, align 8
  %26 = getelementptr inbounds %struct.fhstat_args, %struct.fhstat_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @copyout(%struct.stat* %6, i32 %27, i32 4)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @copyin(i32, %struct.fhandle*, i32) #1

declare dso_local i32 @kern_fhstat(%struct.thread*, i32, %struct.stat*) #1

declare dso_local i32 @copyout(%struct.stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
