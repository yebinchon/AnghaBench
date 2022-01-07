; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_start_commitds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_start_commitds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclwritedsdorpc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"start_commitds: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @start_commitds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_commitds(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsclwritedsdorpc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nfsclwritedsdorpc*
  store %struct.nfsclwritedsdorpc* %7, %struct.nfsclwritedsdorpc** %5, align 8
  %8 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %9 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %12 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %15 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %18 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %21 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %24 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %27 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %30 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %33 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfsrpc_commitds(i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %37 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %39 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %41 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  ret void
}

declare dso_local i32 @nfsrpc_commitds(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
