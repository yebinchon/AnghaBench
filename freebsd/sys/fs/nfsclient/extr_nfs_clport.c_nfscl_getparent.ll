; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_getparent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_getparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i64, i32, %struct.proc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @nfscl_getparent(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = icmp eq %struct.thread* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %4, align 8
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %30

18:                                               ; preds = %9
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 2
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  store %struct.proc* %21, %struct.proc** %4, align 8
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = icmp eq %struct.proc* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.proc*, %struct.proc** %4, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 1
  %28 = call %struct.thread* @TAILQ_FIRST(i32* %27)
  store %struct.thread* %28, %struct.thread** %5, align 8
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  store %struct.thread* %29, %struct.thread** %2, align 8
  br label %30

30:                                               ; preds = %25, %24, %17, %8
  %31 = load %struct.thread*, %struct.thread** %2, align 8
  ret %struct.thread* %31
}

declare dso_local %struct.thread* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
