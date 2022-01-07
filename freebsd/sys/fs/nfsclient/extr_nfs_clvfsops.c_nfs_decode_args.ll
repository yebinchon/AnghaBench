; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_decode_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_decode_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32 }
%struct.nfsmount = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_args = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@NFSMNT_NOCONN = common dso_local global i32 0, align 4
@NFS_MAXTIMEO = common dso_local global i8* null, align 8
@NFSMNT_NFSV4 = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@NFS_RETRANS_TCP = common dso_local global i32 0, align 4
@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@NFSMNT_RDIRPLUS = common dso_local global i32 0, align 4
@NFSMNT_ONEOPENOWN = common dso_local global i32 0, align 4
@NFSMNT_RESVPORT = common dso_local global i32 0, align 4
@NFSMNT_TIMEO = common dso_local global i32 0, align 4
@NFS_HZ = common dso_local global i32 0, align 4
@NFS_MINTIMEO = common dso_local global i32 0, align 4
@NFSMNT_RETRANS = common dso_local global i32 0, align 4
@NFS_MAXREXMIT = common dso_local global i32 0, align 4
@NFSMNT_WSIZE = common dso_local global i32 0, align 4
@NFS_FABLKSIZE = common dso_local global i8* null, align 8
@NFSMNT_RSIZE = common dso_local global i32 0, align 4
@NFSMNT_READDIRSIZE = common dso_local global i32 0, align 4
@NFSMNT_ACREGMIN = common dso_local global i32 0, align 4
@NFS_MINATTRTIMO = common dso_local global i64 0, align 8
@NFSMNT_ACREGMAX = common dso_local global i32 0, align 4
@NFS_MAXATTRTIMO = common dso_local global i64 0, align 8
@NFSMNT_ACDIRMIN = common dso_local global i32 0, align 4
@NFS_MINDIRATTRTIMO = common dso_local global i64 0, align 8
@NFSMNT_ACDIRMAX = common dso_local global i32 0, align 4
@NFS_MAXDIRATTRTIMO = common dso_local global i64 0, align 8
@NFSMNT_READAHEAD = common dso_local global i32 0, align 4
@NFS_MAXRAHEAD = common dso_local global i64 0, align 8
@NFSMNT_WCOMMITSIZE = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"newnfs_args: retrying connect\0A\00", align 1
@PSOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"nfscon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, %struct.nfsmount*, %struct.nfs_args*, i8*, %struct.ucred*, %struct.thread*)* @nfs_decode_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_decode_args(%struct.mount* %0, %struct.nfsmount* %1, %struct.nfs_args* %2, i8* %3, %struct.ucred* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca %struct.nfs_args*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %7, align 8
  store %struct.nfsmount* %1, %struct.nfsmount** %8, align 8
  store %struct.nfs_args* %2, %struct.nfs_args** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %17 = load %struct.mount*, %struct.mount** %7, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @vfs_getopt(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %6
  %23 = load %struct.mount*, %struct.mount** %7, align 8
  %24 = call i32 @MNT_ILOCK(%struct.mount* %23)
  %25 = load i32, i32* @MNT_RDONLY, align 4
  %26 = load %struct.mount*, %struct.mount** %7, align 8
  %27 = getelementptr inbounds %struct.mount, %struct.mount* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.mount*, %struct.mount** %7, align 8
  %31 = call i32 @MNT_IUNLOCK(%struct.mount* %30)
  br label %51

32:                                               ; preds = %6
  %33 = load %struct.mount*, %struct.mount** %7, align 8
  %34 = getelementptr inbounds %struct.mount, %struct.mount* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MNT_UPDATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.mount*, %struct.mount** %7, align 8
  %41 = call i32 @MNT_ILOCK(%struct.mount* %40)
  %42 = load i32, i32* @MNT_RDONLY, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.mount*, %struct.mount** %7, align 8
  %45 = getelementptr inbounds %struct.mount, %struct.mount* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mount*, %struct.mount** %7, align 8
  %49 = call i32 @MNT_IUNLOCK(%struct.mount* %48)
  br label %50

50:                                               ; preds = %39, %32
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %53 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCK_STREAM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  %58 = load i32, i32* @NFSMNT_NOCONN, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %61 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i8*, i8** @NFS_MAXTIMEO, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %67 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %69 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NFSMNT_NFSV4, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %57
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %77 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %57
  %79 = load i32, i32* @NFS_RETRANS_TCP, align 4
  %80 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %81 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %51
  %84 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %85 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NFSMNT_NFSV3, align 4
  %88 = load i32, i32* @NFSMNT_NFSV4, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %83
  %93 = load i32, i32* @NFSMNT_RDIRPLUS, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %96 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @NFSMNT_RDIRPLUS, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %102 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %92, %83
  %106 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load i32, i32* @NFSMNT_ONEOPENOWN, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %114 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @NFSMNT_ONEOPENOWN, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %120 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %110, %105
  %124 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %125 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NFSMNT_RESVPORT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %132 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NFSMNT_RESVPORT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %130, %123
  %138 = phi i1 [ false, %123 ], [ %136, %130 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %13, align 4
  %140 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %141 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NFSMNT_NOCONN, align 4
  %144 = and i32 %142, %143
  %145 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %146 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NFSMNT_NOCONN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %144, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %13, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %13, align 4
  %154 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %155 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %158 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %156, %159
  %161 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %162 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %164 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NFSMNT_TIMEO, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %208

169:                                              ; preds = %137
  %170 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %171 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %208

174:                                              ; preds = %169
  %175 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %176 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @NFS_HZ, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %179, 5
  %181 = sdiv i32 %180, 10
  %182 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %183 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %185 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NFS_MINTIMEO, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %174
  %190 = load i32, i32* @NFS_MINTIMEO, align 4
  %191 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %192 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %207

193:                                              ; preds = %174
  %194 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %195 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = load i8*, i8** @NFS_MAXTIMEO, align 8
  %200 = icmp ugt i8* %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load i8*, i8** @NFS_MAXTIMEO, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %205 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %201, %193
  br label %207

207:                                              ; preds = %206, %189
  br label %208

208:                                              ; preds = %207, %169, %137
  %209 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %210 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @NFSMNT_RETRANS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %208
  %216 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %217 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %236

220:                                              ; preds = %215
  %221 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %222 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %225 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %227 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @NFS_MAXREXMIT, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %220
  %232 = load i32, i32* @NFS_MAXREXMIT, align 4
  %233 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %234 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %231, %220
  br label %236

236:                                              ; preds = %235, %215, %208
  %237 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %238 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @NFSMNT_WSIZE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %277

243:                                              ; preds = %236
  %244 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %245 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %277

248:                                              ; preds = %243
  %249 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %250 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %253 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %252, i32 0, i32 4
  store i64 %251, i64* %253, align 8
  %254 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %255 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = inttoptr i64 %256 to i8*
  %258 = load i8*, i8** @NFS_FABLKSIZE, align 8
  %259 = icmp ugt i8* %257, %258
  br i1 %259, label %260, label %271

260:                                              ; preds = %248
  %261 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %262 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = call i32 @fls(i32 %264)
  %266 = sub nsw i32 %265, 1
  %267 = shl i32 1, %266
  %268 = sext i32 %267 to i64
  %269 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %270 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %269, i32 0, i32 4
  store i64 %268, i64* %270, align 8
  br label %276

271:                                              ; preds = %248
  %272 = load i8*, i8** @NFS_FABLKSIZE, align 8
  %273 = ptrtoint i8* %272 to i64
  %274 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %275 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %274, i32 0, i32 4
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %271, %260
  br label %277

277:                                              ; preds = %276, %243, %236
  %278 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %279 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @NFSMNT_RSIZE, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %318

284:                                              ; preds = %277
  %285 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %286 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %318

289:                                              ; preds = %284
  %290 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %291 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %294 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %293, i32 0, i32 5
  store i64 %292, i64* %294, align 8
  %295 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %296 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to i8*
  %299 = load i8*, i8** @NFS_FABLKSIZE, align 8
  %300 = icmp ugt i8* %298, %299
  br i1 %300, label %301, label %312

301:                                              ; preds = %289
  %302 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %303 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @fls(i32 %305)
  %307 = sub nsw i32 %306, 1
  %308 = shl i32 1, %307
  %309 = sext i32 %308 to i64
  %310 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %311 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %310, i32 0, i32 5
  store i64 %309, i64* %311, align 8
  br label %317

312:                                              ; preds = %289
  %313 = load i8*, i8** @NFS_FABLKSIZE, align 8
  %314 = ptrtoint i8* %313 to i64
  %315 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %316 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %315, i32 0, i32 5
  store i64 %314, i64* %316, align 8
  br label %317

317:                                              ; preds = %312, %301
  br label %318

318:                                              ; preds = %317, %284, %277
  %319 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %320 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @NFSMNT_READDIRSIZE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %318
  %326 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %327 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = icmp sgt i64 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %325
  %331 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %332 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %335 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %334, i32 0, i32 6
  store i64 %333, i64* %335, align 8
  br label %336

336:                                              ; preds = %330, %325, %318
  %337 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %338 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @NFSMNT_ACREGMIN, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %336
  %344 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %345 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %344, i32 0, i32 7
  %346 = load i64, i64* %345, align 8
  %347 = icmp sge i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %343
  %349 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %350 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %349, i32 0, i32 7
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %353 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %352, i32 0, i32 7
  store i64 %351, i64* %353, align 8
  br label %358

354:                                              ; preds = %343, %336
  %355 = load i64, i64* @NFS_MINATTRTIMO, align 8
  %356 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %357 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %356, i32 0, i32 7
  store i64 %355, i64* %357, align 8
  br label %358

358:                                              ; preds = %354, %348
  %359 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %360 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @NFSMNT_ACREGMAX, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %376

365:                                              ; preds = %358
  %366 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %367 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %366, i32 0, i32 8
  %368 = load i64, i64* %367, align 8
  %369 = icmp sge i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %365
  %371 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %372 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %371, i32 0, i32 8
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %375 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %374, i32 0, i32 8
  store i64 %373, i64* %375, align 8
  br label %380

376:                                              ; preds = %365, %358
  %377 = load i64, i64* @NFS_MAXATTRTIMO, align 8
  %378 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %379 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %378, i32 0, i32 8
  store i64 %377, i64* %379, align 8
  br label %380

380:                                              ; preds = %376, %370
  %381 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %382 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @NFSMNT_ACDIRMIN, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %380
  %388 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %389 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %388, i32 0, i32 9
  %390 = load i64, i64* %389, align 8
  %391 = icmp sge i64 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %387
  %393 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %394 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %393, i32 0, i32 9
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %397 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %396, i32 0, i32 9
  store i64 %395, i64* %397, align 8
  br label %402

398:                                              ; preds = %387, %380
  %399 = load i64, i64* @NFS_MINDIRATTRTIMO, align 8
  %400 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %401 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %400, i32 0, i32 9
  store i64 %399, i64* %401, align 8
  br label %402

402:                                              ; preds = %398, %392
  %403 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %404 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @NFSMNT_ACDIRMAX, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %420

409:                                              ; preds = %402
  %410 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %411 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %410, i32 0, i32 10
  %412 = load i64, i64* %411, align 8
  %413 = icmp sge i64 %412, 0
  br i1 %413, label %414, label %420

414:                                              ; preds = %409
  %415 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %416 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %415, i32 0, i32 10
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %419 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %418, i32 0, i32 10
  store i64 %417, i64* %419, align 8
  br label %424

420:                                              ; preds = %409, %402
  %421 = load i64, i64* @NFS_MAXDIRATTRTIMO, align 8
  %422 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %423 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %422, i32 0, i32 10
  store i64 %421, i64* %423, align 8
  br label %424

424:                                              ; preds = %420, %414
  %425 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %426 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %425, i32 0, i32 9
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %429 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %428, i32 0, i32 10
  %430 = load i64, i64* %429, align 8
  %431 = icmp sgt i64 %427, %430
  br i1 %431, label %432, label %438

432:                                              ; preds = %424
  %433 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %434 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %433, i32 0, i32 10
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %437 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %436, i32 0, i32 9
  store i64 %435, i64* %437, align 8
  br label %438

438:                                              ; preds = %432, %424
  %439 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %440 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %439, i32 0, i32 7
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %443 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %442, i32 0, i32 8
  %444 = load i64, i64* %443, align 8
  %445 = icmp sgt i64 %441, %444
  br i1 %445, label %446, label %452

446:                                              ; preds = %438
  %447 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %448 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %447, i32 0, i32 8
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %451 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %450, i32 0, i32 7
  store i64 %449, i64* %451, align 8
  br label %452

452:                                              ; preds = %446, %438
  %453 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %454 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @NFSMNT_READAHEAD, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %481

459:                                              ; preds = %452
  %460 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %461 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %460, i32 0, i32 11
  %462 = load i64, i64* %461, align 8
  %463 = icmp sge i64 %462, 0
  br i1 %463, label %464, label %481

464:                                              ; preds = %459
  %465 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %466 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %465, i32 0, i32 11
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @NFS_MAXRAHEAD, align 8
  %469 = icmp sle i64 %467, %468
  br i1 %469, label %470, label %476

470:                                              ; preds = %464
  %471 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %472 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %471, i32 0, i32 11
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %475 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %474, i32 0, i32 11
  store i64 %473, i64* %475, align 8
  br label %480

476:                                              ; preds = %464
  %477 = load i64, i64* @NFS_MAXRAHEAD, align 8
  %478 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %479 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %478, i32 0, i32 11
  store i64 %477, i64* %479, align 8
  br label %480

480:                                              ; preds = %476, %470
  br label %481

481:                                              ; preds = %480, %459, %452
  %482 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %483 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @NFSMNT_WCOMMITSIZE, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %516

488:                                              ; preds = %481
  %489 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %490 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %489, i32 0, i32 12
  %491 = load i32, i32* %490, align 8
  %492 = icmp sge i32 %491, 0
  br i1 %492, label %493, label %516

493:                                              ; preds = %488
  %494 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %495 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %494, i32 0, i32 12
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %499 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %498, i32 0, i32 4
  %500 = load i64, i64* %499, align 8
  %501 = icmp slt i64 %497, %500
  br i1 %501, label %502, label %509

502:                                              ; preds = %493
  %503 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %504 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %503, i32 0, i32 4
  %505 = load i64, i64* %504, align 8
  %506 = trunc i64 %505 to i32
  %507 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %508 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %507, i32 0, i32 12
  store i32 %506, i32* %508, align 8
  br label %515

509:                                              ; preds = %493
  %510 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %511 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %510, i32 0, i32 12
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %514 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %513, i32 0, i32 12
  store i32 %512, i32* %514, align 8
  br label %515

515:                                              ; preds = %509, %502
  br label %516

516:                                              ; preds = %515, %488, %481
  %517 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %518 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %517, i32 0, i32 13
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %521 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %519, %522
  br i1 %523, label %532, label %524

524:                                              ; preds = %516
  %525 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %526 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %525, i32 0, i32 14
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %529 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %528, i32 0, i32 13
  %530 = load i64, i64* %529, align 8
  %531 = icmp ne i64 %527, %530
  br label %532

532:                                              ; preds = %524, %516
  %533 = phi i1 [ true, %516 ], [ %531, %524 ]
  %534 = zext i1 %533 to i32
  %535 = load i32, i32* %13, align 4
  %536 = or i32 %535, %534
  store i32 %536, i32* %13, align 4
  %537 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %538 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %537, i32 0, i32 17
  %539 = load i32*, i32** %538, align 8
  %540 = icmp ne i32* %539, null
  br i1 %540, label %541, label %605

541:                                              ; preds = %532
  %542 = load i32, i32* %13, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %605

544:                                              ; preds = %541
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %545 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %546 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %545, i32 0, i32 13
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @SOCK_STREAM, align 8
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %550, label %559

550:                                              ; preds = %544
  %551 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %552 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %551, i32 0, i32 16
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 0
  %554 = call i32 @newnfs_sndlock(i32* %553)
  store i32 %554, i32* %16, align 4
  %555 = load i32, i32* %16, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %558, label %557

557:                                              ; preds = %550
  store i32 1, i32* %15, align 4
  br label %558

558:                                              ; preds = %557, %550
  br label %559

559:                                              ; preds = %558, %544
  %560 = load i32, i32* %16, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %604, label %562

562:                                              ; preds = %559
  %563 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %564 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %563, i32 0, i32 16
  %565 = call i32 @newnfs_disconnect(%struct.TYPE_3__* %564)
  %566 = load i32, i32* %15, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %562
  %569 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %570 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %569, i32 0, i32 16
  %571 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %570, i32 0, i32 0
  %572 = call i32 @newnfs_sndunlock(i32* %571)
  br label %573

573:                                              ; preds = %568, %562
  %574 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %575 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %578 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %577, i32 0, i32 13
  store i64 %576, i64* %578, align 8
  %579 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %580 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %579, i32 0, i32 13
  %581 = load i64, i64* %580, align 8
  %582 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %583 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %582, i32 0, i32 14
  store i64 %581, i64* %583, align 8
  %584 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %585 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %584, i32 0, i32 13
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @SOCK_DGRAM, align 8
  %588 = icmp eq i64 %586, %587
  br i1 %588, label %589, label %603

589:                                              ; preds = %573
  br label %590

590:                                              ; preds = %598, %589
  %591 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %592 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %593 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %592, i32 0, i32 16
  %594 = load %struct.ucred*, %struct.ucred** %11, align 8
  %595 = load %struct.thread*, %struct.thread** %12, align 8
  %596 = call i64 @newnfs_connect(%struct.nfsmount* %591, %struct.TYPE_3__* %593, %struct.ucred* %594, %struct.thread* %595, i32 0)
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %602

598:                                              ; preds = %590
  %599 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %600 = load i32, i32* @PSOCK, align 4
  %601 = call i32 @nfs_catnap(i32 %600, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %590

602:                                              ; preds = %590
  br label %603

603:                                              ; preds = %602, %573
  br label %604

604:                                              ; preds = %603, %559
  br label %616

605:                                              ; preds = %541, %532
  %606 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %607 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %610 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %609, i32 0, i32 13
  store i64 %608, i64* %610, align 8
  %611 = load %struct.nfs_args*, %struct.nfs_args** %9, align 8
  %612 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %611, i32 0, i32 13
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %615 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %614, i32 0, i32 14
  store i64 %613, i64* %615, align 8
  br label %616

616:                                              ; preds = %605, %604
  %617 = load i8*, i8** %10, align 8
  %618 = icmp ne i8* %617, null
  br i1 %618, label %619, label %634

619:                                              ; preds = %616
  %620 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %621 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %620, i32 0, i32 15
  %622 = load i32, i32* %621, align 8
  %623 = load i8*, i8** %10, align 8
  %624 = call i32 @strlcpy(i32 %622, i8* %623, i32 4)
  %625 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %626 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %625, i32 0, i32 15
  %627 = load i32, i32* %626, align 8
  %628 = call i8* @strchr(i32 %627, i8 signext 58)
  store i8* %628, i8** %14, align 8
  %629 = load i8*, i8** %14, align 8
  %630 = icmp ne i8* %629, null
  br i1 %630, label %631, label %633

631:                                              ; preds = %619
  %632 = load i8*, i8** %14, align 8
  store i8 0, i8* %632, align 1
  br label %633

633:                                              ; preds = %631, %619
  br label %634

634:                                              ; preds = %633, %616
  ret void
}

declare dso_local i64 @vfs_getopt(i32, i8*, i32*, i32*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @newnfs_sndlock(i32*) #1

declare dso_local i32 @newnfs_disconnect(%struct.TYPE_3__*) #1

declare dso_local i32 @newnfs_sndunlock(i32*) #1

declare dso_local i64 @newnfs_connect(%struct.nfsmount*, %struct.TYPE_3__*, %struct.ucred*, %struct.thread*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @nfs_catnap(i32, i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
