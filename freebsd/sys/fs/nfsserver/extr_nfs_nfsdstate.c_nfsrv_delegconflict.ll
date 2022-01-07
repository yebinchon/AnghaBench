; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_delegconflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_delegconflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsstate = type { i32, i64, %struct.TYPE_7__*, i32, i64, %struct.nfsclient* }
%struct.TYPE_7__ = type { i32 }
%struct.nfsclient = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@NFSLCK_OLDDELEG = common dso_local global i32 0, align 4
@NFSD_MONOSEC = common dso_local global i64 0, align 8
@nfsv4rootfs_lock = common dso_local global i32 0, align 4
@NFSERR_DELAY = common dso_local global i32 0, align 4
@NFSLCK_DELEGRECALL = common dso_local global i32 0, align 4
@nfsrv_lease = common dso_local global i32 0, align 4
@NFSRV_LEASEDELTA = common dso_local global i64 0, align 8
@NFSV4OP_CBRECALL = common dso_local global i32 0, align 4
@NFSERR_BADSTATEID = common dso_local global i32 0, align 4
@NFSERR_BADHANDLE = common dso_local global i32 0, align 4
@NFSV4_CBRETRYCNT = common dso_local global i32 0, align 4
@NFSV4ROOTLOCKMUTEXPTR = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@NFSERR_PERM = common dso_local global i32 0, align 4
@NFSNST_REVOKE = common dso_local global i32 0, align 4
@lc_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsstate*, i32*, i32*, %struct.TYPE_8__*)* @nfsrv_delegconflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_delegconflict(%struct.nfsstate* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.nfsstate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.nfsclient*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfsstate* %0, %struct.nfsstate** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %18 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %17, i32 0, i32 5
  %19 = load %struct.nfsclient*, %struct.nfsclient** %18, align 8
  store %struct.nfsclient* %19, %struct.nfsclient** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %21 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFSLCK_OLDDELEG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %4
  %27 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %28 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NFSD_MONOSEC, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %34 = call i32 @nfsrv_freedeleg(%struct.nfsstate* %33)
  %35 = call i32 (...) @NFSUNLOCKSTATE()
  store i32 -1, i32* %11, align 4
  br label %237

36:                                               ; preds = %26
  %37 = call i32 (...) @NFSUNLOCKSTATE()
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  store i32 0, i32* %42, align 4
  %43 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %44 = call i32 @nfsv4_unlock(i32* @nfsv4rootfs_lock, i32 1)
  %45 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @NFSERR_DELAY, align 4
  store i32 %47, i32* %11, align 4
  br label %237

48:                                               ; preds = %4
  %49 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %50 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NFSLCK_DELEGRECALL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %124, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* @NFSD_MONOSEC, align 8
  %57 = load i32, i32* @nfsrv_lease, align 4
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load i64, i64* @NFSRV_LEASEDELTA, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %64 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* @NFSD_MONOSEC, align 8
  %66 = load i32, i32* @nfsrv_lease, align 4
  %67 = mul nsw i32 6, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %65, %68
  %70 = load i64, i64* @NFSRV_LEASEDELTA, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %73 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @NFSLCK_DELEGRECALL, align 4
  %75 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %76 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %80 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %79, i32 0, i32 3
  %81 = ptrtoint i32* %80 to i32
  %82 = ptrtoint i32* %15 to i32
  %83 = call i32 @NFSBCOPY(i32 %81, i32 %82, i32 4)
  %84 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %85 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = ptrtoint i32* %87 to i32
  %89 = ptrtoint i32* %16 to i32
  %90 = call i32 @NFSBCOPY(i32 %88, i32 %89, i32 4)
  %91 = call i32 (...) @NFSUNLOCKSTATE()
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %55
  %96 = load i32*, i32** %6, align 8
  store i32 0, i32* %96, align 4
  %97 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %98 = call i32 @nfsv4_unlock(i32* @nfsv4rootfs_lock, i32 1)
  %99 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  br label %100

100:                                              ; preds = %95, %55
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %120, %100
  %102 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %103 = load i32, i32* @NFSV4OP_CBRECALL, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @nfsrv_docallback(%struct.nfsclient* %102, i32 %103, i32* %15, i32 0, i32* %16, i32* null, i32* null, i32 0, i32* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @NFSERR_BADSTATEID, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @NFSERR_BADHANDLE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @NFSV4_CBRETRYCNT, align 4
  %119 = icmp slt i32 %117, %118
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i1 [ false, %112 ], [ %119, %116 ]
  br i1 %121, label %101, label %122

122:                                              ; preds = %120
  %123 = load i32, i32* @NFSERR_DELAY, align 4
  store i32 %123, i32* %11, align 4
  br label %237

124:                                              ; preds = %48
  %125 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %126 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NFSD_MONOSEC, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %124
  %131 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %132 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @NFSD_MONOSEC, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = call i32 (...) @NFSUNLOCKSTATE()
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32*, i32** %6, align 8
  store i32 0, i32* %142, align 4
  %143 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %144 = call i32 @nfsv4_unlock(i32* @nfsv4rootfs_lock, i32 1)
  %145 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  br label %146

146:                                              ; preds = %141, %136
  %147 = load i32, i32* @NFSERR_DELAY, align 4
  store i32 %147, i32* %11, align 4
  br label %237

148:                                              ; preds = %130, %124
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %196

152:                                              ; preds = %148
  %153 = call i32 (...) @NFSUNLOCKSTATE()
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = icmp ne %struct.TYPE_8__* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = call i32 @NFSVOPISLOCKED(%struct.TYPE_8__* %157)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = call i32 @NFSVOPUNLOCK(%struct.TYPE_8__* %159, i32 0)
  br label %161

161:                                              ; preds = %156, %152
  %162 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %163 = call i32 @nfsv4_relref(i32* @nfsv4rootfs_lock)
  br label %164

164:                                              ; preds = %167, %161
  %165 = load i32, i32* @NFSV4ROOTLOCKMUTEXPTR, align 4
  %166 = call i32 @nfsv4_lock(i32* @nfsv4rootfs_lock, i32 1, i32* null, i32 %165, i32* null)
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  br i1 %170, label %164, label %171

171:                                              ; preds = %167
  %172 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %173 = load i32*, i32** %6, align 8
  store i32 1, i32* %173, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %175 = icmp ne %struct.TYPE_8__* %174, null
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @LK_RETRY, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @NFSVOPLOCK(%struct.TYPE_8__* %177, i32 %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @VI_DOOMED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %176
  %189 = load i32*, i32** %6, align 8
  store i32 0, i32* %189, align 4
  %190 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %191 = call i32 @nfsv4_unlock(i32* @nfsv4rootfs_lock, i32 1)
  %192 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %193 = load i32, i32* @NFSERR_PERM, align 4
  store i32 %193, i32* %11, align 4
  br label %237

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %171
  store i32 -1, i32* %11, align 4
  br label %237

196:                                              ; preds = %148
  %197 = call i32 (...) @NFSUNLOCKSTATE()
  %198 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %199 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %202 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @NFSNST_REVOKE, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @nfsrv_writestable(i32 %200, i32 %203, i32 %204, i32* %205)
  %207 = call i32 (...) @nfsrv_backupstable()
  %208 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %209 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NFSD_MONOSEC, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %196
  %214 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @nfsrv_cleanclient(%struct.nfsclient* %214, i32* %215)
  %217 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %218 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %217, i32 0, i32 3
  %219 = call i32 @nfsrv_freedeleglist(i32* %218)
  %220 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %221 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %220, i32 0, i32 2
  %222 = call i32 @nfsrv_freedeleglist(i32* %221)
  %223 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %224 = load i32, i32* @lc_hash, align 4
  %225 = call i32 @LIST_REMOVE(%struct.nfsclient* %223, i32 %224)
  store i32 1, i32* %14, align 4
  br label %229

226:                                              ; preds = %196
  %227 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %228 = call i32 @nfsrv_freedeleg(%struct.nfsstate* %227)
  store i32 0, i32* %14, align 4
  br label %229

229:                                              ; preds = %226, %213
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @nfsrv_zapclient(%struct.nfsclient* %233, i32* %234)
  br label %236

236:                                              ; preds = %232, %229
  store i32 -1, i32* %11, align 4
  br label %237

237:                                              ; preds = %236, %195, %188, %146, %122, %46, %32
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @NFSEXITCODE(i32 %238)
  %240 = load i32, i32* %11, align 4
  ret i32 %240
}

declare dso_local i32 @nfsrv_freedeleg(%struct.nfsstate*) #1

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

declare dso_local i32 @NFSLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @nfsv4_unlock(i32*, i32) #1

declare dso_local i32 @NFSUNLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @NFSBCOPY(i32, i32, i32) #1

declare dso_local i32 @nfsrv_docallback(%struct.nfsclient*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @NFSVOPISLOCKED(%struct.TYPE_8__*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nfsv4_relref(i32*) #1

declare dso_local i32 @nfsv4_lock(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NFSVOPLOCK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nfsrv_writestable(i32, i32, i32, i32*) #1

declare dso_local i32 @nfsrv_backupstable(...) #1

declare dso_local i32 @nfsrv_cleanclient(%struct.nfsclient*, i32*) #1

declare dso_local i32 @nfsrv_freedeleglist(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsclient*, i32) #1

declare dso_local i32 @nfsrv_zapclient(%struct.nfsclient*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
