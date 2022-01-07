; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfs_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfs_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.nfsrvcache = type { i32 }
%struct.mbuf = type { i32 }

@RC_DOIT = common dso_local global i32 0, align 4
@NFSV4_SMALLSTR = common dso_local global i32 0, align 4
@ND_STREAMSOCK = common dso_local global i32 0, align 4
@ND_NFSV2 = common dso_local global i32 0, align 4
@RC_DROPIT = common dso_local global i32 0, align 4
@ND_NFSV4 = common dso_local global i32 0, align 4
@ND_SAMETCPCONN = common dso_local global i32 0, align 4
@NFSD_MONOSEC = common dso_local global i32 0, align 4
@ND_NFSV41 = common dso_local global i32 0, align 4
@NFSERR_REPLYFROMCACHE = common dso_local global i64 0, align 8
@ND_SAVEREPLY = common dso_local global i32 0, align 4
@M_COPYALL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ND_HASSEQUENCE = common dso_local global i32 0, align 4
@RC_REPLY = common dso_local global i32 0, align 4
@NFSERR_DONTREPLY = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsrv_descript*, i32, %struct.TYPE_4__*, %struct.nfsrvcache**)* @nfs_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc(%struct.nfsrv_descript* %0, i32 %1, %struct.TYPE_4__* %2, %struct.nfsrvcache** %3) #0 {
  %5 = alloca %struct.nfsrv_descript*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.nfsrvcache**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store %struct.nfsrvcache** %3, %struct.nfsrvcache*** %8, align 8
  %18 = load i32, i32* @RC_DOIT, align 4
  store i32 %18, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  %19 = load i32, i32* @NFSV4_SMALLSTR, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.nfsrvcache**, %struct.nfsrvcache*** %8, align 8
  store %struct.nfsrvcache* null, %struct.nfsrvcache** %24, align 8
  %25 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %26 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %25, i32 0, i32 9
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load i32, i32* @ND_STREAMSOCK, align 4
  %31 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %32 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  store i32 0, i32* %10, align 4
  br label %36

35:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %38 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ND_NFSV2, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %45 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call i64 (...) @nfsrv_mallocmget_limit()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @RC_DROPIT, align 4
  store i32 %52, i32* %9, align 4
  br label %110

53:                                               ; preds = %48, %43, %36
  %54 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %55 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ND_NFSV4, align 4
  %58 = load i32, i32* @ND_STREAMSOCK, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = load i32, i32* @ND_STREAMSOCK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @ND_SAMETCPCONN, align 4
  %65 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %66 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %72 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @NFSD_MONOSEC, align 4
  %74 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %75 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %80 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %82 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ND_NFSV4, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %89 = call i32 @nfsd_getminorvers(%struct.nfsrv_descript* %88, i32* %23, i32** %15, i32* %11, i32* %16)
  br label %90

90:                                               ; preds = %87, %69
  %91 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %92 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ND_NFSV41, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @RC_DOIT, align 4
  store i32 %98, i32* %9, align 4
  br label %109

99:                                               ; preds = %90
  %100 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %101 = call i32 @nfsrvd_getcache(%struct.nfsrv_descript* %100)
  store i32 %101, i32* %9, align 4
  store i64 0, i64* %17, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = call i32 @SVC_ACK(%struct.TYPE_4__* %102, i64* %17)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %17, align 8
  %108 = call i32 @nfsrc_trimcache(i32 %106, i64 %107, i32 0)
  br label %109

109:                                              ; preds = %99, %97
  br label %110

110:                                              ; preds = %109, %51
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RC_DOIT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %203

114:                                              ; preds = %110
  %115 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %116 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ND_NFSV41, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %124 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %123, i32 0, i32 5
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %124, align 8
  br label %125

125:                                              ; preds = %121, %114
  %126 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @nfsrvd_dorpc(%struct.nfsrv_descript* %126, i32 %127, i32* %128, i32 %129, i32 %130)
  %132 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %133 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ND_NFSV41, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %188

138:                                              ; preds = %125
  %139 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %140 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NFSERR_REPLYFROMCACHE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %138
  %145 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %146 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ND_SAVEREPLY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %153 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @M_COPYALL, align 4
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = call %struct.mbuf* @m_copym(i32 %154, i32 0, i32 %155, i32 %156)
  store %struct.mbuf* %157, %struct.mbuf** %12, align 8
  br label %159

158:                                              ; preds = %144, %138
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  br label %159

159:                                              ; preds = %158, %151
  %160 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %161 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ND_HASSEQUENCE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %168 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %171 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %174 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @nfsrv_cache_session(i32 %169, i32 %172, i64 %175, %struct.mbuf** %12)
  br label %177

177:                                              ; preds = %166, %159
  %178 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %179 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NFSERR_REPLYFROMCACHE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %185 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %183, %177
  %187 = load i32, i32* @RC_REPLY, align 4
  store i32 %187, i32* %9, align 4
  br label %202

188:                                              ; preds = %125
  %189 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %190 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NFSERR_DONTREPLY, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @RC_DROPIT, align 4
  store i32 %195, i32* %9, align 4
  br label %198

196:                                              ; preds = %188
  %197 = load i32, i32* @RC_REPLY, align 4
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %200 = call %struct.nfsrvcache* @nfsrvd_updatecache(%struct.nfsrv_descript* %199)
  %201 = load %struct.nfsrvcache**, %struct.nfsrvcache*** %8, align 8
  store %struct.nfsrvcache* %200, %struct.nfsrvcache** %201, align 8
  br label %202

202:                                              ; preds = %198, %186
  br label %203

203:                                              ; preds = %202, %110
  %204 = load i32*, i32** %15, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @NFSV4_SMALLSTR, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* @M_TEMP, align 4
  %213 = call i32 @free(i32* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %206, %203
  %215 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %5, align 8
  %216 = call i32 @NFSEXITCODE2(i32 0, %struct.nfsrv_descript* %215)
  %217 = load i32, i32* %9, align 4
  %218 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %218)
  ret i32 %217
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nfsrv_mallocmget_limit(...) #2

declare dso_local i32 @nfsd_getminorvers(%struct.nfsrv_descript*, i32*, i32**, i32*, i32*) #2

declare dso_local i32 @nfsrvd_getcache(%struct.nfsrv_descript*) #2

declare dso_local i32 @SVC_ACK(%struct.TYPE_4__*, i64*) #2

declare dso_local i32 @nfsrc_trimcache(i32, i64, i32) #2

declare dso_local i32 @nfsrvd_dorpc(%struct.nfsrv_descript*, i32, i32*, i32, i32) #2

declare dso_local %struct.mbuf* @m_copym(i32, i32, i32, i32) #2

declare dso_local i32 @nfsrv_cache_session(i32, i32, i64, %struct.mbuf**) #2

declare dso_local %struct.nfsrvcache* @nfsrvd_updatecache(%struct.nfsrv_descript*) #2

declare dso_local i32 @free(i32*, i32) #2

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
