; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* }
%struct.file = type { %struct.pipe* }
%struct.pipe = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@PIPE_NAMED = common dso_local global i32 0, align 4
@vnops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @pipe_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_truncate(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.pipe*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.pipe*, %struct.pipe** %12, align 8
  store %struct.pipe* %13, %struct.pipe** %9, align 8
  %14 = load %struct.pipe*, %struct.pipe** %9, align 8
  %15 = getelementptr inbounds %struct.pipe, %struct.pipe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PIPE_NAMED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)*, i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vnops, i32 0, i32 0), align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ucred*, %struct.ucred** %7, align 8
  %25 = load %struct.thread*, %struct.thread** %8, align 8
  %26 = call i32 %21(%struct.file* %22, i32 %23, %struct.ucred* %24, %struct.thread* %25)
  store i32 %26, i32* %10, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ucred*, %struct.ucred** %7, align 8
  %31 = load %struct.thread*, %struct.thread** %8, align 8
  %32 = call i32 @invfo_truncate(%struct.file* %28, i32 %29, %struct.ucred* %30, %struct.thread* %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local i32 @invfo_truncate(%struct.file*, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
