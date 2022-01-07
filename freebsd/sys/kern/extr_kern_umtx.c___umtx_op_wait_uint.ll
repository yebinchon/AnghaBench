; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_wait_uint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_wait_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i32, i64, i32* }
%struct._umtx_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_wait_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_wait_uint(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._umtx_op_args*, align 8
  %6 = alloca %struct._umtx_time, align 4
  %7 = alloca %struct._umtx_time*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %5, align 8
  %9 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %10 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct._umtx_time* null, %struct._umtx_time** %7, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %16 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %19 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @umtx_copyin_umtx_time(i32* %17, i64 %20, %struct._umtx_time* %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %14
  store %struct._umtx_time* %6, %struct._umtx_time** %7, align 8
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %30 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %33 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %36 = call i32 @do_wait(%struct.thread* %28, i32 %31, i32 %34, %struct._umtx_time* %35, i32 1, i32 0)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @umtx_copyin_umtx_time(i32*, i64, %struct._umtx_time*) #1

declare dso_local i32 @do_wait(%struct.thread*, i32, i32, %struct._umtx_time*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
