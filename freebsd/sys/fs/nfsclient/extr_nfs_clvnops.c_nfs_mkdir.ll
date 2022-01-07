; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_mkdir_args = type { %struct.vnode**, %struct.componentname*, %struct.vattr*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32, i32 }
%struct.vattr = type { i32, i32, i64 }
%struct.vnode = type { i64, i32 }
%struct.nfsnode = type { i64, i32 }
%struct.nfsfh = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@VDIR = common dso_local global i64 0, align 8
@NMODIFIED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mkdir_args*)* @nfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_mkdir(%struct.vop_mkdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mkdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.nfsnode*, align 8
  %8 = alloca %struct.nfsnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vattr, align 8
  %11 = alloca %struct.nfsfh*, align 8
  %12 = alloca %struct.nfsvattr, align 4
  %13 = alloca %struct.nfsvattr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vop_mkdir_args* %0, %struct.vop_mkdir_args** %3, align 8
  %18 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %18, i32 0, i32 3
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %4, align 8
  %21 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %21, i32 0, i32 2
  %23 = load %struct.vattr*, %struct.vattr** %22, align 8
  store %struct.vattr* %23, %struct.vattr** %5, align 8
  %24 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %24, i32 0, i32 1
  %26 = load %struct.componentname*, %struct.componentname** %25, align 8
  store %struct.componentname* %26, %struct.componentname** %6, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %7, align 8
  store %struct.vnode* null, %struct.vnode** %9, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = load %struct.componentname*, %struct.componentname** %6, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VOP_GETATTR(%struct.vnode* %27, %struct.vattr* %10, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %2, align 4
  br label %204

35:                                               ; preds = %1
  %36 = load i64, i64* @VDIR, align 8
  %37 = load %struct.vattr*, %struct.vattr** %5, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = load %struct.componentname*, %struct.componentname** %6, align 8
  %41 = getelementptr inbounds %struct.componentname, %struct.componentname* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.componentname*, %struct.componentname** %6, align 8
  %44 = getelementptr inbounds %struct.componentname, %struct.componentname* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vattr*, %struct.vattr** %5, align 8
  %47 = load %struct.componentname*, %struct.componentname** %6, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.componentname*, %struct.componentname** %6, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nfsrpc_mkdir(%struct.vnode* %39, i32 %42, i32 %45, %struct.vattr* %46, i32 %49, i32 %52, %struct.nfsvattr* %13, %struct.nfsvattr* %12, %struct.nfsfh** %11, i32* %15, i32* %16, i32* null)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.vnode*, %struct.vnode** %4, align 8
  %55 = call %struct.nfsnode* @VTONFS(%struct.vnode* %54)
  store %struct.nfsnode* %55, %struct.nfsnode** %8, align 8
  %56 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %57 = call i32 @NFSLOCKNODE(%struct.nfsnode* %56)
  %58 = load i32, i32* @NMODIFIED, align 4
  %59 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %60 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %35
  %66 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %67 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %66)
  %68 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %13, i32* null, i32* null, i32 0, i32 1)
  br label %76

69:                                               ; preds = %35
  %70 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %71 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %73 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %72)
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %74)
  br label %76

76:                                               ; preds = %69, %65
  %77 = load %struct.nfsfh*, %struct.nfsfh** %11, align 8
  %78 = icmp ne %struct.nfsfh* %77, null
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load %struct.vnode*, %struct.vnode** %4, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = load %struct.nfsfh*, %struct.nfsfh** %11, align 8
  %85 = load %struct.componentname*, %struct.componentname** %6, align 8
  %86 = load %struct.componentname*, %struct.componentname** %6, align 8
  %87 = getelementptr inbounds %struct.componentname, %struct.componentname* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @LK_EXCLUSIVE, align 4
  %90 = call i32 @nfscl_nget(i32 %82, %struct.vnode* %83, %struct.nfsfh* %84, %struct.componentname* %85, i32 %88, %struct.nfsnode** %7, i32* null, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %79
  %94 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %95 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %94)
  store %struct.vnode* %95, %struct.vnode** %9, align 8
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @nfscl_loadattrcache(%struct.vnode** %9, %struct.nfsvattr* %12, i32* null, i32* null, i32 0, i32 1)
  br label %100

100:                                              ; preds = %98, %93
  br label %107

101:                                              ; preds = %79
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %104, %101
  br label %107

107:                                              ; preds = %106, %100
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %143, label %111

111:                                              ; preds = %108
  %112 = load %struct.vnode*, %struct.vnode** %9, align 8
  %113 = icmp eq %struct.vnode* %112, null
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load %struct.vnode*, %struct.vnode** %4, align 8
  %116 = load %struct.componentname*, %struct.componentname** %6, align 8
  %117 = getelementptr inbounds %struct.componentname, %struct.componentname* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.componentname*, %struct.componentname** %6, align 8
  %120 = getelementptr inbounds %struct.componentname, %struct.componentname* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.componentname*, %struct.componentname** %6, align 8
  %123 = getelementptr inbounds %struct.componentname, %struct.componentname* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.componentname*, %struct.componentname** %6, align 8
  %126 = getelementptr inbounds %struct.componentname, %struct.componentname* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @nfs_lookitup(%struct.vnode* %115, i32 %118, i32 %121, i32 %124, i32 %127, %struct.nfsnode** %7)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %114
  %132 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %133 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %132)
  store %struct.vnode* %133, %struct.vnode** %9, align 8
  %134 = load %struct.vnode*, %struct.vnode** %9, align 8
  %135 = getelementptr inbounds %struct.vnode, %struct.vnode* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VDIR, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* @EEXIST, align 4
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %139, %131
  br label %142

142:                                              ; preds = %141, %114
  br label %143

143:                                              ; preds = %142, %111, %108
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = load %struct.vnode*, %struct.vnode** %9, align 8
  %148 = icmp ne %struct.vnode* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.vnode*, %struct.vnode** %9, align 8
  %151 = call i32 @vput(%struct.vnode* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.vnode*, %struct.vnode** %4, align 8
  %154 = call i64 @NFS_ISV4(%struct.vnode* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.componentname*, %struct.componentname** %6, align 8
  %158 = getelementptr inbounds %struct.componentname, %struct.componentname* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.vattr*, %struct.vattr** %5, align 8
  %162 = getelementptr inbounds %struct.vattr, %struct.vattr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.vattr*, %struct.vattr** %5, align 8
  %165 = getelementptr inbounds %struct.vattr, %struct.vattr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @nfscl_maperr(i32 %159, i32 %160, i32 %163, i32 %166)
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %156, %152
  br label %202

169:                                              ; preds = %143
  %170 = load %struct.vnode*, %struct.vnode** %4, align 8
  %171 = getelementptr inbounds %struct.vnode, %struct.vnode* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.TYPE_2__* @VFSTONFS(i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %169
  %178 = load %struct.componentname*, %struct.componentname** %6, align 8
  %179 = getelementptr inbounds %struct.componentname, %struct.componentname* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MAKEENTRY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %177
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.vnode*, %struct.vnode** %4, align 8
  %192 = load %struct.vnode*, %struct.vnode** %9, align 8
  %193 = load %struct.componentname*, %struct.componentname** %6, align 8
  %194 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %12, i32 0, i32 0
  %195 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %13, i32 0, i32 0
  %196 = call i32 @cache_enter_time(%struct.vnode* %191, %struct.vnode* %192, %struct.componentname* %193, i32* %194, i32* %195)
  br label %197

197:                                              ; preds = %190, %187, %184, %177, %169
  %198 = load %struct.vnode*, %struct.vnode** %9, align 8
  %199 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %200 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %199, i32 0, i32 0
  %201 = load %struct.vnode**, %struct.vnode*** %200, align 8
  store %struct.vnode* %198, %struct.vnode** %201, align 8
  br label %202

202:                                              ; preds = %197, %168
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %33
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @nfsrpc_mkdir(%struct.vnode*, i32, i32, %struct.vattr*, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @nfscl_nget(i32, %struct.vnode*, %struct.nfsfh*, %struct.componentname*, i32, %struct.nfsnode**, i32*, i32) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @nfs_lookitup(%struct.vnode*, i32, i32, i32, i32, %struct.nfsnode**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @VFSTONFS(i32) #1

declare dso_local i32 @cache_enter_time(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
