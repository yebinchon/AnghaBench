; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_layoutcommit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_layoutcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclclient = type { i32 }
%struct.nfscllayout = type { i32, i32 }
%struct.nfsnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfsmount = type { %struct.nfsclclient* }

@EPERM = common dso_local global i32 0, align 4
@NFSCLSTATEMUTEXPTR = common dso_local global i32 0, align 4
@NFSLY_WRITTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"do layoutcommit2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_layoutcommit(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsclclient*, align 8
  %7 = alloca %struct.nfscllayout*, align 8
  %8 = alloca %struct.nfsnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.nfsnode* @VTONFS(i32 %11)
  store %struct.nfsnode* %12, %struct.nfsnode** %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @vnode_mount(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.nfsmount* @VFSTONFS(i32 %15)
  store %struct.nfsmount* %16, %struct.nfsmount** %10, align 8
  %17 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %18 = call i64 @NFSHASNOLAYOUTCOMMIT(%struct.nfsmount* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = call i32 (...) @NFSLOCKCLSTATE()
  %23 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 0
  %25 = load %struct.nfsclclient*, %struct.nfsclclient** %24, align 8
  store %struct.nfsclclient* %25, %struct.nfsclclient** %6, align 8
  %26 = load %struct.nfsclclient*, %struct.nfsclclient** %6, align 8
  %27 = icmp eq %struct.nfsclclient* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 (...) @NFSUNLOCKCLSTATE()
  %30 = load i32, i32* @EPERM, align 4
  store i32 %30, i32* %3, align 4
  br label %92

31:                                               ; preds = %21
  %32 = load %struct.nfsclclient*, %struct.nfsclclient** %6, align 8
  %33 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %34 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %39 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.nfscllayout* @nfscl_findlayout(%struct.nfsclclient* %32, i32 %37, i32 %42)
  store %struct.nfscllayout* %43, %struct.nfscllayout** %7, align 8
  %44 = load %struct.nfscllayout*, %struct.nfscllayout** %7, align 8
  %45 = icmp eq %struct.nfscllayout* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = call i32 (...) @NFSUNLOCKCLSTATE()
  %48 = load i32, i32* @EPERM, align 4
  store i32 %48, i32* %3, align 4
  br label %92

49:                                               ; preds = %31
  %50 = load %struct.nfscllayout*, %struct.nfscllayout** %7, align 8
  %51 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %50, i32 0, i32 1
  %52 = load i32, i32* @NFSCLSTATEMUTEXPTR, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @nfsv4_getref(i32* %51, i32* null, i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @NFSCL_FORCEDISM(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = call i32 (...) @NFSUNLOCKCLSTATE()
  %60 = load i32, i32* @EPERM, align 4
  store i32 %60, i32* %3, align 4
  br label %92

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %69, %61
  %63 = load %struct.nfscllayout*, %struct.nfscllayout** %7, align 8
  %64 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NFSLY_WRITTEN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load i32, i32* @NFSLY_WRITTEN, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.nfscllayout*, %struct.nfscllayout** %7, align 8
  %73 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = call i32 (...) @NFSUNLOCKCLSTATE()
  %77 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.nfsclclient*, %struct.nfsclclient** %6, align 8
  %79 = getelementptr inbounds %struct.nfsclclient, %struct.nfsclclient* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nfscllayout*, %struct.nfscllayout** %7, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @NFSPROCCRED(i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @nfscl_dolayoutcommit(i32 %80, %struct.nfscllayout* %81, i32 %83, i32* %84)
  %86 = call i32 (...) @NFSLOCKCLSTATE()
  br label %62

87:                                               ; preds = %62
  %88 = load %struct.nfscllayout*, %struct.nfscllayout** %7, align 8
  %89 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %88, i32 0, i32 1
  %90 = call i32 @nfsv4_relref(i32* %89)
  %91 = call i32 (...) @NFSUNLOCKCLSTATE()
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %58, %46, %28, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.nfsnode* @VTONFS(i32) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i64 @NFSHASNOLAYOUTCOMMIT(%struct.nfsmount*) #1

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

declare dso_local %struct.nfscllayout* @nfscl_findlayout(%struct.nfsclclient*, i32, i32) #1

declare dso_local i32 @nfsv4_getref(i32*, i32*, i32, i32) #1

declare dso_local i64 @NFSCL_FORCEDISM(i32) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*) #1

declare dso_local i32 @nfscl_dolayoutcommit(i32, %struct.nfscllayout*, i32, i32*) #1

declare dso_local i32 @NFSPROCCRED(i32*) #1

declare dso_local i32 @nfsv4_relref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
