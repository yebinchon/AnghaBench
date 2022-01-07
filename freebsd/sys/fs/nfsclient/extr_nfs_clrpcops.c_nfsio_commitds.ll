; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsio_commitds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsio_commitds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclds = type { i32 }
%struct.nfsfh = type { i32 }
%struct.nfsclwritedsdorpc = type { i32, i32, i32, i64, i32*, %struct.ucred*, %struct.nfsfh*, %struct.nfsclds*, i32, i32, i64 }
%struct.ucred = type { i32 }

@EIO = common dso_local global i32 0, align 4
@nfs_pnfsiothreads = common dso_local global i64 0, align 8
@start_commitds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nfsio_commitds: nfs_pnfsio=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"nfsio_commitds: error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.nfsclds*, %struct.nfsfh*, i32, i32, %struct.nfsclwritedsdorpc*, %struct.ucred*, i32*)* @nfsio_commitds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsio_commitds(i32 %0, i32 %1, i32 %2, %struct.nfsclds* %3, %struct.nfsfh* %4, i32 %5, i32 %6, %struct.nfsclwritedsdorpc* %7, %struct.ucred* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsclds*, align 8
  %15 = alloca %struct.nfsfh*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsclwritedsdorpc*, align 8
  %19 = alloca %struct.ucred*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.nfsclds* %3, %struct.nfsclds** %14, align 8
  store %struct.nfsfh* %4, %struct.nfsfh** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.nfsclwritedsdorpc* %7, %struct.nfsclwritedsdorpc** %18, align 8
  store %struct.ucred* %8, %struct.ucred** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %23 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %24 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %27 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %30 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %33 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfsclds*, %struct.nfsclds** %14, align 8
  %35 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %36 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %35, i32 0, i32 7
  store %struct.nfsclds* %34, %struct.nfsclds** %36, align 8
  %37 = load %struct.nfsfh*, %struct.nfsfh** %15, align 8
  %38 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %39 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %38, i32 0, i32 6
  store %struct.nfsfh* %37, %struct.nfsfh** %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %42 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %45 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ucred*, %struct.ucred** %19, align 8
  %47 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %48 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %47, i32 0, i32 5
  store %struct.ucred* %46, %struct.ucred** %48, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %51 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %53 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @EIO, align 4
  store i32 %54, i32* %22, align 4
  %55 = load i64, i64* @nfs_pnfsiothreads, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %10
  %58 = load i32, i32* @start_commitds, align 4
  %59 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %18, align 8
  %60 = call i32 @nfs_pnfsio(i32 %58, %struct.nfsclwritedsdorpc* %59)
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %10
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.nfsclds*, %struct.nfsclds** %14, align 8
  %71 = load %struct.nfsfh*, %struct.nfsfh** %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.ucred*, %struct.ucred** %19, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = call i32 @nfsrpc_commitds(i32 %67, i32 %68, i32 %69, %struct.nfsclds* %70, %struct.nfsfh* %71, i32 %72, i32 %73, %struct.ucred* %74, i32* %75)
  store i32 %76, i32* %21, align 4
  br label %77

77:                                               ; preds = %66, %63
  %78 = load i32, i32* %21, align 4
  %79 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %21, align 4
  ret i32 %80
}

declare dso_local i32 @nfs_pnfsio(i32, %struct.nfsclwritedsdorpc*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @nfsrpc_commitds(i32, i32, i32, %struct.nfsclds*, %struct.nfsfh*, i32, i32, %struct.ucred*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
