; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_mknodrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_mknodrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i32, i32 }
%struct.vattr = type { i32, i32, i32, i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsnode = type { i64, i32 }
%struct.nfsfh = type { i32 }

@VCHR = common dso_local global i32 0, align 4
@VBLK = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.vattr*)* @nfs_mknodrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_mknodrpc(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2, %struct.vattr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.vattr*, align 8
  %10 = alloca %struct.nfsvattr, align 4
  %11 = alloca %struct.nfsvattr, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.nfsnode*, align 8
  %14 = alloca %struct.nfsnode*, align 8
  %15 = alloca %struct.nfsfh*, align 8
  %16 = alloca %struct.vattr, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vnode** %1, %struct.vnode*** %7, align 8
  store %struct.componentname* %2, %struct.componentname** %8, align 8
  store %struct.vattr* %3, %struct.vattr** %9, align 8
  store %struct.vnode* null, %struct.vnode** %12, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %13, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.vattr*, %struct.vattr** %9, align 8
  %22 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VCHR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.vattr*, %struct.vattr** %9, align 8
  %28 = getelementptr inbounds %struct.vattr, %struct.vattr* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VBLK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %4
  %33 = load %struct.vattr*, %struct.vattr** %9, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %20, align 4
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.vattr*, %struct.vattr** %9, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VFIFO, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.vattr*, %struct.vattr** %9, align 8
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VSOCK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36
  store i32 -1, i32* %20, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %50, i32* %5, align 4
  br label %183

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.vnode*, %struct.vnode** %6, align 8
  %54 = load %struct.componentname*, %struct.componentname** %8, align 8
  %55 = getelementptr inbounds %struct.componentname, %struct.componentname* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @VOP_GETATTR(%struct.vnode* %53, %struct.vattr* %16, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %5, align 4
  br label %183

61:                                               ; preds = %52
  %62 = load %struct.vnode*, %struct.vnode** %6, align 8
  %63 = load %struct.componentname*, %struct.componentname** %8, align 8
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.componentname*, %struct.componentname** %8, align 8
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vattr*, %struct.vattr** %9, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load %struct.vattr*, %struct.vattr** %9, align 8
  %72 = getelementptr inbounds %struct.vattr, %struct.vattr* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.componentname*, %struct.componentname** %8, align 8
  %75 = getelementptr inbounds %struct.componentname, %struct.componentname* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.componentname*, %struct.componentname** %8, align 8
  %78 = getelementptr inbounds %struct.componentname, %struct.componentname* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nfsrpc_mknod(%struct.vnode* %62, i32 %65, i32 %68, %struct.vattr* %69, i32 %70, i32 %73, i32 %76, i32 %79, %struct.nfsvattr* %11, %struct.nfsvattr* %10, %struct.nfsfh** %15, i32* %18, i32* %19, i32* null)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %117, label %83

83:                                               ; preds = %61
  %84 = load %struct.nfsfh*, %struct.nfsfh** %15, align 8
  %85 = icmp ne %struct.nfsfh* %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = load %struct.componentname*, %struct.componentname** %8, align 8
  %89 = getelementptr inbounds %struct.componentname, %struct.componentname* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.componentname*, %struct.componentname** %8, align 8
  %92 = getelementptr inbounds %struct.componentname, %struct.componentname* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.componentname*, %struct.componentname** %8, align 8
  %95 = getelementptr inbounds %struct.componentname, %struct.componentname* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.componentname*, %struct.componentname** %8, align 8
  %98 = getelementptr inbounds %struct.componentname, %struct.componentname* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nfsrpc_lookup(%struct.vnode* %87, i32 %90, i32 %93, i32 %96, i32 %99, %struct.nfsvattr* %11, %struct.nfsvattr* %10, %struct.nfsfh** %15, i32* %18, i32* %19, i32* null)
  br label %101

101:                                              ; preds = %86, %83
  %102 = load %struct.nfsfh*, %struct.nfsfh** %15, align 8
  %103 = icmp ne %struct.nfsfh* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.vnode*, %struct.vnode** %6, align 8
  %109 = load %struct.nfsfh*, %struct.nfsfh** %15, align 8
  %110 = load %struct.componentname*, %struct.componentname** %8, align 8
  %111 = load %struct.componentname*, %struct.componentname** %8, align 8
  %112 = getelementptr inbounds %struct.componentname, %struct.componentname* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @LK_EXCLUSIVE, align 4
  %115 = call i32 @nfscl_nget(i32 %107, %struct.vnode* %108, %struct.nfsfh* %109, %struct.componentname* %110, i32 %113, %struct.nfsnode** %13, i32* null, i32 %114)
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %104, %101
  br label %117

117:                                              ; preds = %116, %61
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 @nfscl_loadattrcache(%struct.vnode** %6, %struct.nfsvattr* %11, i32* null, i32* null, i32 0, i32 1)
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %122
  %126 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %127 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %126)
  store %struct.vnode* %127, %struct.vnode** %12, align 8
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = call i32 @nfscl_loadattrcache(%struct.vnode** %12, %struct.nfsvattr* %10, i32* null, i32* null, i32 0, i32 1)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.vnode*, %struct.vnode** %12, align 8
  %136 = call i32 @vput(%struct.vnode* %135)
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %122
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load %struct.vnode*, %struct.vnode** %12, align 8
  %144 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %143, %struct.vnode** %144, align 8
  br label %162

145:                                              ; preds = %139
  %146 = load %struct.vnode*, %struct.vnode** %6, align 8
  %147 = call i64 @NFS_ISV4(%struct.vnode* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.componentname*, %struct.componentname** %8, align 8
  %151 = getelementptr inbounds %struct.componentname, %struct.componentname* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load %struct.vattr*, %struct.vattr** %9, align 8
  %155 = getelementptr inbounds %struct.vattr, %struct.vattr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.vattr*, %struct.vattr** %9, align 8
  %158 = getelementptr inbounds %struct.vattr, %struct.vattr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @nfscl_maperr(i32 %152, i32 %153, i32 %156, i32 %159)
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %149, %145
  br label %162

162:                                              ; preds = %161, %142
  %163 = load %struct.vnode*, %struct.vnode** %6, align 8
  %164 = call %struct.nfsnode* @VTONFS(%struct.vnode* %163)
  store %struct.nfsnode* %164, %struct.nfsnode** %14, align 8
  %165 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %166 = call i32 @NFSLOCKNODE(%struct.nfsnode* %165)
  %167 = load i32, i32* @NMODIFIED, align 4
  %168 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %169 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %162
  %175 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %176 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load %struct.vnode*, %struct.vnode** %6, align 8
  %178 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %177)
  br label %179

179:                                              ; preds = %174, %162
  %180 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %181 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %180)
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %179, %59, %49
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @nfsrpc_mknod(%struct.vnode*, i32, i32, %struct.vattr*, i32, i32, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local i32 @nfsrpc_lookup(%struct.vnode*, i32, i32, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, %struct.nfsfh**, i32*, i32*, i32*) #1

declare dso_local i32 @nfscl_nget(i32, %struct.vnode*, %struct.nfsfh*, %struct.componentname*, i32, %struct.nfsnode**, i32*, i32) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
