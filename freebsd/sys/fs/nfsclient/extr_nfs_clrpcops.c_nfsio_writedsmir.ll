; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsio_writedsmir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsio_writedsmir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclds = type { i32 }
%struct.nfsfh = type { i32 }
%struct.mbuf = type { i32 }
%struct.nfsclwritedsdorpc = type { i32, i32, i32, i32, i32, i64, i32*, %struct.ucred*, %struct.mbuf*, %struct.nfsfh*, i32, %struct.nfsclds*, i32*, i32, i64 }
%struct.ucred = type { i32 }

@EIO = common dso_local global i32 0, align 4
@nfs_pnfsiothreads = common dso_local global i64 0, align 8
@start_writedsmir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"nfsio_writedsmir: nfs_pnfsio=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nfsio_writedsmir: error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, %struct.nfsclds*, i32, i32, %struct.nfsfh*, %struct.mbuf*, i32, i32, %struct.nfsclwritedsdorpc*, %struct.ucred*, i32*)* @nfsio_writedsmir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsio_writedsmir(i32 %0, i32* %1, i32* %2, i32* %3, %struct.nfsclds* %4, i32 %5, i32 %6, %struct.nfsfh* %7, %struct.mbuf* %8, i32 %9, i32 %10, %struct.nfsclwritedsdorpc* %11, %struct.ucred* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.nfsclds*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nfsfh*, align 8
  %23 = alloca %struct.mbuf*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.nfsclwritedsdorpc*, align 8
  %27 = alloca %struct.ucred*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store %struct.nfsclds* %4, %struct.nfsclds** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store %struct.nfsfh* %7, %struct.nfsfh** %22, align 8
  store %struct.mbuf* %8, %struct.mbuf** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store %struct.nfsclwritedsdorpc* %11, %struct.nfsclwritedsdorpc** %26, align 8
  store %struct.ucred* %12, %struct.ucred** %27, align 8
  store i32* %13, i32** %28, align 8
  store i32 0, i32* %29, align 4
  %31 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %32 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %31, i32 0, i32 14
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %35 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %39 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %43 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %18, align 8
  %45 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %46 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %45, i32 0, i32 12
  store i32* %44, i32** %46, align 8
  %47 = load %struct.nfsclds*, %struct.nfsclds** %19, align 8
  %48 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %49 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %48, i32 0, i32 11
  store %struct.nfsclds* %47, %struct.nfsclds** %49, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %52 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %55 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nfsfh*, %struct.nfsfh** %22, align 8
  %57 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %58 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %57, i32 0, i32 9
  store %struct.nfsfh* %56, %struct.nfsfh** %58, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %60 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %61 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %60, i32 0, i32 8
  store %struct.mbuf* %59, %struct.mbuf** %61, align 8
  %62 = load i32, i32* %24, align 4
  %63 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %64 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %25, align 4
  %66 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %67 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ucred*, %struct.ucred** %27, align 8
  %69 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %70 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %69, i32 0, i32 7
  store %struct.ucred* %68, %struct.ucred** %70, align 8
  %71 = load i32*, i32** %28, align 8
  %72 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %73 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %72, i32 0, i32 6
  store i32* %71, i32** %73, align 8
  %74 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %75 = getelementptr inbounds %struct.nfsclwritedsdorpc, %struct.nfsclwritedsdorpc* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @EIO, align 4
  store i32 %76, i32* %30, align 4
  %77 = load i64, i64* @nfs_pnfsiothreads, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %14
  %80 = load i32, i32* @start_writedsmir, align 4
  %81 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %26, align 8
  %82 = call i32 @nfs_pnfsio(i32 %80, %struct.nfsclwritedsdorpc* %81)
  store i32 %82, i32* %30, align 4
  %83 = load i32, i32* %30, align 4
  %84 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %14
  %86 = load i32, i32* %30, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = load %struct.nfsclds*, %struct.nfsclds** %19, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load %struct.nfsfh*, %struct.nfsfh** %22, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load %struct.ucred*, %struct.ucred** %27, align 8
  %101 = load i32*, i32** %28, align 8
  %102 = call i32 @nfsrpc_writedsmir(i32 %89, i32* %90, i32* %91, i32* %92, %struct.nfsclds* %93, i32 %94, i32 %95, %struct.nfsfh* %96, %struct.mbuf* %97, i32 %98, i32 %99, %struct.ucred* %100, i32* %101)
  store i32 %102, i32* %29, align 4
  br label %103

103:                                              ; preds = %88, %85
  %104 = load i32, i32* %29, align 4
  %105 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %29, align 4
  ret i32 %106
}

declare dso_local i32 @nfs_pnfsio(i32, %struct.nfsclwritedsdorpc*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @nfsrpc_writedsmir(i32, i32*, i32*, i32*, %struct.nfsclds*, i32, i32, %struct.nfsfh*, %struct.mbuf*, i32, i32, %struct.ucred*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
