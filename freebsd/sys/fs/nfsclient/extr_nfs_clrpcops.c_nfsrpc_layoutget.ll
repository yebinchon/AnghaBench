; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_layoutget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_layoutget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfsclflayouthead = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsrv_descript = type { i32, i32, i32 }

@NFSPROC_LAYOUTGET = common dso_local global i32 0, align 4
@ND_USEGSSNAME = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"layget err=%d st=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmount*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.nfsclflayouthead*, %struct.ucred*, i32*, i8*)* @nfsrpc_layoutget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_layoutget(%struct.nfsmount* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, %struct.nfsclflayouthead* %11, %struct.ucred* %12, i32* %13, i8* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfsmount*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.nfsclflayouthead*, align 8
  %29 = alloca %struct.ucred*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.nfsrv_descript, align 4
  %33 = alloca %struct.nfsrv_descript*, align 8
  %34 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %17, align 8
  store i32* %1, i32** %18, align 8
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store %struct.nfsclflayouthead* %11, %struct.nfsclflayouthead** %28, align 8
  store %struct.ucred* %12, %struct.ucred** %29, align 8
  store i32* %13, i32** %30, align 8
  store i8* %14, i8** %31, align 8
  store %struct.nfsrv_descript* %32, %struct.nfsrv_descript** %33, align 8
  %35 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %36 = load i32, i32* @NFSPROC_LAYOUTGET, align 4
  %37 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @nfscl_reqstart(%struct.nfsrv_descript* %35, i32 %36, %struct.nfsmount* %37, i32* %38, i32 %39, i32* null, i32* null, i32 0, i32 0)
  %41 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %23, align 4
  %46 = load i32*, i32** %26, align 8
  %47 = load i32, i32* %24, align 4
  %48 = load i32, i32* %25, align 4
  %49 = call i32 @nfsrv_setuplayoutget(%struct.nfsrv_descript* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32* %46, i32 %47, i32 %48, i32 0)
  %50 = load i32, i32* @ND_USEGSSNAME, align 4
  %51 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %52 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %56 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %57 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %58 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %57, i32 0, i32 0
  %59 = load i32*, i32** %30, align 8
  %60 = load %struct.ucred*, %struct.ucred** %29, align 8
  %61 = load i32, i32* @NFS_PROG, align 4
  %62 = load i32, i32* @NFS_VER4, align 4
  %63 = call i32 @newnfs_request(%struct.nfsrv_descript* %55, %struct.nfsmount* %56, i32* null, i32* %58, i32* null, i32* %59, %struct.ucred* %60, i32 %61, i32 %62, i32* null, i32 1, i32* null, i32* null)
  store i32 %63, i32* %34, align 4
  %64 = load i32, i32* %34, align 4
  %65 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %66 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32, i32* %34, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %15
  %72 = load i32, i32* %34, align 4
  store i32 %72, i32* %16, align 4
  br label %102

73:                                               ; preds = %15
  %74 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %75 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %80 = load i32*, i32** %26, align 8
  %81 = load i32*, i32** %27, align 8
  %82 = load %struct.nfsclflayouthead*, %struct.nfsclflayouthead** %28, align 8
  %83 = call i32 @nfsrv_parselayoutget(%struct.nfsrv_descript* %79, i32* %80, i32* %81, %struct.nfsclflayouthead* %82)
  store i32 %83, i32* %34, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %34, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %89 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %94 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %34, align 4
  br label %96

96:                                               ; preds = %92, %87, %84
  %97 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %33, align 8
  %98 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mbuf_freem(i32 %99)
  %101 = load i32, i32* %34, align 4
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %96, %71
  %103 = load i32, i32* %16, align 4
  ret i32 %103
}

declare dso_local i32 @nfscl_reqstart(%struct.nfsrv_descript*, i32, %struct.nfsmount*, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @nfsrv_setuplayoutget(%struct.nfsrv_descript*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @newnfs_request(%struct.nfsrv_descript*, %struct.nfsmount*, i32*, i32*, i32*, i32*, %struct.ucred*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @nfsrv_parselayoutget(%struct.nfsrv_descript*, i32*, i32*, %struct.nfsclflayouthead*) #1

declare dso_local i32 @mbuf_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
