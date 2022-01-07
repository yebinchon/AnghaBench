; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_sys_pipe2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_sys_pipe2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pipe2_args = type { i32, i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_pipe2(%struct.thread* %0, %struct.pipe2_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.pipe2_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.pipe2_args* %1, %struct.pipe2_args** %5, align 8
  %8 = load %struct.pipe2_args*, %struct.pipe2_args** %5, align 8
  %9 = getelementptr inbounds %struct.pipe2_args, %struct.pipe2_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @O_CLOEXEC, align 4
  %12 = load i32, i32* @O_NONBLOCK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %22 = load %struct.pipe2_args*, %struct.pipe2_args** %5, align 8
  %23 = getelementptr inbounds %struct.pipe2_args, %struct.pipe2_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kern_pipe(%struct.thread* %20, i32* %21, i32 %24, i32* null, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %49

30:                                               ; preds = %19
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = load %struct.pipe2_args*, %struct.pipe2_args** %5, align 8
  %33 = getelementptr inbounds %struct.pipe2_args, %struct.pipe2_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @copyout(i32* %31, i32 %34, i32 8)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kern_close(%struct.thread* %39, i32 %41)
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kern_close(%struct.thread* %43, i32 %45)
  br label %47

47:                                               ; preds = %38, %30
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %28, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @kern_pipe(%struct.thread*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @kern_close(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
