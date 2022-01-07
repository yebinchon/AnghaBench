; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_getcpuclockid2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_getcpuclockid2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.proc = type { i32 }

@PGET_CANSEE = common dso_local global i32 0, align 4
@PGET_NOTID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_clock_getcpuclockid2(%struct.thread* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %56 [
    i32 129, label %15
    i32 128, label %42
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @PGET_CANSEE, align 4
  %21 = load i32, i32* @PGET_NOTID, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @pget(i8* %19, i32 %22, %struct.proc** %10)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %18
  %29 = load %struct.proc*, %struct.proc** %10, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %11, align 8
  br label %38

32:                                               ; preds = %15
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @MAKE_PROCESS_CPUCLOCK(i8* %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %58

42:                                               ; preds = %4
  %43 = load i8*, i8** %7, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i8* [ %48, %45 ], [ %50, %49 ]
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @MAKE_THREAD_CPUCLOCK(i8* %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %58

56:                                               ; preds = %4
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %51, %38, %26
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @pget(i8*, i32, %struct.proc**) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @MAKE_PROCESS_CPUCLOCK(i8*) #1

declare dso_local i32 @MAKE_THREAD_CPUCLOCK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
