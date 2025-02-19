; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_rw_wrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_rw_wrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i64, i32* }
%struct._umtx_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_rw_wrlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_rw_wrlock(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._umtx_op_args*, align 8
  %6 = alloca %struct._umtx_time, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %5, align 8
  %8 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %9 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %15 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @do_rw_wrlock(%struct.thread* %13, i32 %16, %struct._umtx_time* null)
  store i32 %17, i32* %7, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %20 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %23 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @umtx_copyin_umtx_time(i32* %21, i64 %24, %struct._umtx_time* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %33 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @do_rw_wrlock(%struct.thread* %31, i32 %34, %struct._umtx_time* %6)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %12
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @do_rw_wrlock(%struct.thread*, i32, %struct._umtx_time*) #1

declare dso_local i32 @umtx_copyin_umtx_time(i32*, i64, %struct._umtx_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
