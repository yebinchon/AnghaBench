; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnfsiod.c_nfssvc_iod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnfsiod.c_nfssvc_iod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64, i32, i64, i64 }
%struct.buf = type { i32, i64, i32, i32, i32 }

@nfs_asyncdaemon = common dso_local global i32* null, align 8
@ncl_iodmount = common dso_local global %struct.nfsmount** null, align 8
@ncl_iodmax = common dso_local global i32 0, align 4
@ncl_iodwant = common dso_local global i64* null, align 8
@NFSIOD_NOT_AVAILABLE = common dso_local global i64 0, align 8
@NFSIOD_AVAILABLE = common dso_local global i64 0, align 8
@nfs_iodmin = common dso_local global i32 0, align 4
@nfs_iodmaxidle = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ncl_iod_mutex = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@b_freelist = common dso_local global i32 0, align 4
@ncl_numasync = common dso_local global i64 0, align 8
@B_DIRECT = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"nfscvs_iod: BIO_WRITE not set\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@nfs_defect = common dso_local global i64 0, align 8
@ASYNCIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"nfssvc_iod: iod %d defecting from mount %p\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfssvc_iod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfssvc_iod(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @NFSLOCKIOD()
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32*, i32** @nfs_asyncdaemon, align 8
  %12 = ptrtoint i32* %10 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %214, %1
  br label %18

18:                                               ; preds = %101, %17
  %19 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %19, i64 %21
  %23 = load %struct.nfsmount*, %struct.nfsmount** %22, align 8
  store %struct.nfsmount* %23, %struct.nfsmount** %4, align 8
  %24 = icmp eq %struct.nfsmount* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %27 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %26, i32 0, i32 0
  %28 = call %struct.buf* @TAILQ_FIRST(i64* %27)
  %29 = icmp ne %struct.buf* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i1 [ true, %18 ], [ %30, %25 ]
  br i1 %32, label %33, label %102

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ncl_iodmax, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %216

38:                                               ; preds = %33
  %39 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %40 = icmp ne %struct.nfsmount* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %43 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i64*, i64** @ncl_iodwant, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NFSIOD_NOT_AVAILABLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i64, i64* @NFSIOD_AVAILABLE, align 8
  %56 = load i64*, i64** @ncl_iodwant, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %61, i64 %63
  store %struct.nfsmount* null, %struct.nfsmount** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @nfs_iodmin, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @nfs_iodmaxidle, align 4
  %71 = load i32, i32* @hz, align 4
  %72 = mul nsw i32 %70, %71
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i32 [ 0, %68 ], [ %72, %69 ]
  store i32 %74, i32* %6, align 4
  %75 = load i64*, i64** @ncl_iodwant, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i32, i32* @PWAIT, align 4
  %80 = load i32, i32* @PCATCH, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @msleep(i64* %78, i32* @ncl_iod_mutex, i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %73
  %87 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %87, i64 %89
  %91 = load %struct.nfsmount*, %struct.nfsmount** %90, align 8
  store %struct.nfsmount* %91, %struct.nfsmount** %4, align 8
  %92 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %93 = icmp ne %struct.nfsmount* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %96 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %95, i32 0, i32 0
  %97 = call %struct.buf* @TAILQ_FIRST(i64* %96)
  %98 = icmp ne %struct.buf* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %94, %86
  br label %102

101:                                              ; preds = %73
  br label %18

102:                                              ; preds = %100, %31
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %215

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %213, %106
  %108 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %109 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %108, i32 0, i32 0
  %110 = call %struct.buf* @TAILQ_FIRST(i64* %109)
  store %struct.buf* %110, %struct.buf** %3, align 8
  %111 = icmp ne %struct.buf* %110, null
  br i1 %111, label %112, label %214

112:                                              ; preds = %107
  %113 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %114 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %113, i32 0, i32 0
  %115 = load %struct.buf*, %struct.buf** %3, align 8
  %116 = load i32, i32* @b_freelist, align 4
  %117 = call i32 @TAILQ_REMOVE(i64* %114, %struct.buf* %115, i32 %116)
  %118 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %119 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %112
  %127 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %128 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ncl_numasync, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %134 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %136 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %135, i32 0, i32 0
  %137 = call i32 @wakeup(i64* %136)
  br label %138

138:                                              ; preds = %132, %126, %112
  %139 = call i32 (...) @NFSUNLOCKIOD()
  %140 = load %struct.buf*, %struct.buf** %3, align 8
  %141 = getelementptr inbounds %struct.buf, %struct.buf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @B_DIRECT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %138
  %147 = load %struct.buf*, %struct.buf** %3, align 8
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BIO_WRITE, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @KASSERT(i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.buf*, %struct.buf** %3, align 8
  %155 = call i32 @ncl_doio_directwrite(%struct.buf* %154)
  br label %181

156:                                              ; preds = %138
  %157 = load %struct.buf*, %struct.buf** %3, align 8
  %158 = getelementptr inbounds %struct.buf, %struct.buf* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @BIO_READ, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load %struct.buf*, %struct.buf** %3, align 8
  %164 = getelementptr inbounds %struct.buf, %struct.buf* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.buf*, %struct.buf** %3, align 8
  %167 = load %struct.buf*, %struct.buf** %3, align 8
  %168 = getelementptr inbounds %struct.buf, %struct.buf* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ncl_doio(i32 %165, %struct.buf* %166, i32 %169, i32* null, i32 0)
  br label %180

171:                                              ; preds = %156
  %172 = load %struct.buf*, %struct.buf** %3, align 8
  %173 = getelementptr inbounds %struct.buf, %struct.buf* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.buf*, %struct.buf** %3, align 8
  %176 = load %struct.buf*, %struct.buf** %3, align 8
  %177 = getelementptr inbounds %struct.buf, %struct.buf* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ncl_doio(i32 %174, %struct.buf* %175, i32 %178, i32* null, i32 0)
  br label %180

180:                                              ; preds = %171, %162
  br label %181

181:                                              ; preds = %180, %146
  %182 = call i32 (...) @NFSLOCKIOD()
  %183 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %183, i64 %185
  %187 = load %struct.nfsmount*, %struct.nfsmount** %186, align 8
  store %struct.nfsmount* %187, %struct.nfsmount** %4, align 8
  %188 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %189 = icmp eq %struct.nfsmount* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %214

191:                                              ; preds = %181
  %192 = load i64, i64* @nfs_defect, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %213

194:                                              ; preds = %191
  %195 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %196 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %213

199:                                              ; preds = %194
  %200 = load i32, i32* @ASYNCIO, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %203 = bitcast %struct.nfsmount* %202 to i8*
  %204 = call i32 @NFS_DPF(i32 %200, i8* %203)
  %205 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %205, i64 %207
  store %struct.nfsmount* null, %struct.nfsmount** %208, align 8
  %209 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %210 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %210, align 8
  br label %214

213:                                              ; preds = %194, %191
  br label %107

214:                                              ; preds = %199, %190, %107
  br label %17

215:                                              ; preds = %105
  br label %216

216:                                              ; preds = %215, %37
  %217 = load i32*, i32** @nfs_asyncdaemon, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 0, i32* %220, align 4
  %221 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %222 = icmp ne %struct.nfsmount* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %216
  %224 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %225 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %223, %216
  %229 = load i64, i64* @NFSIOD_NOT_AVAILABLE, align 8
  %230 = load i64*, i64** @ncl_iodwant, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  store i64 %229, i64* %233, align 8
  %234 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %234, i64 %236
  store %struct.nfsmount* null, %struct.nfsmount** %237, align 8
  %238 = load i64, i64* @ncl_numasync, align 8
  %239 = add nsw i64 %238, -1
  store i64 %239, i64* @ncl_numasync, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %228
  %242 = call i32 @wakeup(i64* @ncl_numasync)
  br label %243

243:                                              ; preds = %241, %228
  %244 = call i32 (...) @NFSUNLOCKIOD()
  %245 = load i32, i32* %7, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* @EWOULDBLOCK, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247, %243
  %252 = call i32 @kproc_exit(i32 0)
  br label %253

253:                                              ; preds = %251, %247
  %254 = call i32 @kproc_exit(i32 1)
  ret void
}

declare dso_local i32 @NFSLOCKIOD(...) #1

declare dso_local %struct.buf* @TAILQ_FIRST(i64*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i64*, %struct.buf*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @NFSUNLOCKIOD(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ncl_doio_directwrite(%struct.buf*) #1

declare dso_local i32 @ncl_doio(i32, %struct.buf*, i32, i32*, i32) #1

declare dso_local i32 @NFS_DPF(i32, i8*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
