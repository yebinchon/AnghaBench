; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_pathconf_args = type { i32, i32*, %struct.vnode* }
%struct.vnode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfsv3_pathconf = type { i32, i32, i32, i32, i32, i64 }
%struct.nfsvattr = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@NFS_LINK_MAX = common dso_local global i32 0, align 4
@NFS_MAXNAMLEN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nfsrv_useacl = common dso_local global i32 0, align 4
@NFSATTRBIT_ACL = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NFS_MAXPATHLEN = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_pathconf_args*)* @nfs_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_pathconf_args*, align 8
  %4 = alloca %struct.nfsv3_pathconf, align 8
  %5 = alloca %struct.nfsvattr, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %3, align 8
  %10 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %6, align 8
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %13, %struct.thread** %7, align 8
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call i64 @NFS_ISV34(%struct.vnode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 138
  br i1 %21, label %46, label %22

22:                                               ; preds = %17
  %23 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 137
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 140
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 136
  br i1 %36, label %46, label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = call i64 @NFS_ISV4(%struct.vnode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %43 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 143
  br i1 %45, label %46, label %63

46:                                               ; preds = %41, %32, %27, %22, %17
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = load %struct.thread*, %struct.thread** %7, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = call i32 @nfsrpc_pathconf(%struct.vnode* %47, %struct.nfsv3_pathconf* %4, i32 %50, %struct.thread* %51, %struct.nfsvattr* %5, i32* %8, i32* null)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @nfscl_loadattrcache(%struct.vnode** %6, %struct.nfsvattr* %5, i32* null, i32* null, i32 0, i32 1)
  br label %57

57:                                               ; preds = %55, %46
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %232

62:                                               ; preds = %57
  br label %72

63:                                               ; preds = %41, %37
  %64 = load i32, i32* @NFS_LINK_MAX, align 4
  %65 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @NFS_MAXNAMLEN, align 4
  %67 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 4
  store i32 1, i32* %71, align 8
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %63, %62
  %73 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %74 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %227 [
    i32 138, label %76
    i32 137, label %82
    i32 135, label %88
    i32 140, label %112
    i32 136, label %118
    i32 143, label %124
    i32 142, label %148
    i32 134, label %162
    i32 128, label %166
    i32 141, label %170
    i32 139, label %180
    i32 133, label %193
    i32 132, label %203
    i32 131, label %207
    i32 130, label %217
    i32 129, label %222
  ]

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %80 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32 %78, i32* %81, align 4
  br label %230

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %86 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32 %84, i32* %87, align 4
  br label %230

88:                                               ; preds = %72
  %89 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %90 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %89, i32 0, i32 2
  %91 = load %struct.vnode*, %struct.vnode** %90, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VDIR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %98 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %97, i32 0, i32 2
  %99 = load %struct.vnode*, %struct.vnode** %98, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @VFIFO, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96, %88
  %105 = load i32, i32* @PIPE_BUF, align 4
  %106 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %107 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  store i32 %105, i32* %108, align 4
  br label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %104
  br label %230

112:                                              ; preds = %72
  %113 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %116 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  store i32 %114, i32* %117, align 4
  br label %230

118:                                              ; preds = %72
  %119 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %4, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %122 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  store i32 %120, i32* %123, align 4
  br label %230

124:                                              ; preds = %72
  %125 = load %struct.vnode*, %struct.vnode** %6, align 8
  %126 = call i64 @NFS_ISV4(%struct.vnode* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load i32, i32* @nfsrv_useacl, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %5, i32 0, i32 0
  %136 = load i32, i32* @NFSATTRBIT_ACL, align 4
  %137 = call i32 @NFSISSET_ATTRBIT(i32* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %141 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  store i32 1, i32* %142, align 4
  br label %147

143:                                              ; preds = %134, %131, %128, %124
  %144 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %145 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %139
  br label %230

148:                                              ; preds = %72
  %149 = load %struct.vnode*, %struct.vnode** %6, align 8
  %150 = call i64 @NFS_ISV4(%struct.vnode* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %154 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %155 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  store i32 %153, i32* %156, align 4
  br label %161

157:                                              ; preds = %148
  %158 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %159 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  store i32 3, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %152
  br label %230

162:                                              ; preds = %72
  %163 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %164 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  store i32 0, i32* %165, align 4
  br label %230

166:                                              ; preds = %72
  %167 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %168 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  store i32 0, i32* %169, align 4
  br label %230

170:                                              ; preds = %72
  %171 = load %struct.vnode*, %struct.vnode** %6, align 8
  %172 = getelementptr inbounds %struct.vnode, %struct.vnode* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %178 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  store i32 %176, i32* %179, align 4
  br label %230

180:                                              ; preds = %72
  %181 = load %struct.vnode*, %struct.vnode** %6, align 8
  %182 = call i64 @NFS_ISV34(%struct.vnode* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %186 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  store i32 64, i32* %187, align 4
  br label %192

188:                                              ; preds = %180
  %189 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %190 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  store i32 32, i32* %191, align 4
  br label %192

192:                                              ; preds = %188, %184
  br label %230

193:                                              ; preds = %72
  %194 = load %struct.vnode*, %struct.vnode** %6, align 8
  %195 = getelementptr inbounds %struct.vnode, %struct.vnode* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %201 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  store i32 %199, i32* %202, align 4
  br label %230

203:                                              ; preds = %72
  %204 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %205 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  store i32 -1, i32* %206, align 4
  br label %230

207:                                              ; preds = %72
  %208 = load %struct.vnode*, %struct.vnode** %6, align 8
  %209 = getelementptr inbounds %struct.vnode, %struct.vnode* %208, i32 0, i32 0
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %215 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  store i32 %213, i32* %216, align 4
  br label %230

217:                                              ; preds = %72
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %220 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  store i32 %218, i32* %221, align 4
  br label %230

222:                                              ; preds = %72
  %223 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %224 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %225 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  store i32 %223, i32* %226, align 4
  br label %230

227:                                              ; preds = %72
  %228 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %229 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %228)
  store i32 %229, i32* %9, align 4
  br label %230

230:                                              ; preds = %227, %222, %217, %207, %203, %193, %192, %170, %166, %162, %161, %147, %118, %112, %111, %82, %76
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %230, %60
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i64 @NFS_ISV34(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_pathconf(%struct.vnode*, %struct.nfsv3_pathconf*, i32, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @NFSISSET_ATTRBIT(i32*, i32) #1

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
