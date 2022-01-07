; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfs_cbproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfs_cbproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nfsrv_descript = type { i64, i32, i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@ND_STREAMSOCK = common dso_local global i32 0, align 4
@NFSERR_DONTREPLY = common dso_local global i64 0, align 8
@RC_DROPIT = common dso_local global i32 0, align 4
@RC_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsrv_descript*, i32)* @nfs_cbproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_cbproc(%struct.nfsrv_descript* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsrv_descript*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %5, align 8
  %8 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %9 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @ND_STREAMSOCK, align 4
  %14 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %15 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = call i32 @nfscl_docb(%struct.nfsrv_descript* %19, %struct.thread* %20)
  %22 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %23 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFSERR_DONTREPLY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @RC_DROPIT, align 4
  store i32 %28, i32* %6, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @RC_REPLY, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @nfscl_docb(%struct.nfsrv_descript*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
