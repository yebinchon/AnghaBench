; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_backupstable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_backupstable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@nfsd_master_proc = common dso_local global %struct.proc* null, align 8
@nfsd_master_pid = common dso_local global i32 0, align 4
@nfsd_master_start = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@nfsd_master_comm = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrv_backupstable() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = load %struct.proc*, %struct.proc** @nfsd_master_proc, align 8
  %3 = icmp ne %struct.proc* %2, null
  br i1 %3, label %4, label %47

4:                                                ; preds = %0
  %5 = load i32, i32* @nfsd_master_pid, align 4
  %6 = call %struct.proc* @pfind(i32 %5)
  store %struct.proc* %6, %struct.proc** %1, align 8
  %7 = load %struct.proc*, %struct.proc** %1, align 8
  %8 = load %struct.proc*, %struct.proc** @nfsd_master_proc, align 8
  %9 = icmp eq %struct.proc* %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = load %struct.proc*, %struct.proc** %1, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsd_master_start, i32 0, i32 0), align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %10
  %20 = load %struct.proc*, %struct.proc** %1, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nfsd_master_start, i32 0, i32 1), align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.proc*, %struct.proc** %1, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @nfsd_master_comm, align 4
  %33 = call i64 @strcmp(i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.proc*, %struct.proc** %1, align 8
  %37 = load i32, i32* @SIGUSR2, align 4
  %38 = call i32 @kern_psignal(%struct.proc* %36, i32 %37)
  br label %40

39:                                               ; preds = %28, %19, %10, %4
  store %struct.proc* null, %struct.proc** @nfsd_master_proc, align 8
  br label %40

40:                                               ; preds = %39, %35
  %41 = load %struct.proc*, %struct.proc** %1, align 8
  %42 = icmp ne %struct.proc* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.proc*, %struct.proc** %1, align 8
  %45 = call i32 @PROC_UNLOCK(%struct.proc* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %0
  ret void
}

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @kern_psignal(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
