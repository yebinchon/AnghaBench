; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipeselwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipeselwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PIPE_SEL = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PIPE_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pipeselwakeup(%struct.pipe* %0) #0 {
  %2 = alloca %struct.pipe*, align 8
  store %struct.pipe* %0, %struct.pipe** %2, align 8
  %3 = load %struct.pipe*, %struct.pipe** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @PIPE_LOCK_ASSERT(%struct.pipe* %3, i32 %4)
  %6 = load %struct.pipe*, %struct.pipe** %2, align 8
  %7 = getelementptr inbounds %struct.pipe, %struct.pipe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PIPE_SEL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.pipe*, %struct.pipe** %2, align 8
  %14 = getelementptr inbounds %struct.pipe, %struct.pipe* %13, i32 0, i32 1
  %15 = load i32, i32* @PSOCK, align 4
  %16 = call i32 @selwakeuppri(%struct.TYPE_3__* %14, i32 %15)
  %17 = load %struct.pipe*, %struct.pipe** %2, align 8
  %18 = getelementptr inbounds %struct.pipe, %struct.pipe* %17, i32 0, i32 1
  %19 = call i32 @SEL_WAITING(%struct.TYPE_3__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @PIPE_SEL, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.pipe*, %struct.pipe** %2, align 8
  %25 = getelementptr inbounds %struct.pipe, %struct.pipe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %12
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.pipe*, %struct.pipe** %2, align 8
  %31 = getelementptr inbounds %struct.pipe, %struct.pipe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PIPE_ASYNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.pipe*, %struct.pipe** %2, align 8
  %38 = getelementptr inbounds %struct.pipe, %struct.pipe* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.pipe*, %struct.pipe** %2, align 8
  %43 = getelementptr inbounds %struct.pipe, %struct.pipe* %42, i32 0, i32 2
  %44 = load i32, i32* @SIGIO, align 4
  %45 = call i32 @pgsigio(i64* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %41, %36, %29
  %47 = load %struct.pipe*, %struct.pipe** %2, align 8
  %48 = getelementptr inbounds %struct.pipe, %struct.pipe* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @KNOTE_LOCKED(i32* %49, i32 0)
  ret void
}

declare dso_local i32 @PIPE_LOCK_ASSERT(%struct.pipe*, i32) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SEL_WAITING(%struct.TYPE_3__*) #1

declare dso_local i32 @pgsigio(i64*, i32, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
