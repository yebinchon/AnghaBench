; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_v4rootexport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_v4rootexport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsex_args = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nameidata = type { i32 }

@nfsv4root_mnt = common dso_local global i32 0, align 4
@MNT_DELEXPORT = common dso_local global i32 0, align 4
@nfs_rootfhset = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NFSX_MYFH = common dso_local global i32 0, align 4
@nfs_rootfh = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_v4rootexport(i8* %0, %struct.ucred* %1, %struct.thread* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.nfsex_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.nfsex_args*
  store %struct.nfsex_args* %12, %struct.nfsex_args** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.nfsex_args*, %struct.nfsex_args** %7, align 8
  %14 = getelementptr inbounds %struct.nfsex_args, %struct.nfsex_args* %13, i32 0, i32 1
  %15 = call i32 @vfs_export(i32* @nfsv4root_mnt, %struct.TYPE_3__* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nfsex_args*, %struct.nfsex_args** %7, align 8
  %17 = getelementptr inbounds %struct.nfsex_args, %struct.nfsex_args* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MNT_DELEXPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* @nfs_rootfhset, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load %struct.nfsex_args*, %struct.nfsex_args** %7, align 8
  %29 = getelementptr inbounds %struct.nfsex_args, %struct.nfsex_args* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @EPERM, align 4
  store i32 %33, i32* %8, align 4
  br label %64

34:                                               ; preds = %27
  %35 = load i32, i32* @LOOKUP, align 4
  %36 = load i32, i32* @FOLLOW, align 4
  %37 = load i32, i32* @UIO_USERSPACE, align 4
  %38 = load %struct.nfsex_args*, %struct.nfsex_args** %7, align 8
  %39 = getelementptr inbounds %struct.nfsex_args, %struct.nfsex_args* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.thread*, %struct.thread** %6, align 8
  %42 = call i32 @NDINIT(%struct.nameidata* %9, i32 %35, i32 %36, i32 %37, i32* %40, %struct.thread* %41)
  %43 = call i32 @namei(%struct.nameidata* %9)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %64

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.thread*, %struct.thread** %6, align 8
  %50 = call i32 @nfsvno_getfh(i32 %48, i32* %10, %struct.thread* %49)
  store i32 %50, i32* %8, align 4
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vrele(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @NFSX_MYFH, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfs_rootfh, i32 0, i32 1), align 4
  %58 = ptrtoint i32* %10 to i32
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfs_rootfh, i32 0, i32 0), align 4
  %60 = call i32 @NFSBCOPY(i32 %58, i32 %59, i32 4)
  store i32 1, i32* @nfs_rootfhset, align 4
  br label %61

61:                                               ; preds = %56, %46
  br label %62

62:                                               ; preds = %61, %24
  br label %63

63:                                               ; preds = %62, %23
  br label %64

64:                                               ; preds = %63, %45, %32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @NFSEXITCODE(i32 %65)
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @vfs_export(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @nfsvno_getfh(i32, i32*, %struct.thread*) #1

declare dso_local i32 @vrele(i32) #1

declare dso_local i32 @NFSBCOPY(i32, i32, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
