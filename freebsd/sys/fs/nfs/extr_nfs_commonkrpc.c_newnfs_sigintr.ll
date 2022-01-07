; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_sigintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_sigintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32 }
%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@NFSMNT_INT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newnfs_sigintr(%struct.nfsmount* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %8 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %9 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @NFSCL_FORCEDISM(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  store i32 %14, i32* %3, align 4
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %17 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NFSMNT_INT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %85

23:                                               ; preds = %15
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = icmp eq %struct.thread* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %85

27:                                               ; preds = %23
  %28 = load %struct.thread*, %struct.thread** %5, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 2
  %30 = load %struct.proc*, %struct.proc** %29, align 8
  store %struct.proc* %30, %struct.proc** %6, align 8
  %31 = load %struct.proc*, %struct.proc** %6, align 8
  %32 = call i32 @PROC_LOCK(%struct.proc* %31)
  %33 = load %struct.proc*, %struct.proc** %6, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SIGSETOR(i32 %36, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.thread*, %struct.thread** %5, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SIGSETNAND(i32 %41, i32 %44)
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.proc*, %struct.proc** %6, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SIGSETNAND(i32 %51, i32 %56)
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mtx_unlock(i32* %61)
  %63 = load %struct.proc*, %struct.proc** %6, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @SIGNOTEMPTY(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %27
  %69 = load %struct.thread*, %struct.thread** %5, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @SIGNOTEMPTY(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68, %27
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @nfs_sig_pending(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.proc*, %struct.proc** %6, align 8
  %80 = call i32 @PROC_UNLOCK(%struct.proc* %79)
  %81 = load i32, i32* @EINTR, align 4
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %74, %68
  %83 = load %struct.proc*, %struct.proc** %6, align 8
  %84 = call i32 @PROC_UNLOCK(%struct.proc* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %78, %26, %22, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @NFSCL_FORCEDISM(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @SIGSETOR(i32, i32) #1

declare dso_local i32 @SIGSETNAND(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @SIGNOTEMPTY(i32) #1

declare dso_local i64 @nfs_sig_pending(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
