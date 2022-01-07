; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_dsremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_dsremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.nameidata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32*, %struct.ucred*, i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nfsrv_pnfsremove: filename=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"nfsrv_pnfsremove: aft LOOKUP=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"pNFS: nfsrv_pnfsremove failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, %struct.ucred*, i32*)* @nfsrv_dsremove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_dsremove(%struct.vnode* %0, i8* %1, %struct.ucred* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nameidata, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = load i32, i32* @LK_EXCLUSIVE, align 4
  %17 = call i32 @NFSVOPLOCK(%struct.vnode* %15, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %5, align 4
  br label %85

22:                                               ; preds = %4
  %23 = load i32, i32* @DELETE, align 4
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @LK_EXCLUSIVE, align 4
  %27 = load i32, i32* @LK_RETRY, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ucred*, %struct.ucred** %8, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store %struct.ucred* %31, %struct.ucred** %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* @ISLASTCN, align 4
  %38 = load i32, i32* @LOCKPARENT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LOCKLEAF, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SAVENAME, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = call i32 @nfsvno_setpathbuf(%struct.nameidata* %10, i8** %12, i32** %13)
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @NAME_MAX, align 4
  %57 = call i32 @strlcpy(i8* %54, i8* %55, i32 %56)
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %62 = call i32 @VOP_LOOKUP(%struct.vnode* %60, %struct.vnode** %11, %struct.TYPE_3__* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %22
  %68 = load %struct.vnode*, %struct.vnode** %6, align 8
  %69 = load %struct.vnode*, %struct.vnode** %11, align 8
  %70 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %71 = call i32 @VOP_REMOVE(%struct.vnode* %68, %struct.vnode* %69, %struct.TYPE_3__* %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.vnode*, %struct.vnode** %11, align 8
  %73 = call i32 @vput(%struct.vnode* %72)
  br label %74

74:                                               ; preds = %67, %22
  %75 = load %struct.vnode*, %struct.vnode** %6, align 8
  %76 = call i32 @NFSVOPUNLOCK(%struct.vnode* %75, i32 0)
  %77 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %10)
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %20
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @nfsvno_setpathbuf(%struct.nameidata*, i8**, i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @VOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.TYPE_3__*) #1

declare dso_local i32 @VOP_REMOVE(%struct.vnode*, %struct.vnode*, %struct.TYPE_3__*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
