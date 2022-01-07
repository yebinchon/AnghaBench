; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_td_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_td_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_td_intr(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = icmp eq %struct.thread* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %4, align 8
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = call i32 @PROC_LOCK(%struct.proc* %13)
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @SIGSETOR(i32 %18, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SIGSETNAND(i32 %23, i32 %26)
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.proc*, %struct.proc** %4, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SIGSETNAND(i32 %33, i32 %38)
  %40 = load %struct.proc*, %struct.proc** %4, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.thread*, %struct.thread** %3, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @SIGNOTEMPTY(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %9
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @SMB_SIGMASK(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = call i32 @PROC_UNLOCK(%struct.proc* %55)
  %57 = load i32, i32* @EINTR, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %50, %9
  %59 = load %struct.proc*, %struct.proc** %4, align 8
  %60 = call i32 @PROC_UNLOCK(%struct.proc* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %54, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @SIGSETOR(i32, i32) #1

declare dso_local i32 @SIGSETNAND(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @SIGNOTEMPTY(i32) #1

declare dso_local i64 @SMB_SIGMASK(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
