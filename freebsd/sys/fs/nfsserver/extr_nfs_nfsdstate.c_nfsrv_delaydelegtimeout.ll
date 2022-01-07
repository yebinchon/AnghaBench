; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_delaydelegtimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_delaydelegtimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsstate = type { i32, i64, i64 }

@NFSLCK_DELEGRECALL = common dso_local global i32 0, align 4
@NFSD_MONOSEC = common dso_local global i64 0, align 8
@nfsrv_lease = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsstate*)* @nfsrv_delaydelegtimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_delaydelegtimeout(%struct.nfsstate* %0) #0 {
  %2 = alloca %struct.nfsstate*, align 8
  store %struct.nfsstate* %0, %struct.nfsstate** %2, align 8
  %3 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %4 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @NFSLCK_DELEGRECALL, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %12 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 15
  %15 = load i64, i64* @NFSD_MONOSEC, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %10
  %18 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %19 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %22 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load i64, i64* @nfsrv_lease, align 8
  %27 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %28 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %32 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %35 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %40 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %43 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %25
  br label %45

45:                                               ; preds = %9, %44, %17, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
