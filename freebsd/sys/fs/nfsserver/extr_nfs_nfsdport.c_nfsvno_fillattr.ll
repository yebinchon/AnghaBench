; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_fillattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_fillattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.statfs = type { i32 }

@nfsrv_devidcnt = common dso_local global i64 0, align 8
@NFSATTRBIT_SPACEAVAIL = common dso_local global i32 0, align 4
@NFSATTRBIT_SPACEFREE = common dso_local global i32 0, align 4
@NFSATTRBIT_SPACETOTAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_fillattr(%struct.nfsrv_descript* %0, %struct.mount* %1, %struct.vnode* %2, %struct.nfsvattr* %3, i32* %4, i32 %5, i32* %6, %struct.ucred* %7, %struct.thread* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.nfsrv_descript*, align 8
  %16 = alloca %struct.mount*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.nfsvattr*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.ucred*, align 8
  %23 = alloca %struct.thread*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.statfs*, align 8
  %30 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %15, align 8
  store %struct.mount* %1, %struct.mount** %16, align 8
  store %struct.vnode* %2, %struct.vnode** %17, align 8
  store %struct.nfsvattr* %3, %struct.nfsvattr** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32* %6, i32** %21, align 8
  store %struct.ucred* %7, %struct.ucred** %22, align 8
  store %struct.thread* %8, %struct.thread** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  store %struct.statfs* null, %struct.statfs** %29, align 8
  %31 = load i64, i64* @nfsrv_devidcnt, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %14
  %34 = load i32*, i32** %21, align 8
  %35 = load i32, i32* @NFSATTRBIT_SPACEAVAIL, align 4
  %36 = call i64 @NFSISSET_ATTRBIT(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %21, align 8
  %40 = load i32, i32* @NFSATTRBIT_SPACEFREE, align 4
  %41 = call i64 @NFSISSET_ATTRBIT(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %21, align 8
  %45 = load i32, i32* @NFSATTRBIT_SPACETOTAL, align 4
  %46 = call i64 @NFSISSET_ATTRBIT(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43, %38, %33
  %49 = load i32, i32* @M_TEMP, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.statfs* @malloc(i32 4, i32 %49, i32 %52)
  store %struct.statfs* %53, %struct.statfs** %29, align 8
  %54 = load %struct.statfs*, %struct.statfs** %29, align 8
  %55 = load %struct.mount*, %struct.mount** %16, align 8
  %56 = call i32 @nfsrv_pnfsstatfs(%struct.statfs* %54, %struct.mount* %55)
  store i32 %56, i32* %30, align 4
  %57 = load i32, i32* %30, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.statfs*, %struct.statfs** %29, align 8
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = call i32 @free(%struct.statfs* %60, i32 %61)
  store %struct.statfs* null, %struct.statfs** %29, align 8
  br label %63

63:                                               ; preds = %59, %48
  br label %64

64:                                               ; preds = %63, %43, %14
  %65 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %66 = load %struct.mount*, %struct.mount** %16, align 8
  %67 = load %struct.vnode*, %struct.vnode** %17, align 8
  %68 = load %struct.nfsvattr*, %struct.nfsvattr** %18, align 8
  %69 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %68, i32 0, i32 0
  %70 = load i32*, i32** %19, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load i32*, i32** %21, align 8
  %73 = load %struct.ucred*, %struct.ucred** %22, align 8
  %74 = load %struct.thread*, %struct.thread** %23, align 8
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = load i32, i32* %27, align 4
  %79 = load i32, i32* %28, align 4
  %80 = load %struct.statfs*, %struct.statfs** %29, align 8
  %81 = call i32 @nfsv4_fillattr(%struct.nfsrv_descript* %65, %struct.mount* %66, %struct.vnode* %67, i32* null, i32* %69, i32* %70, i32 %71, i32* %72, %struct.ucred* %73, %struct.thread* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, %struct.statfs* %80)
  store i32 %81, i32* %30, align 4
  %82 = load %struct.statfs*, %struct.statfs** %29, align 8
  %83 = load i32, i32* @M_TEMP, align 4
  %84 = call i32 @free(%struct.statfs* %82, i32 %83)
  %85 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %86 = call i32 @NFSEXITCODE2(i32 0, %struct.nfsrv_descript* %85)
  %87 = load i32, i32* %30, align 4
  ret i32 %87
}

declare dso_local i64 @NFSISSET_ATTRBIT(i32*, i32) #1

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @nfsrv_pnfsstatfs(%struct.statfs*, %struct.mount*) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

declare dso_local i32 @nfsv4_fillattr(%struct.nfsrv_descript*, %struct.mount*, %struct.vnode*, i32*, i32*, i32*, i32, i32*, %struct.ucred*, %struct.thread*, i32, i32, i32, i32, i32, %struct.statfs*) #1

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
