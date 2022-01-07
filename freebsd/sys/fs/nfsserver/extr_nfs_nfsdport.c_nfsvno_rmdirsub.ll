; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_rmdirsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_rmdirsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_2__, %struct.vnode*, %struct.vnode* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i64, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsexstuff = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_rmdirsub(%struct.nameidata* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3, %struct.nfsexstuff* %4) #0 {
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.nfsexstuff*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store %struct.nfsexstuff* %4, %struct.nfsexstuff** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %11, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VDIR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOTDIR, align 4
  store i32 %22, i32* %12, align 4
  br label %41

23:                                               ; preds = %5
  %24 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 1
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  %27 = load %struct.vnode*, %struct.vnode** %11, align 8
  %28 = icmp eq %struct.vnode* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %12, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.vnode*, %struct.vnode** %11, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VV_ROOT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EBUSY, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %38, %31
  br label %41

41:                                               ; preds = %40, %29, %21
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %45, i32 0, i32 1
  %47 = load %struct.vnode*, %struct.vnode** %46, align 8
  %48 = load %struct.vnode*, %struct.vnode** %11, align 8
  %49 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %49, i32 0, i32 0
  %51 = call i32 @VOP_RMDIR(%struct.vnode* %47, %struct.vnode* %48, %struct.TYPE_2__* %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 1
  %55 = load %struct.vnode*, %struct.vnode** %54, align 8
  %56 = load %struct.vnode*, %struct.vnode** %11, align 8
  %57 = icmp eq %struct.vnode* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 1
  %61 = load %struct.vnode*, %struct.vnode** %60, align 8
  %62 = call i32 @vrele(%struct.vnode* %61)
  br label %68

63:                                               ; preds = %52
  %64 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %65 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %64, i32 0, i32 1
  %66 = load %struct.vnode*, %struct.vnode** %65, align 8
  %67 = call i32 @vput(%struct.vnode* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.vnode*, %struct.vnode** %11, align 8
  %70 = call i32 @vput(%struct.vnode* %69)
  %71 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SAVENAME, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %80 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %79)
  br label %81

81:                                               ; preds = %78, %68
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @NFSEXITCODE(i32 %82)
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32 @VOP_RMDIR(%struct.vnode*, %struct.vnode*, %struct.TYPE_2__*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
