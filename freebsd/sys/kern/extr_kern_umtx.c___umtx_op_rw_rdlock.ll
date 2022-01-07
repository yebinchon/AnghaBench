; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_rw_rdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_rw_rdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i32, i64, i32* }
%struct._umtx_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_rw_rdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_rw_rdlock(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._umtx_op_args*, align 8
  %6 = alloca %struct._umtx_time, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %5, align 8
  %8 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %9 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %15 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %18 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @do_rw_rdlock(%struct.thread* %13, i32 %16, i32 %19, %struct._umtx_time* null)
  store i32 %20, i32* %7, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %23 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %26 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @umtx_copyin_umtx_time(i32* %24, i64 %27, %struct._umtx_time* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %21
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %36 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %39 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @do_rw_rdlock(%struct.thread* %34, i32 %37, i32 %40, %struct._umtx_time* %6)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %12
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @do_rw_rdlock(%struct.thread*, i32, i32, %struct._umtx_time*) #1

declare dso_local i32 @umtx_copyin_umtx_time(i32*, i64, %struct._umtx_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
