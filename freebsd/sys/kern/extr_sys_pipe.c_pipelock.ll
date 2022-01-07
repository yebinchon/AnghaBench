; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PIPE_LOCKFL = common dso_local global i32 0, align 4
@PIPE_LWANT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pipelk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe*, i32)* @pipelock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipelock(%struct.pipe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pipe*, %struct.pipe** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PIPE_LOCK_ASSERT(%struct.pipe* %7, i32 %8)
  br label %10

10:                                               ; preds = %41, %2
  %11 = load %struct.pipe*, %struct.pipe** %4, align 8
  %12 = getelementptr inbounds %struct.pipe, %struct.pipe* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PIPE_LOCKFL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load i32, i32* @PIPE_LWANT, align 4
  %19 = load %struct.pipe*, %struct.pipe** %4, align 8
  %20 = getelementptr inbounds %struct.pipe, %struct.pipe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pipe*, %struct.pipe** %4, align 8
  %24 = load %struct.pipe*, %struct.pipe** %4, align 8
  %25 = call i32 @PIPE_MTX(%struct.pipe* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @PRIBIO, align 4
  %30 = load i32, i32* @PCATCH, align 4
  %31 = or i32 %29, %30
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @PRIBIO, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  %36 = call i32 @msleep(%struct.pipe* %23, i32 %25, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %34
  br label %10

42:                                               ; preds = %10
  %43 = load i32, i32* @PIPE_LOCKFL, align 4
  %44 = load %struct.pipe*, %struct.pipe** %4, align 8
  %45 = getelementptr inbounds %struct.pipe, %struct.pipe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @PIPE_LOCK_ASSERT(%struct.pipe*, i32) #1

declare dso_local i32 @msleep(%struct.pipe*, i32, i32, i8*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
