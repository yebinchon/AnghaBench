; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfsremovesetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfsremovesetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vattr = type { i32 }
%struct.ucred = type { i32 }

@VREG = common dso_local global i64 0, align 8
@MNT_EXPORTED = common dso_local global i32 0, align 4
@nfsrv_devidcnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"pNFS: nfsrv_pnfsremovesetup getattr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"pNFS: nfsrv_pnfsremovesetup getfh=%d\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"pNFS: nfsrv_pnfsremovesetup getsockmnt=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i32*, %struct.vnode**, i32*, i8*, i32*)* @nfsrv_pnfsremovesetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_pnfsremovesetup(%struct.vnode* %0, i32* %1, %struct.vnode** %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vattr, align 4
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.vnode** %2, %struct.vnode*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %19 = getelementptr inbounds %struct.vnode*, %struct.vnode** %18, i64 0
  store %struct.vnode* null, %struct.vnode** %19, align 8
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VREG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %6
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MNT_EXPORTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* @nfsrv_devidcnt, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %25, %6
  br label %85

38:                                               ; preds = %34
  %39 = call %struct.ucred* (...) @newnfs_getcred()
  store %struct.ucred* %39, %struct.ucred** %14, align 8
  %40 = load %struct.vnode*, %struct.vnode** %7, align 8
  %41 = load %struct.ucred*, %struct.ucred** %14, align 8
  %42 = call i32 @VOP_GETATTR(%struct.vnode* %40, %struct.vattr* %13, %struct.ucred* %41)
  store i32 %42, i32* %17, align 4
  %43 = load %struct.ucred*, %struct.ucred** %14, align 8
  %44 = call i32 @NFSFREECRED(%struct.ucred* %43)
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %85

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %85

55:                                               ; preds = %50
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @nfsvno_getfh(%struct.vnode* %56, i32* %57, i32* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %85

65:                                               ; preds = %55
  store i32 1024, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @M_TEMP, align 4
  %68 = load i32, i32* @M_WAITOK, align 4
  %69 = call i8* @malloc(i32 %66, i32 %67, i32 %68)
  store i8* %69, i8** %15, align 8
  %70 = load %struct.vnode*, %struct.vnode** %7, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @nfsrv_dsgetsockmnt(%struct.vnode* %70, i32 0, i8* %71, i32* %16, i32* %72, i32* %73, %struct.vnode** %74, i32* null, i32* null, i8* %75, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32 %76, i32* %17, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = load i32, i32* @M_TEMP, align 4
  %79 = call i32 @free(i8* %77, i32 %78)
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %37, %47, %54, %62, %82, %65
  ret void
}

declare dso_local %struct.ucred* @newnfs_getcred(...) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @NFSFREECRED(%struct.ucred*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @nfsvno_getfh(%struct.vnode*, i32*, i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @nfsrv_dsgetsockmnt(%struct.vnode*, i32, i8*, i32*, i32*, i32*, %struct.vnode**, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
