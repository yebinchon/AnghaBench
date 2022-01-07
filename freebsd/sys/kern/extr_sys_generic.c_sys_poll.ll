; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.poll_args = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@INFTIM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_poll(%struct.thread* %0, %struct.poll_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.poll_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.poll_args* %1, %struct.poll_args** %5, align 8
  %8 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %9 = getelementptr inbounds %struct.poll_args, %struct.poll_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INFTIM, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %15 = getelementptr inbounds %struct.poll_args, %struct.poll_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %13
  %21 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %22 = getelementptr inbounds %struct.poll_args, %struct.poll_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 1000
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %27 = getelementptr inbounds %struct.poll_args, %struct.poll_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %28, 1000
  %30 = mul nsw i32 %29, 1000000
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  store %struct.timespec* %6, %struct.timespec** %7, align 8
  br label %33

32:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %7, align 8
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %36 = getelementptr inbounds %struct.poll_args, %struct.poll_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.poll_args*, %struct.poll_args** %5, align 8
  %39 = getelementptr inbounds %struct.poll_args, %struct.poll_args* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.timespec*, %struct.timespec** %7, align 8
  %42 = call i32 @kern_poll(%struct.thread* %34, i32 %37, i32 %40, %struct.timespec* %41, i32* null)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @kern_poll(%struct.thread*, i32, i32, %struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
