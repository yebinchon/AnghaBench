; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.mbuf = type { %struct.mbuf*, i64 }
%struct.iovec = type { i32, i64 }
%struct.uio = type { i32, i32, i32, i32*, i32, i32, %struct.iovec* }
%struct.nfsheur = type { i32, i32 }

@NFSPROC_READDS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nfsvno_read iov\00", align 1
@caddr_t = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_SEQSHIFT = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NFSV4OP_READ = common dso_local global i64 0, align 8
@IO_NODELOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_read(%struct.vnode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4, %struct.mbuf** %5, %struct.mbuf** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.mbuf**, align 8
  %15 = alloca %struct.mbuf**, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.iovec*, align 8
  %19 = alloca %struct.iovec*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.mbuf*, align 8
  %27 = alloca %struct.mbuf*, align 8
  %28 = alloca %struct.uio, align 8
  %29 = alloca %struct.uio*, align 8
  %30 = alloca %struct.nfsheur*, align 8
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ucred* %3, %struct.ucred** %12, align 8
  store %struct.thread* %4, %struct.thread** %13, align 8
  store %struct.mbuf** %5, %struct.mbuf*** %14, align 8
  store %struct.mbuf** %6, %struct.mbuf*** %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %25, align 4
  store %struct.mbuf* null, %struct.mbuf** %26, align 8
  store %struct.uio* %28, %struct.uio** %29, align 8
  %31 = load %struct.vnode*, %struct.vnode** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ucred*, %struct.ucred** %12, align 8
  %35 = load %struct.thread*, %struct.thread** %13, align 8
  %36 = load i32, i32* @NFSPROC_READDS, align 4
  %37 = load %struct.mbuf**, %struct.mbuf*** %14, align 8
  %38 = load %struct.mbuf**, %struct.mbuf*** %15, align 8
  %39 = call i32 @nfsrv_proxyds(%struct.vnode* %31, i32 %32, i32 %33, %struct.ucred* %34, %struct.thread* %35, i32 %36, %struct.mbuf** %37, i32* null, %struct.mbuf** %38, i32* null, i32* null)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %7
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %8, align 4
  br label %242

45:                                               ; preds = %7
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @NFSM_RNDUP(i32 %46)
  store i32 %47, i32* %22, align 4
  store i32 %47, i32* %21, align 4
  store %struct.mbuf* null, %struct.mbuf** %27, align 8
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %76, %45
  %49 = load i32, i32* %22, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %53 = call i32 @NFSMGET(%struct.mbuf* %52)
  %54 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %55 = load i32, i32* @M_WAITOK, align 4
  %56 = call i32 @MCLGET(%struct.mbuf* %54, i32 %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %60 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %59)
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %22, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %69 = icmp ne %struct.mbuf* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  store %struct.mbuf* %71, %struct.mbuf** %73, align 8
  br label %76

74:                                               ; preds = %51
  %75 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %75, %struct.mbuf** %27, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %77, %struct.mbuf** %26, align 8
  br label %48

78:                                               ; preds = %48
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 16
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @M_TEMP, align 4
  %84 = load i32, i32* @M_WAITOK, align 4
  %85 = call %struct.iovec* @malloc(i32 %82, i32 %83, i32 %84)
  store %struct.iovec* %85, %struct.iovec** %18, align 8
  %86 = load %struct.iovec*, %struct.iovec** %18, align 8
  store %struct.iovec* %86, %struct.iovec** %19, align 8
  %87 = load %struct.uio*, %struct.uio** %29, align 8
  %88 = getelementptr inbounds %struct.uio, %struct.uio* %87, i32 0, i32 6
  store %struct.iovec* %86, %struct.iovec** %88, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  store %struct.mbuf* %89, %struct.mbuf** %16, align 8
  %90 = load i32, i32* %21, align 4
  store i32 %90, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %132, %78
  %92 = load i32, i32* %22, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %136

94:                                               ; preds = %91
  %95 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %96 = icmp eq %struct.mbuf* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  %100 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %101 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %100)
  %102 = load i32, i32* %22, align 4
  %103 = call i32 @min(i32 %101, i32 %102)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %99
  %107 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %108 = load i32, i32* @caddr_t, align 4
  %109 = call i64 @mtod(%struct.mbuf* %107, i32 %108)
  %110 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %111 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.iovec*, %struct.iovec** %18, align 8
  %115 = getelementptr inbounds %struct.iovec, %struct.iovec* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %23, align 4
  %117 = load %struct.iovec*, %struct.iovec** %18, align 8
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %22, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %22, align 4
  %128 = load %struct.iovec*, %struct.iovec** %18, align 8
  %129 = getelementptr inbounds %struct.iovec, %struct.iovec* %128, i32 1
  store %struct.iovec* %129, %struct.iovec** %18, align 8
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %106, %99
  %133 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 0
  %135 = load %struct.mbuf*, %struct.mbuf** %134, align 8
  store %struct.mbuf* %135, %struct.mbuf** %16, align 8
  br label %91

136:                                              ; preds = %91
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.uio*, %struct.uio** %29, align 8
  %139 = getelementptr inbounds %struct.uio, %struct.uio* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.uio*, %struct.uio** %29, align 8
  %142 = getelementptr inbounds %struct.uio, %struct.uio* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %21, align 4
  %144 = load %struct.uio*, %struct.uio** %29, align 8
  %145 = getelementptr inbounds %struct.uio, %struct.uio* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @UIO_READ, align 4
  %147 = load %struct.uio*, %struct.uio** %29, align 8
  %148 = getelementptr inbounds %struct.uio, %struct.uio* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @UIO_SYSSPACE, align 4
  %150 = load %struct.uio*, %struct.uio** %29, align 8
  %151 = getelementptr inbounds %struct.uio, %struct.uio* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load %struct.uio*, %struct.uio** %29, align 8
  %153 = getelementptr inbounds %struct.uio, %struct.uio* %152, i32 0, i32 3
  store i32* null, i32** %153, align 8
  %154 = load %struct.uio*, %struct.uio** %29, align 8
  %155 = load %struct.vnode*, %struct.vnode** %9, align 8
  %156 = call %struct.nfsheur* @nfsrv_sequential_heuristic(%struct.uio* %154, %struct.vnode* %155)
  store %struct.nfsheur* %156, %struct.nfsheur** %30, align 8
  %157 = load %struct.nfsheur*, %struct.nfsheur** %30, align 8
  %158 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IO_SEQSHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = load i32, i32* %25, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %25, align 4
  %164 = load %struct.uio*, %struct.uio** %29, align 8
  %165 = getelementptr inbounds %struct.uio, %struct.uio* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 8
  %168 = load i64, i64* @NFSV4OP_READ, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load %struct.vnode*, %struct.vnode** %9, align 8
  %173 = load %struct.uio*, %struct.uio** %29, align 8
  %174 = load i32, i32* @IO_NODELOCKED, align 4
  %175 = load i32, i32* %25, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.ucred*, %struct.ucred** %12, align 8
  %178 = call i32 @VOP_READ(%struct.vnode* %172, %struct.uio* %173, i32 %176, %struct.ucred* %177)
  store i32 %178, i32* %20, align 4
  %179 = load %struct.iovec*, %struct.iovec** %19, align 8
  %180 = load i32, i32* @M_TEMP, align 4
  %181 = call i32 @free(%struct.iovec* %179, i32 %180)
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %136
  %185 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %186 = call i32 @m_freem(%struct.mbuf* %185)
  %187 = load %struct.mbuf**, %struct.mbuf*** %14, align 8
  store %struct.mbuf* null, %struct.mbuf** %187, align 8
  br label %238

188:                                              ; preds = %136
  %189 = load %struct.uio*, %struct.uio** %29, align 8
  %190 = getelementptr inbounds %struct.uio, %struct.uio* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.nfsheur*, %struct.nfsheur** %30, align 8
  %193 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load %struct.uio*, %struct.uio** %29, align 8
  %196 = getelementptr inbounds %struct.uio, %struct.uio* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %194, %197
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %24, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %188
  %203 = load i32, i32* %11, align 4
  br label %206

204:                                              ; preds = %188
  %205 = load i32, i32* %24, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @NFSM_RNDUP(i32 %208)
  store i32 %209, i32* %24, align 4
  %210 = load i32, i32* %24, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %214 = call i32 @m_freem(%struct.mbuf* %213)
  store %struct.mbuf* null, %struct.mbuf** %27, align 8
  br label %233

215:                                              ; preds = %206
  %216 = load i32, i32* %21, align 4
  %217 = load i32, i32* %24, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %24, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %219, %215
  %224 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %24, align 4
  %227 = sub nsw i32 %225, %226
  %228 = load i32, i32* %24, align 4
  %229 = load i32, i32* %11, align 4
  %230 = sub nsw i32 %228, %229
  %231 = call i32 @nfsrv_adj(%struct.mbuf* %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %223, %219
  br label %233

233:                                              ; preds = %232, %212
  %234 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %235 = load %struct.mbuf**, %struct.mbuf*** %14, align 8
  store %struct.mbuf* %234, %struct.mbuf** %235, align 8
  %236 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %237 = load %struct.mbuf**, %struct.mbuf*** %15, align 8
  store %struct.mbuf* %236, %struct.mbuf** %237, align 8
  br label %238

238:                                              ; preds = %233, %184
  %239 = load i32, i32* %20, align 4
  %240 = call i32 @NFSEXITCODE(i32 %239)
  %241 = load i32, i32* %20, align 4
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %238, %43
  %243 = load i32, i32* %8, align 4
  ret i32 %243
}

declare dso_local i32 @nfsrv_proxyds(%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*, i32, %struct.mbuf**, i32*, %struct.mbuf**, i32*, i32*) #1

declare dso_local i32 @NFSM_RNDUP(i32) #1

declare dso_local i32 @NFSMGET(%struct.mbuf*) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local %struct.iovec* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.nfsheur* @nfsrv_sequential_heuristic(%struct.uio*, %struct.vnode*) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @free(%struct.iovec*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @nfsrv_adj(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
