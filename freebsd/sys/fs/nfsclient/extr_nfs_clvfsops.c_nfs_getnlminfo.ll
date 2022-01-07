; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_getnlminfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_getnlminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.nfsmount = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfsnode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@NFS_HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.sockaddr_storage*, i64*, %struct.sockaddr_storage*, i32*, i32*, %struct.timeval*)* @nfs_getnlminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_getnlminfo(%struct.vnode* %0, %struct.sockaddr_storage* %1, i64* %2, %struct.sockaddr_storage* %3, i32* %4, i32* %5, %struct.timeval* %6) #0 {
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.sockaddr_storage*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.timeval*, align 8
  %15 = alloca %struct.nfsmount*, align 8
  %16 = alloca %struct.nfsnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %9, align 8
  store i64* %2, i64** %10, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.timeval* %6, %struct.timeval** %14, align 8
  %17 = load %struct.vnode*, %struct.vnode** %8, align 8
  %18 = call %struct.nfsnode* @VTONFS(%struct.vnode* %17)
  store %struct.nfsnode* %18, %struct.nfsnode** %16, align 8
  %19 = load %struct.vnode*, %struct.vnode** %8, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nfsmount* @VFSTONFS(i32 %21)
  store %struct.nfsmount* %22, %struct.nfsmount** %15, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %7
  %26 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %27 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %10, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %7
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %34 = icmp ne %struct.sockaddr_storage* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %37 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %42 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %43 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bcopy(%struct.TYPE_4__* %40, %struct.sockaddr_storage* %41, i64 %46)
  br label %48

48:                                               ; preds = %35, %32
  %49 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %50 = icmp ne %struct.sockaddr_storage* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %56 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %57 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @min(i32 %60, i32 4)
  %62 = call i32 @bcopy(%struct.TYPE_4__* %54, %struct.sockaddr_storage* %55, i64 %61)
  br label %63

63:                                               ; preds = %51, %48
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.vnode*, %struct.vnode** %8, align 8
  %68 = call i32 @NFS_ISV3(%struct.vnode* %67)
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %75 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.timeval*, %struct.timeval** %14, align 8
  %80 = icmp ne %struct.timeval* %79, null
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %83 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NFS_HZ, align 4
  %86 = sdiv i32 %84, %85
  %87 = load %struct.timeval*, %struct.timeval** %14, align 8
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %90 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NFS_HZ, align 4
  %93 = srem i32 %91, %92
  %94 = load i32, i32* @NFS_HZ, align 4
  %95 = sdiv i32 1000000, %94
  %96 = mul nsw i32 %93, %95
  %97 = load %struct.timeval*, %struct.timeval** %14, align 8
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %81, %78
  ret void
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_4__*, %struct.sockaddr_storage*, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @NFS_ISV3(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
