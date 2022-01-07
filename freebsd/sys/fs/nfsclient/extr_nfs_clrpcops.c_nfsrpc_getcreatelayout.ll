; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_getcreatelayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_getcreatelayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.vattr = type { i32 }
%struct.nfsclowner = type { i32 }
%struct.nfscldeleg = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsfh = type { i32, i32* }
%struct.nfscllayout = type { i32 }
%struct.nfsclflayouthead = type { i32 }
%struct.nfsclsession = type { i32 }
%struct.nfsmount = type { i32 }

@NFSLAYOUT_FLEXFILE = common dso_local global i32 0, align 4
@NFSLAYOUT_NFSV4_1_FILES = common dso_local global i32 0, align 4
@NFSX_STATEID = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"aft nfsrpc_createlayoutrpc laystat=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, %struct.vattr*, i32, i32, %struct.nfsclowner*, %struct.nfscldeleg**, %struct.ucred*, i32*, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i8*, i32*)* @nfsrpc_getcreatelayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_getcreatelayout(%struct.TYPE_5__* %0, i8* %1, i32 %2, %struct.vattr* %3, i32 %4, i32 %5, %struct.nfsclowner* %6, %struct.nfscldeleg** %7, %struct.ucred* %8, i32* %9, %struct.nfsvattr* %10, %struct.nfsvattr* %11, %struct.nfsfh** %12, i32* %13, i32* %14, i8* %15, i32* %16) #0 {
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.vattr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.nfsclowner*, align 8
  %25 = alloca %struct.nfscldeleg**, align 8
  %26 = alloca %struct.ucred*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.nfsvattr*, align 8
  %29 = alloca %struct.nfsvattr*, align 8
  %30 = alloca %struct.nfsfh**, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.nfscllayout*, align 8
  %36 = alloca %struct.nfsclflayouthead, align 4
  %37 = alloca %struct.nfsfh*, align 8
  %38 = alloca %struct.nfsclsession*, align 8
  %39 = alloca %struct.nfsmount*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %18, align 8
  store i8* %1, i8** %19, align 8
  store i32 %2, i32* %20, align 4
  store %struct.vattr* %3, %struct.vattr** %21, align 8
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store %struct.nfsclowner* %6, %struct.nfsclowner** %24, align 8
  store %struct.nfscldeleg** %7, %struct.nfscldeleg*** %25, align 8
  store %struct.ucred* %8, %struct.ucred** %26, align 8
  store i32* %9, i32** %27, align 8
  store %struct.nfsvattr* %10, %struct.nfsvattr** %28, align 8
  store %struct.nfsvattr* %11, %struct.nfsvattr** %29, align 8
  store %struct.nfsfh** %12, %struct.nfsfh*** %30, align 8
  store i32* %13, i32** %31, align 8
  store i32* %14, i32** %32, align 8
  store i8* %15, i8** %33, align 8
  store i32* %16, i32** %34, align 8
  store i32 0, i32* %41, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.nfsmount* @VFSTONFS(i32 %48)
  store %struct.nfsmount* %49, %struct.nfsmount** %39, align 8
  %50 = load %struct.nfsmount*, %struct.nfsmount** %39, align 8
  %51 = call i64 @NFSHASFLEXFILE(%struct.nfsmount* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %17
  %54 = load i32, i32* @NFSLAYOUT_FLEXFILE, align 4
  store i32 %54, i32* %43, align 4
  br label %57

55:                                               ; preds = %17
  %56 = load i32, i32* @NFSLAYOUT_NFSV4_1_FILES, align 4
  store i32 %56, i32* %43, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = call i32 @LIST_INIT(%struct.nfsclflayouthead* %36)
  %59 = load %struct.nfsmount*, %struct.nfsmount** %39, align 8
  %60 = call %struct.nfsclsession* @nfsmnt_mdssession(%struct.nfsmount* %59)
  store %struct.nfsclsession* %60, %struct.nfsclsession** %38, align 8
  %61 = load %struct.nfsclsession*, %struct.nfsclsession** %38, align 8
  %62 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NFSX_STATEID, align 4
  %65 = load i32, i32* @NFSX_UNSIGNED, align 4
  %66 = mul nsw i32 3, %65
  %67 = add nsw i32 %64, %66
  %68 = sub nsw i32 %63, %67
  store i32 %68, i32* %42, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.vattr*, %struct.vattr** %21, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load %struct.nfsclowner*, %struct.nfsclowner** %24, align 8
  %76 = load %struct.nfscldeleg**, %struct.nfscldeleg*** %25, align 8
  %77 = load %struct.ucred*, %struct.ucred** %26, align 8
  %78 = load i32*, i32** %27, align 8
  %79 = load %struct.nfsvattr*, %struct.nfsvattr** %28, align 8
  %80 = load %struct.nfsvattr*, %struct.nfsvattr** %29, align 8
  %81 = load %struct.nfsfh**, %struct.nfsfh*** %30, align 8
  %82 = load i32*, i32** %31, align 8
  %83 = load i32*, i32** %32, align 8
  %84 = load i8*, i8** %33, align 8
  %85 = load i32*, i32** %34, align 8
  %86 = load i32, i32* %43, align 4
  %87 = load i32, i32* %42, align 4
  %88 = call i32 @nfsrpc_createlayout(%struct.TYPE_5__* %69, i8* %70, i32 %71, %struct.vattr* %72, i32 %73, i32 %74, %struct.nfsclowner* %75, %struct.nfscldeleg** %76, %struct.ucred* %77, i32* %78, %struct.nfsvattr* %79, %struct.nfsvattr* %80, %struct.nfsfh** %81, i32* %82, i32* %83, i8* %84, i32* %85, i32* %40, i32 1, i32 %86, i32 %87, i32* %44, %struct.nfsclflayouthead* %36, i32* %45)
  store i32 %88, i32* %41, align 4
  %89 = load i32, i32* %45, align 4
  %90 = load i32, i32* %41, align 4
  %91 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  store %struct.nfscllayout* null, %struct.nfscllayout** %35, align 8
  %92 = load i32, i32* %45, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %57
  %95 = load %struct.nfsfh**, %struct.nfsfh*** %30, align 8
  %96 = load %struct.nfsfh*, %struct.nfsfh** %95, align 8
  store %struct.nfsfh* %96, %struct.nfsfh** %37, align 8
  %97 = load %struct.nfsmount*, %struct.nfsmount** %39, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %99 = load %struct.nfsfh*, %struct.nfsfh** %37, align 8
  %100 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.nfsfh*, %struct.nfsfh** %37, align 8
  %103 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %44, align 4
  %106 = load i32, i32* %43, align 4
  %107 = load i32, i32* %45, align 4
  %108 = load %struct.ucred*, %struct.ucred** %26, align 8
  %109 = load i32*, i32** %27, align 8
  %110 = call i32 @nfsrpc_layoutgetres(%struct.nfsmount* %97, %struct.TYPE_5__* %98, i32* %101, i32 %104, i32* %40, i32 %105, i32* null, %struct.nfscllayout** %35, %struct.nfsclflayouthead* %36, i32 %106, i32 %107, i32* null, %struct.ucred* %108, i32* %109)
  store i32 %110, i32* %45, align 4
  br label %120

111:                                              ; preds = %57
  %112 = load %struct.nfsmount*, %struct.nfsmount** %39, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %114 = load i32, i32* %44, align 4
  %115 = load i32, i32* %43, align 4
  %116 = load i32, i32* %45, align 4
  %117 = load %struct.ucred*, %struct.ucred** %26, align 8
  %118 = load i32*, i32** %27, align 8
  %119 = call i32 @nfsrpc_layoutgetres(%struct.nfsmount* %112, %struct.TYPE_5__* %113, i32* null, i32 0, i32* %40, i32 %114, i32* null, %struct.nfscllayout** %35, %struct.nfsclflayouthead* %36, i32 %115, i32 %116, i32* null, %struct.ucred* %117, i32* %118)
  store i32 %119, i32* %45, align 4
  br label %120

120:                                              ; preds = %111, %94
  %121 = load i32, i32* %45, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.nfscllayout*, %struct.nfscllayout** %35, align 8
  %125 = call i32 @nfscl_rellayout(%struct.nfscllayout* %124, i32 0)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %41, align 4
  ret i32 %127
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i64 @NFSHASFLEXFILE(%struct.nfsmount*) #1

declare dso_local i32 @LIST_INIT(%struct.nfsclflayouthead*) #1

declare dso_local %struct.nfsclsession* @nfsmnt_mdssession(%struct.nfsmount*) #1

declare dso_local i32 @nfsrpc_createlayout(%struct.TYPE_5__*, i8*, i32, %struct.vattr*, i32, i32, %struct.nfsclowner*, %struct.nfscldeleg**, %struct.ucred*, i32*, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i8*, i32*, i32*, i32, i32, i32, i32*, %struct.nfsclflayouthead*, i32*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @nfsrpc_layoutgetres(%struct.nfsmount*, %struct.TYPE_5__*, i32*, i32, i32*, i32, i32*, %struct.nfscllayout**, %struct.nfsclflayouthead*, i32, i32, i32*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfscl_rellayout(%struct.nfscllayout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
