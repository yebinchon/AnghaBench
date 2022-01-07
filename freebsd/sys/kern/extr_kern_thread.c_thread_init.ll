; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i64, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @thread_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.thread*
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = call i32 (...) @sleepq_alloc()
  %11 = load %struct.thread*, %struct.thread** %7, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @turnstile_alloc()
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (i8*, i32, i32)* @thread_init, %struct.thread* %18)
  %20 = load %struct.thread*, %struct.thread** %7, align 8
  %21 = call i32 @umtx_thread_init(%struct.thread* %20)
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.thread*, %struct.thread** %7, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret i32 0
}

declare dso_local i32 @sleepq_alloc(...) #1

declare dso_local i32 @turnstile_alloc(...) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (i8*, i32, i32)*, %struct.thread*) #1

declare dso_local i32 @umtx_thread_init(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
