; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @thread_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_dtor(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.thread*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.thread*
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = load %struct.thread*, %struct.thread** %7, align 8
  %11 = call i32 @osd_thread_exit(%struct.thread* %10)
  %12 = load %struct.thread*, %struct.thread** %7, align 8
  %13 = call i32 @td_softdep_cleanup(%struct.thread* %12)
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.thread*, %struct.thread** %7, align 8
  %21 = call i32 @EVENTHANDLER_DIRECT_INVOKE(void (i8*, i32, i8*)* @thread_dtor, %struct.thread* %20)
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tid_free(i32 %24)
  ret void
}

declare dso_local i32 @osd_thread_exit(%struct.thread*) #1

declare dso_local i32 @td_softdep_cleanup(%struct.thread*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(void (i8*, i32, i8*)*, %struct.thread*) #1

declare dso_local i32 @tid_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
