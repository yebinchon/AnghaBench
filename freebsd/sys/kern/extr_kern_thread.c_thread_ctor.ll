; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, i32, i32, i32 }

@TDS_INACTIVE = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i32 0, align 4
@PRI_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @thread_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.thread*
  store %struct.thread* %11, %struct.thread** %9, align 8
  %12 = load i32, i32* @TDS_INACTIVE, align 4
  %13 = load %struct.thread*, %struct.thread** %9, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @NOCPU, align 4
  %16 = load %struct.thread*, %struct.thread** %9, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.thread*, %struct.thread** %9, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 4
  store i32 %15, i32* %19, align 4
  %20 = call i32 (...) @tid_alloc()
  %21 = load %struct.thread*, %struct.thread** %9, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.thread*, %struct.thread** %9, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @PRI_MAX, align 4
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.thread*, %struct.thread** %9, align 8
  %29 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (i8*, i32, i8*, i32)* @thread_ctor, %struct.thread* %28)
  %30 = load %struct.thread*, %struct.thread** %9, align 8
  %31 = call i32 @umtx_thread_alloc(%struct.thread* %30)
  ret i32 0
}

declare dso_local i32 @tid_alloc(...) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (i8*, i32, i8*, i32)*, %struct.thread*) #1

declare dso_local i32 @umtx_thread_alloc(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
