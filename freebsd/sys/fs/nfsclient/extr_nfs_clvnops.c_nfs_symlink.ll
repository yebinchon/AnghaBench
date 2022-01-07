; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_symlink_args = type { %struct.vnode**, i32, %struct.componentname*, %struct.vattr*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32, i32 }
%struct.vattr = type { i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsfh = type { i32 }
%struct.nfsnode = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@VLNK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_symlink_args*)* @nfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_symlink(%struct.vop_symlink_args* %0) #0 {
  %2 = alloca %struct.vop_symlink_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.nfsvattr, align 4
  %7 = alloca %struct.nfsvattr, align 4
  %8 = alloca %struct.nfsfh*, align 8
  %9 = alloca %struct.nfsnode*, align 8
  %10 = alloca %struct.nfsnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vop_symlink_args* %0, %struct.vop_symlink_args** %2, align 8
  %16 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %16, i32 0, i32 4
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %3, align 8
  %19 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %20 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %19, i32 0, i32 3
  %21 = load %struct.vattr*, %struct.vattr** %20, align 8
  store %struct.vattr* %21, %struct.vattr** %4, align 8
  %22 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %23 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %22, i32 0, i32 2
  %24 = load %struct.componentname*, %struct.componentname** %23, align 8
  store %struct.componentname* %24, %struct.componentname** %5, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %9, align 8
  store %struct.vnode* null, %struct.vnode** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* @VLNK, align 4
  %26 = load %struct.vattr*, %struct.vattr** %4, align 8
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = load %struct.componentname*, %struct.componentname** %5, align 8
  %30 = getelementptr inbounds %struct.componentname, %struct.componentname* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.componentname*, %struct.componentname** %5, align 8
  %33 = getelementptr inbounds %struct.componentname, %struct.componentname* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %36 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vattr*, %struct.vattr** %4, align 8
  %39 = load %struct.componentname*, %struct.componentname** %5, align 8
  %40 = getelementptr inbounds %struct.componentname, %struct.componentname* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.componentname*, %struct.componentname** %5, align 8
  %43 = getelementptr inbounds %struct.componentname, %struct.componentname* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nfsrpc_symlink(%struct.vnode* %28, i32 %31, i32 %34, i32 %37, %struct.vattr* %38, i32 %41, i32 %44, %struct.nfsvattr* %7, %struct.nfsvattr* %6, %struct.nfsfh** %8, i32* %13, i32* %14, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.nfsfh*, %struct.nfsfh** %8, align 8
  %47 = icmp ne %struct.nfsfh* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %1
  %49 = load %struct.vnode*, %struct.vnode** %3, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vnode*, %struct.vnode** %3, align 8
  %53 = load %struct.nfsfh*, %struct.nfsfh** %8, align 8
  %54 = load %struct.componentname*, %struct.componentname** %5, align 8
  %55 = load %struct.componentname*, %struct.componentname** %5, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LK_EXCLUSIVE, align 4
  %59 = call i32 @nfscl_nget(i32 %51, %struct.vnode* %52, %struct.nfsfh* %53, %struct.componentname* %54, i32 %57, %struct.nfsnode** %9, i32* null, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %48
  %63 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %64 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %63)
  store %struct.vnode* %64, %struct.vnode** %11, align 8
  br label %71

65:                                               ; preds = %48
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %1
  %73 = load %struct.vnode*, %struct.vnode** %11, align 8
  %74 = icmp ne %struct.vnode* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @nfscl_loadattrcache(%struct.vnode** %11, %struct.nfsvattr* %6, i32* null, i32* null, i32 0, i32 1)
  br label %80

80:                                               ; preds = %78, %75
  br label %106

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %81
  %85 = load %struct.vnode*, %struct.vnode** %3, align 8
  %86 = load %struct.componentname*, %struct.componentname** %5, align 8
  %87 = getelementptr inbounds %struct.componentname, %struct.componentname* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.componentname*, %struct.componentname** %5, align 8
  %90 = getelementptr inbounds %struct.componentname, %struct.componentname* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.componentname*, %struct.componentname** %5, align 8
  %93 = getelementptr inbounds %struct.componentname, %struct.componentname* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.componentname*, %struct.componentname** %5, align 8
  %96 = getelementptr inbounds %struct.componentname, %struct.componentname* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nfs_lookitup(%struct.vnode* %85, i32 %88, i32 %91, i32 %94, i32 %97, %struct.nfsnode** %9)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %84
  %102 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %103 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %102)
  store %struct.vnode* %103, %struct.vnode** %11, align 8
  br label %104

104:                                              ; preds = %101, %84
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %106
  %110 = load %struct.vnode*, %struct.vnode** %11, align 8
  %111 = icmp ne %struct.vnode* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.vnode*, %struct.vnode** %11, align 8
  %114 = call i32 @vput(%struct.vnode* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.vnode*, %struct.vnode** %3, align 8
  %117 = call i64 @NFS_ISV4(%struct.vnode* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load %struct.componentname*, %struct.componentname** %5, align 8
  %121 = getelementptr inbounds %struct.componentname, %struct.componentname* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.vattr*, %struct.vattr** %4, align 8
  %125 = getelementptr inbounds %struct.vattr, %struct.vattr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vattr*, %struct.vattr** %4, align 8
  %128 = getelementptr inbounds %struct.vattr, %struct.vattr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nfscl_maperr(i32 %122, i32 %123, i32 %126, i32 %129)
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %119, %115
  br label %137

132:                                              ; preds = %106
  %133 = load %struct.vnode*, %struct.vnode** %11, align 8
  %134 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %135 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %134, i32 0, i32 0
  %136 = load %struct.vnode**, %struct.vnode*** %135, align 8
  store %struct.vnode* %133, %struct.vnode** %136, align 8
  br label %137

137:                                              ; preds = %132, %131
  %138 = load %struct.vnode*, %struct.vnode** %3, align 8
  %139 = call %struct.nfsnode* @VTONFS(%struct.vnode* %138)
  store %struct.nfsnode* %139, %struct.nfsnode** %10, align 8
  %140 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %141 = call i32 @NFSLOCKNODE(%struct.nfsnode* %140)
  %142 = load i32, i32* @NMODIFIED, align 4
  %143 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %144 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %137
  %150 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %151 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %150)
  %152 = call i32 @nfscl_loadattrcache(%struct.vnode** %3, %struct.nfsvattr* %7, i32* null, i32* null, i32 0, i32 1)
  br label %160

153:                                              ; preds = %137
  %154 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %155 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %157 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %156)
  %158 = load %struct.vnode*, %struct.vnode** %3, align 8
  %159 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %158)
  br label %160

160:                                              ; preds = %153, %149
  %161 = load %struct.vnode*, %struct.vnode** %3, align 8
  %162 = getelementptr inbounds %struct.vnode, %struct.vnode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.TYPE_2__* @VFSTONFS(i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %160
  %169 = load %struct.componentname*, %struct.componentname** %5, align 8
  %170 = getelementptr inbounds %struct.componentname, %struct.componentname* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @MAKEENTRY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %168
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load %struct.vnode*, %struct.vnode** %3, align 8
  %183 = load %struct.vnode*, %struct.vnode** %11, align 8
  %184 = load %struct.componentname*, %struct.componentname** %5, align 8
  %185 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %6, i32 0, i32 0
  %186 = call i32 @cache_enter_time(%struct.vnode* %182, %struct.vnode* %183, %struct.componentname* %184, i32* %185, i32* null)
  br label %187

187:                                              ; preds = %181, %178, %175, %168, %160
  %188 = load i32, i32* %12, align 4
  ret i32 %188
}

declare dso_local i32 @nfsrpc_symlink(%struct.vnode*, i32, i32, i32, %struct.vattr*, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local i32 @nfscl_nget(i32, %struct.vnode*, %struct.nfsfh*, %struct.componentname*, i32, %struct.nfsnode**, i32*, i32) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs_lookitup(%struct.vnode*, i32, i32, i32, i32, %struct.nfsnode**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local %struct.TYPE_2__* @VFSTONFS(i32) #1

declare dso_local i32 @cache_enter_time(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
