; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs34_access_otw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs34_access_otw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i64 }
%struct.nfsnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i8* }
%struct.nfsvattr = type { i32 }

@NFS_ACCESSCACHESIZE = common dso_local global i32 0, align 4
@time_second = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, %struct.thread*, %struct.ucred*, i8**)* @nfs34_access_otw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs34_access_otw(%struct.vnode* %0, i32 %1, %struct.thread* %2, %struct.ucred* %3, i8** %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.nfsnode*, align 8
  %17 = alloca %struct.nfsvattr, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = call %struct.nfsnode* @VTONFS(%struct.vnode* %18)
  store %struct.nfsnode* %19, %struct.nfsnode** %16, align 8
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ucred*, %struct.ucred** %9, align 8
  %23 = load %struct.thread*, %struct.thread** %8, align 8
  %24 = call i32 @nfsrpc_accessrpc(%struct.vnode* %20, i32 %21, %struct.ucred* %22, %struct.thread* %23, %struct.nfsvattr* %17, i32* %12, i8** %15, i32* null)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i32 @nfscl_loadattrcache(%struct.vnode** %6, %struct.nfsvattr* %17, i32* null, i32* null, i32 0, i32 1)
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %144, label %32

32:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  %33 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %34 = call i32 @NFSLOCKNODE(%struct.nfsnode* %33)
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %94, %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @NFS_ACCESSCACHESIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %35
  %40 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %41 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ucred*, %struct.ucred** %9, align 8
  %49 = getelementptr inbounds %struct.ucred, %struct.ucred* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %39
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %55 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %53, i8** %60, align 8
  %61 = load i8*, i8** @time_second, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %64 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 %62, i64* %69, align 8
  br label %97

70:                                               ; preds = %39
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %75 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %83 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %81, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %73, %70
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %35

97:                                               ; preds = %52, %35
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @NFS_ACCESSCACHESIZE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.ucred*, %struct.ucred** %9, align 8
  %103 = getelementptr inbounds %struct.ucred, %struct.ucred* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %106 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %104, i64* %111, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %114 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  store i8* %112, i8** %119, align 8
  %120 = load i8*, i8** @time_second, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %123 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i64 %121, i64* %128, align 8
  br label %129

129:                                              ; preds = %101, %97
  %130 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %131 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %130)
  %132 = load i8**, i8*** %10, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %15, align 8
  %136 = load i8**, i8*** %10, align 8
  store i8* %135, i8** %136, align 8
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.vnode*, %struct.vnode** %6, align 8
  %139 = load %struct.ucred*, %struct.ucred** %9, align 8
  %140 = getelementptr inbounds %struct.ucred, %struct.ucred* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 @KDTRACE_NFS_ACCESSCACHE_LOAD_DONE(%struct.vnode* %138, i64 %141, i8* %142, i32 0)
  br label %153

144:                                              ; preds = %29
  %145 = load %struct.vnode*, %struct.vnode** %6, align 8
  %146 = call i64 @NFS_ISV4(%struct.vnode* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.thread*, %struct.thread** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @nfscl_maperr(%struct.thread* %149, i32 %150, i32 0, i32 0)
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %137
  %154 = load i32, i32* %11, align 4
  ret i32 %154
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_accessrpc(%struct.vnode*, i32, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, i32*, i8**, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @KDTRACE_NFS_ACCESSCACHE_LOAD_DONE(%struct.vnode*, i64, i8*, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
