; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_nosys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_nosys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { i32 }
%struct.proc = type { i32, i8* }
%struct.nosys_args = type { i32 }

@SIGSYS = common dso_local global i32 0, align 4
@kern_lognosys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pid %d comm %s: nosys %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nosys(%struct.thread* %0, %struct.nosys_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.nosys_args*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.nosys_args* %1, %struct.nosys_args** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = call i32 @PROC_LOCK(%struct.proc* %9)
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = load i32, i32* @SIGSYS, align 4
  %13 = call i32 @tdsignal(%struct.thread* %11, i32 %12)
  %14 = load %struct.proc*, %struct.proc** %5, align 8
  %15 = call i32 @PROC_UNLOCK(%struct.proc* %14)
  %16 = load i32, i32* @kern_lognosys, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @kern_lognosys, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %33

21:                                               ; preds = %18, %2
  %22 = load %struct.proc*, %struct.proc** %5, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.proc*, %struct.proc** %5, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %27, i32 %31)
  br label %33

33:                                               ; preds = %21, %18
  %34 = load i32, i32* @kern_lognosys, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @kern_lognosys, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %51

39:                                               ; preds = %36, %33
  %40 = load %struct.proc*, %struct.proc** %5, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.thread*, %struct.thread** %3, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %45, i32 %49)
  br label %51

51:                                               ; preds = %39, %36
  %52 = load i32, i32* @ENOSYS, align 4
  ret i32 %52
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @tdsignal(%struct.thread*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @uprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
