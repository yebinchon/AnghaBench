; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_removesub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_removesub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_2__, %struct.vnode*, %struct.vnode* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsexstuff = type { i32 }

@NFSDEV_MAXMIRRORS = common dso_local global i32 0, align 4
@PNFS_FILENAME_LEN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NFSERR_ISDIR = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_removesub(%struct.nameidata* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3, %struct.nfsexstuff* %4) #0 {
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.nfsexstuff*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store %struct.nfsexstuff* %4, %struct.nfsexstuff** %10, align 8
  %18 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.vnode*, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @PNFS_FILENAME_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %26 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 2
  %28 = load %struct.vnode*, %struct.vnode** %27, align 8
  store %struct.vnode* %28, %struct.vnode** %11, align 8
  %29 = getelementptr inbounds %struct.vnode*, %struct.vnode** %21, i64 0
  store %struct.vnode* null, %struct.vnode** %29, align 16
  %30 = load %struct.vnode*, %struct.vnode** %11, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VDIR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @NFSERR_ISDIR, align 4
  store i32 %36, i32* %14, align 4
  br label %45

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.vnode*, %struct.vnode** %11, align 8
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = call i32 @nfsrv_checkremove(%struct.vnode* %41, i32 1, %struct.thread* %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.vnode*, %struct.vnode** %11, align 8
  %50 = load %struct.thread*, %struct.thread** %9, align 8
  %51 = call i32 @nfsrv_pnfsremovesetup(%struct.vnode* %49, %struct.thread* %50, %struct.vnode** %21, i32* %15, i8* %25, i32* %17)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 1
  %58 = load %struct.vnode*, %struct.vnode** %57, align 8
  %59 = load %struct.vnode*, %struct.vnode** %11, align 8
  %60 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 0
  %62 = call i32 @VOP_REMOVE(%struct.vnode* %58, %struct.vnode* %59, %struct.TYPE_2__* %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.vnode*, %struct.vnode** %21, i64 0
  %68 = load %struct.vnode*, %struct.vnode** %67, align 16
  %69 = icmp ne %struct.vnode* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.thread*, %struct.thread** %9, align 8
  %73 = call i32 @nfsrv_pnfsremove(%struct.vnode** %21, i32 %71, i8* %25, i32* %17, %struct.thread* %72)
  br label %74

74:                                               ; preds = %70, %66, %63
  %75 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %75, i32 0, i32 1
  %77 = load %struct.vnode*, %struct.vnode** %76, align 8
  %78 = load %struct.vnode*, %struct.vnode** %11, align 8
  %79 = icmp eq %struct.vnode* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %82 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %81, i32 0, i32 1
  %83 = load %struct.vnode*, %struct.vnode** %82, align 8
  %84 = call i32 @vrele(%struct.vnode* %83)
  br label %90

85:                                               ; preds = %74
  %86 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %87 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %86, i32 0, i32 1
  %88 = load %struct.vnode*, %struct.vnode** %87, align 8
  %89 = call i32 @vput(%struct.vnode* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.vnode*, %struct.vnode** %11, align 8
  %92 = call i32 @vput(%struct.vnode* %91)
  %93 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %94 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SAVENAME, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %102 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %101)
  br label %103

103:                                              ; preds = %100, %90
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @NFSEXITCODE(i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %107)
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nfsrv_checkremove(%struct.vnode*, i32, %struct.thread*) #2

declare dso_local i32 @nfsrv_pnfsremovesetup(%struct.vnode*, %struct.thread*, %struct.vnode**, i32*, i8*, i32*) #2

declare dso_local i32 @VOP_REMOVE(%struct.vnode*, %struct.vnode*, %struct.TYPE_2__*) #2

declare dso_local i32 @nfsrv_pnfsremove(%struct.vnode**, i32, i8*, i32*, %struct.thread*) #2

declare dso_local i32 @vrele(%struct.vnode*) #2

declare dso_local i32 @vput(%struct.vnode*) #2

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #2

declare dso_local i32 @NFSEXITCODE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
