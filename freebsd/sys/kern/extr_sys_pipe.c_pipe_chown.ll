; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_chown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pipe* }
%struct.pipe = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@PIPE_NAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, %struct.ucred*, %struct.thread*)* @pipe_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_chown(%struct.file* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.pipe*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.pipe*, %struct.pipe** %14, align 8
  store %struct.pipe* %15, %struct.pipe** %11, align 8
  %16 = load %struct.pipe*, %struct.pipe** %11, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PIPE_NAMED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ucred*, %struct.ucred** %9, align 8
  %27 = load %struct.thread*, %struct.thread** %10, align 8
  %28 = call i32 @vn_chown(%struct.file* %23, i32 %24, i32 %25, %struct.ucred* %26, %struct.thread* %27)
  store i32 %28, i32* %12, align 4
  br label %36

29:                                               ; preds = %5
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ucred*, %struct.ucred** %9, align 8
  %34 = load %struct.thread*, %struct.thread** %10, align 8
  %35 = call i32 @invfo_chown(%struct.file* %30, i32 %31, i32 %32, %struct.ucred* %33, %struct.thread* %34)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i32, i32* %12, align 4
  ret i32 %37
}

declare dso_local i32 @vn_chown(%struct.file*, i32, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @invfo_chown(%struct.file*, i32, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
