; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_start_writedsmir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_start_writedsmir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclwritedsdorpc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"start_writedsmir: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @start_writedsmir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_writedsmir(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsclwritedsdorpc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nfsclwritedsdorpc*
  store %struct.nfsclwritedsdorpc* %7, %struct.nfsclwritedsdorpc** %5, align 8
  %8 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %9 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %12 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %11, i32 0, i32 13
  %13 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %14 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %13, i32 0, i32 12
  %15 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %16 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %19 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %22 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %25 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %28 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %31 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %34 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %37 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %40 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %43 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nfsrpc_writedsmir(i32 %10, i32* %12, i32* %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %47 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %49 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %5, align 8
  %51 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  ret void
}

declare dso_local i32 @nfsrpc_writedsmir(i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
