; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_removerpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_removerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsnode = type { i32, i64 }

@NREMOVEINPROG = common dso_local global i32 0, align 4
@NREMOVEWANT = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode*, i8*, i32, %struct.ucred*, %struct.thread*)* @nfs_removerpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_removerpc(%struct.vnode* %0, %struct.vnode* %1, i8* %2, i32 %3, %struct.ucred* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.nfsvattr, align 4
  %14 = alloca %struct.nfsnode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %17 = load %struct.vnode*, %struct.vnode** %7, align 8
  %18 = call %struct.nfsnode* @VTONFS(%struct.vnode* %17)
  store %struct.nfsnode* %18, %struct.nfsnode** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %20 = call i32 @NFSLOCKNODE(%struct.nfsnode* %19)
  %21 = load i32, i32* @NREMOVEINPROG, align 4
  %22 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %23 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %27 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %26)
  %28 = load %struct.vnode*, %struct.vnode** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.vnode*, %struct.vnode** %8, align 8
  %32 = load %struct.ucred*, %struct.ucred** %11, align 8
  %33 = load %struct.thread*, %struct.thread** %12, align 8
  %34 = call i32 @nfsrpc_remove(%struct.vnode* %28, i8* %29, i32 %30, %struct.vnode* %31, %struct.ucred* %32, %struct.thread* %33, %struct.nfsvattr* %13, i32* %16, i32* null)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %36 = call i32 @NFSLOCKNODE(%struct.nfsnode* %35)
  %37 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %38 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NREMOVEWANT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %6
  %44 = load i32, i32* @NREMOVEWANT, align 4
  %45 = load i32, i32* @NREMOVEINPROG, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %49 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %53 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %52)
  %54 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %55 = ptrtoint %struct.nfsnode* %54 to i32
  %56 = call i32 @wakeup(i32 %55)
  br label %66

57:                                               ; preds = %6
  %58 = load i32, i32* @NREMOVEINPROG, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %61 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %65 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %64)
  br label %66

66:                                               ; preds = %57, %43
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @nfscl_loadattrcache(%struct.vnode** %7, %struct.nfsvattr* %13, i32* null, i32* null, i32 0, i32 1)
  br label %71

71:                                               ; preds = %69, %66
  %72 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %73 = call i32 @NFSLOCKNODE(%struct.nfsnode* %72)
  %74 = load i32, i32* @NMODIFIED, align 4
  %75 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %76 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %83 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.vnode*, %struct.vnode** %7, align 8
  %85 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %84)
  br label %86

86:                                               ; preds = %81, %71
  %87 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %88 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %87)
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.vnode*, %struct.vnode** %7, align 8
  %93 = call i64 @NFS_ISV4(%struct.vnode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.thread*, %struct.thread** %12, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @nfscl_maperr(%struct.thread* %96, i32 %97, i32 0, i32 0)
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %91, %86
  %100 = load i32, i32* %15, align 4
  ret i32 %100
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfsrpc_remove(%struct.vnode*, i8*, i32, %struct.vnode*, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
