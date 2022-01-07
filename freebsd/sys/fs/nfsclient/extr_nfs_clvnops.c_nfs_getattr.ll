; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vop_getattr_args = type { i32, %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.nfsnode = type { i32 }
%struct.nfsvattr = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@NACC = common dso_local global i32 0, align 4
@NUPD = common dso_local global i32 0, align 4
@NCHG = common dso_local global i32 0, align 4
@nfs_prime_access_cache = common dso_local global i64 0, align 8
@nfsaccess_cache_timeout = common dso_local global i64 0, align 8
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NFSACCESS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @nfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nfsnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsvattr, align 4
  %9 = alloca %struct.vattr*, align 8
  %10 = alloca %struct.vattr, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %3, align 8
  %11 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %11, i32 0, i32 2
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %14, %struct.thread** %5, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = call %struct.nfsnode* @VTONFS(%struct.vnode* %15)
  store %struct.nfsnode* %16, %struct.nfsnode** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %17, i32 0, i32 1
  %19 = load %struct.vattr*, %struct.vattr** %18, align 8
  store %struct.vattr* %19, %struct.vattr** %9, align 8
  %20 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %21 = call i32 @NFSLOCKNODE(%struct.nfsnode* %20)
  %22 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %23 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NACC, align 4
  %26 = load i32, i32* @NUPD, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @NCHG, align 4
  %32 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %33 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %38 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %37)
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = call i64 @ncl_getattrcache(%struct.vnode* %39, %struct.vattr* %10)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %115

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vattr*, %struct.vattr** %9, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 15
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vattr*, %struct.vattr** %9, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 15
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 14
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vattr*, %struct.vattr** %9, align 8
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 13
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vattr*, %struct.vattr** %9, align 8
  %58 = getelementptr inbounds %struct.vattr, %struct.vattr* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 12
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vattr*, %struct.vattr** %9, align 8
  %62 = getelementptr inbounds %struct.vattr, %struct.vattr* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vattr*, %struct.vattr** %9, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vattr*, %struct.vattr** %9, align 8
  %70 = getelementptr inbounds %struct.vattr, %struct.vattr* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vattr*, %struct.vattr** %9, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vattr*, %struct.vattr** %9, align 8
  %78 = getelementptr inbounds %struct.vattr, %struct.vattr* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vattr*, %struct.vattr** %9, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vattr*, %struct.vattr** %9, align 8
  %86 = getelementptr inbounds %struct.vattr, %struct.vattr* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vattr*, %struct.vattr** %9, align 8
  %90 = getelementptr inbounds %struct.vattr, %struct.vattr* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vattr*, %struct.vattr** %9, align 8
  %94 = getelementptr inbounds %struct.vattr, %struct.vattr* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vattr*, %struct.vattr** %9, align 8
  %98 = getelementptr inbounds %struct.vattr, %struct.vattr* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vattr*, %struct.vattr** %9, align 8
  %102 = getelementptr inbounds %struct.vattr, %struct.vattr* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vattr*, %struct.vattr** %9, align 8
  %106 = getelementptr inbounds %struct.vattr, %struct.vattr* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vattr*, %struct.vattr** %9, align 8
  %110 = getelementptr inbounds %struct.vattr, %struct.vattr* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.vnode*, %struct.vnode** %4, align 8
  %112 = load %struct.vattr*, %struct.vattr** %9, align 8
  %113 = getelementptr inbounds %struct.vattr, %struct.vattr* %112, i32 0, i32 0
  %114 = call i32 @nfscl_deleggetmodtime(%struct.vnode* %111, i32* %113)
  store i32 0, i32* %2, align 4
  br label %180

115:                                              ; preds = %36
  %116 = load %struct.vnode*, %struct.vnode** %4, align 8
  %117 = call i64 @NFS_ISV34(%struct.vnode* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %115
  %120 = load i64, i64* @nfs_prime_access_cache, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %119
  %123 = load i64, i64* @nfsaccess_cache_timeout, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %127 = call i32 @NFSINCRGLOBAL(i32 %126)
  %128 = load %struct.vnode*, %struct.vnode** %4, align 8
  %129 = load i32, i32* @NFSACCESS_ALL, align 4
  %130 = load %struct.thread*, %struct.thread** %5, align 8
  %131 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %132 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @nfs34_access_otw(%struct.vnode* %128, i32 %129, %struct.thread* %130, i32 %133, i32* null)
  %135 = load %struct.vnode*, %struct.vnode** %4, align 8
  %136 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %137 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %136, i32 0, i32 1
  %138 = load %struct.vattr*, %struct.vattr** %137, align 8
  %139 = call i64 @ncl_getattrcache(%struct.vnode* %135, %struct.vattr* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %125
  %142 = load %struct.vnode*, %struct.vnode** %4, align 8
  %143 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %144 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %143, i32 0, i32 1
  %145 = load %struct.vattr*, %struct.vattr** %144, align 8
  %146 = getelementptr inbounds %struct.vattr, %struct.vattr* %145, i32 0, i32 0
  %147 = call i32 @nfscl_deleggetmodtime(%struct.vnode* %142, i32* %146)
  store i32 0, i32* %2, align 4
  br label %180

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148, %122, %119, %115
  %150 = load %struct.vnode*, %struct.vnode** %4, align 8
  %151 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %152 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.thread*, %struct.thread** %5, align 8
  %155 = call i32 @nfsrpc_getattr(%struct.vnode* %150, i32 %153, %struct.thread* %154, %struct.nfsvattr* %8, i32* null)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %149
  %159 = load %struct.vattr*, %struct.vattr** %9, align 8
  %160 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %8, %struct.vattr* %159, i32* null, i32 0, i32 0)
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %158, %149
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load %struct.vnode*, %struct.vnode** %4, align 8
  %166 = load %struct.vattr*, %struct.vattr** %9, align 8
  %167 = getelementptr inbounds %struct.vattr, %struct.vattr* %166, i32 0, i32 0
  %168 = call i32 @nfscl_deleggetmodtime(%struct.vnode* %165, i32* %167)
  br label %178

169:                                              ; preds = %161
  %170 = load %struct.vnode*, %struct.vnode** %4, align 8
  %171 = call i64 @NFS_ISV4(%struct.vnode* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.thread*, %struct.thread** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @nfscl_maperr(%struct.thread* %174, i32 %175, i32 0, i32 0)
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177, %164
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %141, %42
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i64 @ncl_getattrcache(%struct.vnode*, %struct.vattr*) #1

declare dso_local i32 @nfscl_deleggetmodtime(%struct.vnode*, i32*) #1

declare dso_local i64 @NFS_ISV34(%struct.vnode*) #1

declare dso_local i32 @NFSINCRGLOBAL(i32) #1

declare dso_local i32 @nfs34_access_otw(%struct.vnode*, i32, %struct.thread*, i32, i32*) #1

declare dso_local i32 @nfsrpc_getattr(%struct.vnode*, i32, %struct.thread*, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, %struct.vattr*, i32*, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
