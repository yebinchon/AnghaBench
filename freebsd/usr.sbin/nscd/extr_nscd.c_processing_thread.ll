; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_processing_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_processing_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.processing_thread_args = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"=> processing_thread\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"processing thread\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"thread can't block the SIGPIPE signal\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<= processing_thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @processing_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @processing_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.processing_thread_args*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @TRACE_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.processing_thread_args*
  store %struct.processing_thread_args* %7, %struct.processing_thread_args** %3, align 8
  %8 = call i32 @sigemptyset(i32* %4)
  %9 = load i32, i32* @SIGPIPE, align 4
  %10 = call i32 @sigaddset(i32* %4, i32 %9)
  %11 = load i32, i32* @SIG_BLOCK, align 4
  %12 = call i64 @pthread_sigmask(i32 %11, i32* %4, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @LOG_ERR_1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.processing_thread_args*, %struct.processing_thread_args** %3, align 8
  %18 = getelementptr inbounds %struct.processing_thread_args, %struct.processing_thread_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.processing_thread_args*, %struct.processing_thread_args** %3, align 8
  %21 = getelementptr inbounds %struct.processing_thread_args, %struct.processing_thread_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.processing_thread_args*, %struct.processing_thread_args** %3, align 8
  %24 = getelementptr inbounds %struct.processing_thread_args, %struct.processing_thread_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @processing_loop(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.processing_thread_args*, %struct.processing_thread_args** %3, align 8
  %28 = call i32 @free(%struct.processing_thread_args* %27)
  %29 = call i32 @TRACE_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  ret i8* null
}

declare dso_local i32 @TRACE_MSG(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @LOG_ERR_1(i8*, i8*) #1

declare dso_local i32 @processing_loop(i32, i32, i32) #1

declare dso_local i32 @free(%struct.processing_thread_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
