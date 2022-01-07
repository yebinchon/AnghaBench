; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfslookupds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfslookupds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.pnfsdsfile = type { i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i32, i32*, %struct.ucred*, i32 }
%struct.ucred = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"nfsrv_pnfslookupds: filename=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"nfsrv_pnfslookupds: aft LOOKUP=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"eo nfsrv_pnfslookupds=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode*, %struct.pnfsdsfile*, %struct.vnode**, i32*)* @nfsrv_pnfslookupds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_pnfslookupds(%struct.vnode* %0, %struct.vnode* %1, %struct.pnfsdsfile* %2, %struct.vnode** %3, i32* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.pnfsdsfile*, align 8
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nameidata, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.pnfsdsfile* %2, %struct.pnfsdsfile** %8, align 8
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = call %struct.ucred* (...) @newnfs_getcred()
  store %struct.ucred* %17, %struct.ucred** %12, align 8
  %18 = load i32, i32* @LOOKUP, align 4
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @LK_SHARED, align 4
  %22 = load i32, i32* @LK_RETRY, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ucred*, %struct.ucred** %12, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store %struct.ucred* %26, %struct.ucred** %28, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* @ISLASTCN, align 4
  %33 = load i32, i32* @LOCKPARENT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LOCKLEAF, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SAVENAME, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = call i32 @nfsvno_setpathbuf(%struct.nameidata* %11, i8** %13, i32** %14)
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %8, align 8
  %46 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %8, align 8
  %53 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NAME_MAX, align 4
  %56 = call i32 @strlcpy(i8* %51, i32 %54, i32 %55)
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load %struct.vnode*, %struct.vnode** %7, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %61 = call i32 @VOP_LOOKUP(%struct.vnode* %59, %struct.vnode** %15, %struct.TYPE_2__* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.ucred*, %struct.ucred** %12, align 8
  %65 = call i32 @NFSFREECRED(%struct.ucred* %64)
  %66 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %11)
  %67 = load i32, i32* %16, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %5
  %70 = load %struct.vnode*, %struct.vnode** %15, align 8
  %71 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %70, %struct.vnode** %71, align 8
  br label %72

72:                                               ; preds = %69, %5
  %73 = load i32, i32* %16, align 4
  %74 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %16, align 4
  ret i32 %75
}

declare dso_local %struct.ucred* @newnfs_getcred(...) #1

declare dso_local i32 @nfsvno_setpathbuf(%struct.nameidata*, i8**, i32**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @VOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.TYPE_2__*) #1

declare dso_local i32 @NFSFREECRED(%struct.ucred*) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
