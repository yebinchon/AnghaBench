; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_cv_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_cv_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i32, i32, i32* }
%struct.timespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_cv_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_cv_wait(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._umtx_op_args*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %5, align 8
  %9 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %10 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %6, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %16 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @umtx_copyin_timeout(i32* %17, %struct.timespec* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %14
  store %struct.timespec* %7, %struct.timespec** %6, align 8
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %27 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %30 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.timespec*, %struct.timespec** %6, align 8
  %33 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %34 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @do_cv_wait(%struct.thread* %25, i32 %28, i32 %31, %struct.timespec* %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @umtx_copyin_timeout(i32*, %struct.timespec*) #1

declare dso_local i32 @do_cv_wait(%struct.thread*, i32, i32, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
