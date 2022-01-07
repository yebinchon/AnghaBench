; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_sys_getrlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_sys_getrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.__getrlimit_args = type { i64, i32 }
%struct.rlimit = type { i32 }

@RLIM_NLIMITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getrlimit(%struct.thread* %0, %struct.__getrlimit_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.__getrlimit_args*, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.__getrlimit_args* %1, %struct.__getrlimit_args** %5, align 8
  %8 = load %struct.__getrlimit_args*, %struct.__getrlimit_args** %5, align 8
  %9 = getelementptr inbounds %struct.__getrlimit_args, %struct.__getrlimit_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RLIM_NLIMITS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load %struct.__getrlimit_args*, %struct.__getrlimit_args** %5, align 8
  %18 = getelementptr inbounds %struct.__getrlimit_args, %struct.__getrlimit_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @lim_rlimit(%struct.thread* %16, i64 %19, %struct.rlimit* %6)
  %21 = load %struct.__getrlimit_args*, %struct.__getrlimit_args** %5, align 8
  %22 = getelementptr inbounds %struct.__getrlimit_args, %struct.__getrlimit_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @copyout(%struct.rlimit* %6, i32 %23, i32 4)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @lim_rlimit(%struct.thread*, i64, %struct.rlimit*) #1

declare dso_local i32 @copyout(%struct.rlimit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
