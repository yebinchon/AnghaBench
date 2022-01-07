; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_dofflayoutio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_dofflayoutio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.nfscldevinfo = type { i64, i32, i64, i64, i32, i32 }
%struct.nfscllayout = type { i32 }
%struct.nfsclflayout = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, %struct.nfsfh** }
%struct.nfsfh = type { i32 }
%struct.mbuf = type { i32 }
%struct.nfsclwritedsdorpc = type { i32 }
%struct.ucred = type { i32, i32*, i32 }
%struct.nfsnode = type { i32 }
%struct.nfsclds = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"nfscl_dofflayoutio: off=%ju len=%ju\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"mirror=%d vind=%d fhlen=%d st.seqid=0x%x\0A\00", align 1
@NFSDI_TIGHTCOUPLED = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSREAD = common dso_local global i32 0, align 4
@NDSCOMMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"commitds=%d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"DS layreterr for commit\0A\00", align 1
@NFSV4OP_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"aft nfsio_commitds=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"readds=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"DS layreterr for read\0A\00", align 1
@NFSV4OP_READ = common dso_local global i32 0, align 4
@NFSLY_WRITTEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"mcopy reloff=%d xfer=%jd\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"nfsio_writedsmir=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"DS layreterr for write\0A\00", align 1
@NFSV4OP_WRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"aft read/writeds=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"eo nfscl_dofflayoutio=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uio*, i32*, i32*, i32*, %struct.TYPE_9__*, i32, %struct.nfscldevinfo*, %struct.nfscllayout*, %struct.nfsclflayout*, i64, i64, i32, i32, %struct.mbuf*, %struct.nfsclwritedsdorpc*, %struct.ucred*, i32*)* @nfscl_dofflayoutio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscl_dofflayoutio(i32 %0, %struct.uio* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_9__* %5, i32 %6, %struct.nfscldevinfo* %7, %struct.nfscllayout* %8, %struct.nfsclflayout* %9, i64 %10, i64 %11, i32 %12, i32 %13, %struct.mbuf* %14, %struct.nfsclwritedsdorpc* %15, %struct.ucred* %16, i32* %17) #0 {
  %19 = alloca i32, align 4
  %20 = alloca %struct.uio*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.nfscldevinfo*, align 8
  %27 = alloca %struct.nfscllayout*, align 8
  %28 = alloca %struct.nfsclflayout*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.mbuf*, align 8
  %34 = alloca %struct.nfsclwritedsdorpc*, align 8
  %35 = alloca %struct.ucred*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.nfsnode*, align 8
  %42 = alloca %struct.nfsfh*, align 8
  %43 = alloca %struct.nfsclds**, align 8
  %44 = alloca %struct.ucred*, align 8
  %45 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %19, align 4
  store %struct.uio* %1, %struct.uio** %20, align 8
  store i32* %2, i32** %21, align 8
  store i32* %3, i32** %22, align 8
  store i32* %4, i32** %23, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %24, align 8
  store i32 %6, i32* %25, align 4
  store %struct.nfscldevinfo* %7, %struct.nfscldevinfo** %26, align 8
  store %struct.nfscllayout* %8, %struct.nfscllayout** %27, align 8
  store %struct.nfsclflayout* %9, %struct.nfsclflayout** %28, align 8
  store i64 %10, i64* %29, align 8
  store i64 %11, i64* %30, align 8
  store i32 %12, i32* %31, align 4
  store i32 %13, i32* %32, align 4
  store %struct.mbuf* %14, %struct.mbuf** %33, align 8
  store %struct.nfsclwritedsdorpc* %15, %struct.nfsclwritedsdorpc** %34, align 8
  store %struct.ucred* %16, %struct.ucred** %35, align 8
  store i32* %17, i32** %36, align 8
  %46 = load i32, i32* %19, align 4
  %47 = call %struct.nfsnode* @VTONFS(i32 %46)
  store %struct.nfsnode* %47, %struct.nfsnode** %41, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %48 = load i64, i64* %29, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %30, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %441, %18
  %54 = load i64, i64* %30, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %39, align 4
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %61, label %442

61:                                               ; preds = %59
  %62 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %63 = call %struct.nfsclds** @nfsfldi_addr(%struct.nfscldevinfo* %62, i32 0)
  store %struct.nfsclds** %63, %struct.nfsclds*** %43, align 8
  %64 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %65 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %31, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load %struct.nfsfh**, %struct.nfsfh*** %70, align 8
  %72 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %73 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.nfsfh*, %struct.nfsfh** %71, i64 %74
  %76 = load %struct.nfsfh*, %struct.nfsfh** %75, align 8
  store %struct.nfsfh* %76, %struct.nfsfh** %42, align 8
  %77 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %78 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %31, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %24, align 8
  %84 = load i32, i32* %31, align 4
  %85 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %86 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %89 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %84, i64 %87, i32 %90, i32 %93)
  %95 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %96 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NFSDI_TIGHTCOUPLED, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %61
  %102 = load %struct.ucred*, %struct.ucred** %35, align 8
  %103 = call %struct.ucred* @NFSNEWCRED(%struct.ucred* %102)
  store %struct.ucred* %103, %struct.ucred** %44, align 8
  %104 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %105 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %31, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ucred*, %struct.ucred** %44, align 8
  %113 = getelementptr inbounds %struct.ucred, %struct.ucred* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %115 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %31, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ucred*, %struct.ucred** %44, align 8
  %123 = getelementptr inbounds %struct.ucred, %struct.ucred* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %121, i32* %125, align 4
  %126 = load %struct.ucred*, %struct.ucred** %44, align 8
  %127 = getelementptr inbounds %struct.ucred, %struct.ucred* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %130

128:                                              ; preds = %61
  %129 = load %struct.ucred*, %struct.ucred** %35, align 8
  store %struct.ucred* %129, %struct.ucred** %44, align 8
  br label %130

130:                                              ; preds = %128, %101
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %136 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %37, align 8
  br label %142

138:                                              ; preds = %130
  %139 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %140 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %37, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %144 = call i32 @NFSLOCKNODE(%struct.nfsnode* %143)
  %145 = load i32, i32* @NDSCOMMIT, align 4
  %146 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %147 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %151 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %150)
  %152 = load i64, i64* %30, align 8
  %153 = load i64, i64* %37, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %142
  %156 = load i32, i32* %32, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i64, i64* %37, align 8
  store i64 %159, i64* %38, align 8
  br label %162

160:                                              ; preds = %155, %142
  %161 = load i64, i64* %30, align 8
  store i64 %161, i64* %38, align 8
  br label %162

162:                                              ; preds = %160, %158
  %163 = load i32, i32* %32, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %252

165:                                              ; preds = %162
  %166 = load i32, i32* %39, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %231

168:                                              ; preds = %165
  %169 = load i32, i32* %31, align 4
  %170 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %171 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 1
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load i32, i32* %19, align 4
  %177 = load i64, i64* %29, align 8
  %178 = load i64, i64* %38, align 8
  %179 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %180 = load %struct.nfsclds*, %struct.nfsclds** %179, align 8
  %181 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %182 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %183 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %186 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %34, align 8
  %189 = load %struct.ucred*, %struct.ucred** %44, align 8
  %190 = load i32*, i32** %36, align 8
  %191 = call i32 @nfsio_commitds(i32 %176, i64 %177, i64 %178, %struct.nfsclds* %180, %struct.nfsfh* %181, i32 %184, i32 %187, %struct.nfsclwritedsdorpc* %188, %struct.ucred* %189, i32* %190)
  store i32 %191, i32* %39, align 4
  br label %208

192:                                              ; preds = %168
  %193 = load i32, i32* %19, align 4
  %194 = load i64, i64* %29, align 8
  %195 = load i64, i64* %38, align 8
  %196 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %197 = load %struct.nfsclds*, %struct.nfsclds** %196, align 8
  %198 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %199 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %200 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %203 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ucred*, %struct.ucred** %44, align 8
  %206 = load i32*, i32** %36, align 8
  %207 = call i32 @nfsrpc_commitds(i32 %193, i64 %194, i64 %195, %struct.nfsclds* %197, %struct.nfsfh* %198, i32 %201, i32 %204, %struct.ucred* %205, i32* %206)
  store i32 %207, i32* %39, align 4
  br label %208

208:                                              ; preds = %192, %175
  %209 = load i32, i32* %39, align 4
  %210 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %39, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %208
  %214 = load i32, i32* %39, align 4
  %215 = load i32, i32* @EACCES, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load i32, i32* %39, align 4
  %219 = load i32, i32* @ESTALE, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %217
  %222 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %223 = load i32, i32* @NFSV4OP_COMMIT, align 4
  %224 = load i32, i32* %39, align 4
  %225 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %226 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %227 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %228 = load %struct.nfsclds*, %struct.nfsclds** %227, align 8
  %229 = call i32 @nfscl_dserr(i32 %223, i32 %224, %struct.nfscldevinfo* %225, %struct.nfscllayout* %226, %struct.nfsclds* %228)
  br label %230

230:                                              ; preds = %221, %217, %213, %208
  br label %231

231:                                              ; preds = %230, %165
  %232 = load i32, i32* %39, align 4
  %233 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %39, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i32*, i32** %23, align 8
  store i32 1, i32* %237, align 4
  %238 = load %struct.uio*, %struct.uio** %20, align 8
  %239 = getelementptr inbounds %struct.uio, %struct.uio* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  br label %251

240:                                              ; preds = %231
  %241 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %242 = call i32 @NFSLOCKNODE(%struct.nfsnode* %241)
  %243 = load i32, i32* @NDSCOMMIT, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %246 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %250 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %249)
  br label %251

251:                                              ; preds = %240, %236
  br label %414

252:                                              ; preds = %162
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %297

256:                                              ; preds = %252
  %257 = load i32, i32* %19, align 4
  %258 = load %struct.uio*, %struct.uio** %20, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %260 = load i32*, i32** %23, align 8
  %261 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %262 = load %struct.nfsclds*, %struct.nfsclds** %261, align 8
  %263 = load i64, i64* %29, align 8
  %264 = load i64, i64* %38, align 8
  %265 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %266 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %267 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %270 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ucred*, %struct.ucred** %44, align 8
  %273 = load i32*, i32** %36, align 8
  %274 = call i32 @nfsrpc_readds(i32 %257, %struct.uio* %258, %struct.TYPE_9__* %259, i32* %260, %struct.nfsclds* %262, i64 %263, i64 %264, %struct.nfsfh* %265, i32 1, i32 %268, i32 %271, %struct.ucred* %272, i32* %273)
  store i32 %274, i32* %39, align 4
  %275 = load i32, i32* %39, align 4
  %276 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %275)
  %277 = load i32, i32* %39, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %296

279:                                              ; preds = %256
  %280 = load i32, i32* %39, align 4
  %281 = load i32, i32* @EACCES, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %279
  %284 = load i32, i32* %39, align 4
  %285 = load i32, i32* @ESTALE, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %296

287:                                              ; preds = %283
  %288 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %289 = load i32, i32* @NFSV4OP_READ, align 4
  %290 = load i32, i32* %39, align 4
  %291 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %292 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %293 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %294 = load %struct.nfsclds*, %struct.nfsclds** %293, align 8
  %295 = call i32 @nfscl_dserr(i32 %289, i32 %290, %struct.nfscldevinfo* %291, %struct.nfscllayout* %292, %struct.nfsclds* %294)
  br label %296

296:                                              ; preds = %287, %283, %279, %256
  br label %413

297:                                              ; preds = %252
  %298 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %299 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %333

302:                                              ; preds = %297
  %303 = load i32, i32* %19, align 4
  %304 = load %struct.uio*, %struct.uio** %20, align 8
  %305 = load i32*, i32** %21, align 8
  %306 = load i32*, i32** %22, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %308 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %309 = load %struct.nfsclds*, %struct.nfsclds** %308, align 8
  %310 = load i64, i64* %29, align 8
  %311 = load i64, i64* %38, align 8
  %312 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %313 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %314 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %317 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.ucred*, %struct.ucred** %44, align 8
  %320 = load i32*, i32** %36, align 8
  %321 = call i32 @nfsrpc_writeds(i32 %303, %struct.uio* %304, i32* %305, i32* %306, %struct.TYPE_9__* %307, %struct.nfsclds* %309, i64 %310, i64 %311, %struct.nfsfh* %312, i32 0, i32 1, i32 %315, i32 %318, %struct.ucred* %319, i32* %320)
  store i32 %321, i32* %39, align 4
  %322 = load i32, i32* %39, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %302
  %325 = call i32 (...) @NFSLOCKCLSTATE()
  %326 = load i32, i32* @NFSLY_WRITTEN, align 4
  %327 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %328 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  %331 = call i32 (...) @NFSUNLOCKCLSTATE()
  br label %332

332:                                              ; preds = %324, %302
  br label %412

333:                                              ; preds = %297
  %334 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  %335 = load i32, i32* %40, align 4
  %336 = load i64, i64* %38, align 8
  %337 = call %struct.mbuf* @nfsm_copym(%struct.mbuf* %334, i32 %335, i64 %336)
  store %struct.mbuf* %337, %struct.mbuf** %45, align 8
  %338 = load i32, i32* %40, align 4
  %339 = load i64, i64* %38, align 8
  %340 = trunc i64 %339 to i32
  %341 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %338, i32 %340)
  %342 = load i32, i32* %31, align 4
  %343 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %344 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = sub nsw i32 %345, 1
  %347 = icmp slt i32 %342, %346
  br i1 %347, label %348, label %369

348:                                              ; preds = %333
  %349 = load i32, i32* %19, align 4
  %350 = load i32*, i32** %21, align 8
  %351 = load i32*, i32** %22, align 8
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %353 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %354 = load %struct.nfsclds*, %struct.nfsclds** %353, align 8
  %355 = load i64, i64* %29, align 8
  %356 = load i64, i64* %38, align 8
  %357 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %358 = load %struct.mbuf*, %struct.mbuf** %45, align 8
  %359 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %360 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %363 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.nfsclwritedsdorpc*, %struct.nfsclwritedsdorpc** %34, align 8
  %366 = load %struct.ucred*, %struct.ucred** %44, align 8
  %367 = load i32*, i32** %36, align 8
  %368 = call i32 @nfsio_writedsmir(i32 %349, i32* %350, i32* %351, %struct.TYPE_9__* %352, %struct.nfsclds* %354, i64 %355, i64 %356, %struct.nfsfh* %357, %struct.mbuf* %358, i32 %361, i32 %364, %struct.nfsclwritedsdorpc* %365, %struct.ucred* %366, i32* %367)
  store i32 %368, i32* %39, align 4
  br label %389

369:                                              ; preds = %333
  %370 = load i32, i32* %19, align 4
  %371 = load i32*, i32** %21, align 8
  %372 = load i32*, i32** %22, align 8
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %374 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %375 = load %struct.nfsclds*, %struct.nfsclds** %374, align 8
  %376 = load i64, i64* %29, align 8
  %377 = load i64, i64* %38, align 8
  %378 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %379 = load %struct.mbuf*, %struct.mbuf** %45, align 8
  %380 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %381 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %384 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.ucred*, %struct.ucred** %44, align 8
  %387 = load i32*, i32** %36, align 8
  %388 = call i32 @nfsrpc_writedsmir(i32 %370, i32* %371, i32* %372, %struct.TYPE_9__* %373, %struct.nfsclds* %375, i64 %376, i64 %377, %struct.nfsfh* %378, %struct.mbuf* %379, i32 %382, i32 %385, %struct.ucred* %386, i32* %387)
  store i32 %388, i32* %39, align 4
  br label %389

389:                                              ; preds = %369, %348
  %390 = load i32, i32* %39, align 4
  %391 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %390)
  %392 = load i32, i32* %39, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %389
  %395 = load i32, i32* %39, align 4
  %396 = load i32, i32* @EACCES, align 4
  %397 = icmp ne i32 %395, %396
  br i1 %397, label %398, label %411

398:                                              ; preds = %394
  %399 = load i32, i32* %39, align 4
  %400 = load i32, i32* @ESTALE, align 4
  %401 = icmp ne i32 %399, %400
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %404 = load i32, i32* @NFSV4OP_WRITE, align 4
  %405 = load i32, i32* %39, align 4
  %406 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %407 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %408 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %409 = load %struct.nfsclds*, %struct.nfsclds** %408, align 8
  %410 = call i32 @nfscl_dserr(i32 %404, i32 %405, %struct.nfscldevinfo* %406, %struct.nfscllayout* %407, %struct.nfsclds* %409)
  br label %411

411:                                              ; preds = %402, %398, %394, %389
  br label %412

412:                                              ; preds = %411, %332
  br label %413

413:                                              ; preds = %412, %296
  br label %414

414:                                              ; preds = %413, %251
  %415 = load i32, i32* %39, align 4
  %416 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %415)
  %417 = load i32, i32* %39, align 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %431

419:                                              ; preds = %414
  %420 = load i64, i64* %38, align 8
  %421 = load i64, i64* %30, align 8
  %422 = sub nsw i64 %421, %420
  store i64 %422, i64* %30, align 8
  %423 = load i64, i64* %38, align 8
  %424 = load i64, i64* %29, align 8
  %425 = add nsw i64 %424, %423
  store i64 %425, i64* %29, align 8
  %426 = load i64, i64* %38, align 8
  %427 = load i32, i32* %40, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %428, %426
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %40, align 4
  br label %431

431:                                              ; preds = %419, %414
  %432 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %26, align 8
  %433 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @NFSDI_TIGHTCOUPLED, align 4
  %436 = and i32 %434, %435
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %431
  %439 = load %struct.ucred*, %struct.ucred** %44, align 8
  %440 = call i32 @NFSFREECRED(%struct.ucred* %439)
  br label %441

441:                                              ; preds = %438, %431
  br label %53

442:                                              ; preds = %59
  %443 = load i32, i32* %39, align 4
  %444 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %443)
  %445 = load i32, i32* %39, align 4
  ret i32 %445
}

declare dso_local %struct.nfsnode* @VTONFS(i32) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.nfsclds** @nfsfldi_addr(%struct.nfscldevinfo*, i32) #1

declare dso_local %struct.ucred* @NFSNEWCRED(%struct.ucred*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfsio_commitds(i32, i64, i64, %struct.nfsclds*, %struct.nfsfh*, i32, i32, %struct.nfsclwritedsdorpc*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_commitds(i32, i64, i64, %struct.nfsclds*, %struct.nfsfh*, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @nfscl_dserr(i32, i32, %struct.nfscldevinfo*, %struct.nfscllayout*, %struct.nfsclds*) #1

declare dso_local i32 @nfsrpc_readds(i32, %struct.uio*, %struct.TYPE_9__*, i32*, %struct.nfsclds*, i64, i64, %struct.nfsfh*, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_writeds(i32, %struct.uio*, i32*, i32*, %struct.TYPE_9__*, %struct.nfsclds*, i64, i64, %struct.nfsfh*, i32, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

declare dso_local %struct.mbuf* @nfsm_copym(%struct.mbuf*, i32, i64) #1

declare dso_local i32 @nfsio_writedsmir(i32, i32*, i32*, %struct.TYPE_9__*, %struct.nfsclds*, i64, i64, %struct.nfsfh*, %struct.mbuf*, i32, i32, %struct.nfsclwritedsdorpc*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_writedsmir(i32, i32*, i32*, %struct.TYPE_9__*, %struct.nfsclds*, i64, i64, %struct.nfsfh*, %struct.mbuf*, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @NFSFREECRED(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
