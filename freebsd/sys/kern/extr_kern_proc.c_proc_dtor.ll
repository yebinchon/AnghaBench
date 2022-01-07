; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32*, i32*, i32 }
%struct.thread = type { i32, i32*, i32*, i32 }

@thread_dtor = common dso_local global i32 0, align 4
@process_dtor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SIGCHLD queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @proc_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_dtor(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.proc*
  store %struct.proc* %10, %struct.proc** %7, align 8
  %11 = load %struct.proc*, %struct.proc** %7, align 8
  %12 = bitcast %struct.proc* %11 to %struct.thread*
  %13 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.thread* %12)
  store %struct.thread* %13, %struct.thread** %8, align 8
  %14 = load %struct.thread*, %struct.thread** %8, align 8
  %15 = icmp ne %struct.thread* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.thread*, %struct.thread** %8, align 8
  %18 = call i32 @osd_thread_exit(%struct.thread* %17)
  %19 = load %struct.thread*, %struct.thread** %8, align 8
  %20 = call i32 @td_softdep_cleanup(%struct.thread* %19)
  %21 = load %struct.thread*, %struct.thread** %8, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load i32, i32* @thread_dtor, align 4
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %27, %struct.thread* %28)
  br label %30

30:                                               ; preds = %16, %3
  %31 = load i32, i32* @process_dtor, align 4
  %32 = load %struct.proc*, %struct.proc** %7, align 8
  %33 = bitcast %struct.proc* %32 to %struct.thread*
  %34 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %31, %struct.thread* %33)
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.proc*, %struct.proc** %7, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @KSI_ONQ(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %39, %30
  ret void
}

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.thread*) #1

declare dso_local i32 @osd_thread_exit(%struct.thread*) #1

declare dso_local i32 @td_softdep_cleanup(%struct.thread*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32, %struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @KSI_ONQ(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
