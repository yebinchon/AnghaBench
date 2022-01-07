; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfsremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfsremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsrvdsremove = type { i64, i64, i32, i32, i32, %struct.vnode*, i32*, %struct.ucred* }
%struct.nfsdevice = type { i32 }
%struct.nfsmount = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PNFS_FILENAME_LEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@nfs_pnfsiothreads = common dso_local global i64 0, align 8
@start_dsremove = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"nfsrv_pnfsremove: nfs_pnfsio=%d\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"srvdsrm\00", align 1
@NFSMNTP_FORCEDISM = common dso_local global i32 0, align 4
@NFSMNTP_CANCELRPCS = common dso_local global i32 0, align 4
@PNFSDOP_DELDSSERVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"dsremovefail fail=%d ds=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode**, i32, i8*, i32*, i32*)* @nfsrv_pnfsremove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_pnfsremove(%struct.vnode** %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.nfsrvdsremove*, align 8
  %13 = alloca %struct.nfsrvdsremove*, align 8
  %14 = alloca %struct.nfsdevice*, align 8
  %15 = alloca %struct.nfsmount*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vnode** %0, %struct.vnode*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = call %struct.ucred* (...) @newnfs_getcred()
  store %struct.ucred* %20, %struct.ucred** %11, align 8
  store %struct.nfsrvdsremove* null, %struct.nfsrvdsremove** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 56, %25
  %27 = sub i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.nfsrvdsremove* @malloc(i32 %28, i32 %29, i32 %30)
  store %struct.nfsrvdsremove* %31, %struct.nfsrvdsremove** %12, align 8
  br label %32

32:                                               ; preds = %23, %5
  store i32 -1, i32* %16, align 4
  %33 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %12, align 8
  store %struct.nfsrvdsremove* %33, %struct.nfsrvdsremove** %13, align 8
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %98, %32
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %34
  %40 = load %struct.ucred*, %struct.ucred** %11, align 8
  %41 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %42 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %41, i32 0, i32 7
  store %struct.ucred* %40, %struct.ucred** %42, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %45 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vnode*, %struct.vnode** %46, i64 %48
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  %51 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %52 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %51, i32 0, i32 5
  store %struct.vnode* %50, %struct.vnode** %52, align 8
  %53 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %54 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* @PNFS_FILENAME_LEN, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @strlcpy(i32 %55, i8* %56, i64 %58)
  %60 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %61 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %63 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %65 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %18, align 4
  %67 = load i64, i64* @nfs_pnfsiothreads, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %39
  %70 = load i32, i32* @start_dsremove, align 4
  %71 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %72 = call i32 @nfs_pnfsio(i32 %70, %struct.nfsrvdsremove* %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 (i32, i8*, i32, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %39
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.vnode*, %struct.vnode** %79, i64 %81
  %83 = load %struct.vnode*, %struct.vnode** %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.ucred*, %struct.ucred** %11, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @nfsrv_dsremove(%struct.vnode* %83, i8* %84, %struct.ucred* %85, i32* %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %96

90:                                               ; preds = %78
  %91 = load i32, i32* %18, align 4
  %92 = call i64 @nfsds_failerr(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %94, %90, %78
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  %101 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %102 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %101, i32 1
  store %struct.nfsrvdsremove* %102, %struct.nfsrvdsremove** %13, align 8
  br label %34

103:                                              ; preds = %34
  %104 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.vnode*, %struct.vnode** %104, i64 %107
  %109 = load %struct.vnode*, %struct.vnode** %108, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.ucred*, %struct.ucred** %11, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @nfsrv_dsremove(%struct.vnode* %109, i8* %110, %struct.ucred* %111, i32* %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %126

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %18, align 4
  %121 = call i64 @nfsds_failerr(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %123, %119, %116, %103
  %127 = load i32, i32* @hz, align 4
  %128 = sdiv i32 %127, 50
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 1, i32* %19, align 4
  br label %132

132:                                              ; preds = %131, %126
  %133 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %12, align 8
  store %struct.nfsrvdsremove* %133, %struct.nfsrvdsremove** %13, align 8
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %170, %132
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %136, 1
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %175

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %152, %139
  %141 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %142 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %147 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br label %150

150:                                              ; preds = %145, %140
  %151 = phi i1 [ false, %140 ], [ %149, %145 ]
  br i1 %151, label %152, label %158

152:                                              ; preds = %150
  %153 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %154 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %153, i32 0, i32 3
  %155 = load i32, i32* @PVFS, align 4
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @tsleep(i32* %154, i32 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  br label %140

158:                                              ; preds = %150
  %159 = load i32, i32* %16, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %163 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @nfsds_failerr(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %17, align 4
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %167, %161, %158
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  %173 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %13, align 8
  %174 = getelementptr inbounds %struct.nfsrvdsremove, %struct.nfsrvdsremove* %173, i32 1
  store %struct.nfsrvdsremove* %174, %struct.nfsrvdsremove** %13, align 8
  br label %134

175:                                              ; preds = %134
  %176 = load i32, i32* %16, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %231

178:                                              ; preds = %175
  %179 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.vnode*, %struct.vnode** %179, i64 %181
  %183 = load %struct.vnode*, %struct.vnode** %182, align 8
  %184 = getelementptr inbounds %struct.vnode, %struct.vnode* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call %struct.nfsmount* @VFSTONFS(i32 %185)
  store %struct.nfsmount* %186, %struct.nfsmount** %15, align 8
  %187 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %188 = call i32 @NFSLOCKMNT(%struct.nfsmount* %187)
  %189 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %190 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @NFSMNTP_FORCEDISM, align 4
  %193 = load i32, i32* @NFSMNTP_CANCELRPCS, align 4
  %194 = or i32 %192, %193
  %195 = and i32 %191, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %228

197:                                              ; preds = %178
  %198 = load i32, i32* @NFSMNTP_CANCELRPCS, align 4
  %199 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %200 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %204 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %203)
  %205 = load i32, i32* @PNFSDOP_DELDSSERVER, align 4
  %206 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %207 = load i32*, i32** %10, align 8
  %208 = call %struct.nfsdevice* @nfsrv_deldsnmp(i32 %205, %struct.nfsmount* %206, i32* %207)
  store %struct.nfsdevice* %208, %struct.nfsdevice** %14, align 8
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.nfsdevice*, %struct.nfsdevice** %14, align 8
  %211 = call i32 (i32, i8*, i32, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %209, %struct.nfsdevice* %210)
  %212 = load %struct.nfsdevice*, %struct.nfsdevice** %14, align 8
  %213 = icmp ne %struct.nfsdevice* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %197
  %215 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %216 = call i32 @nfsrv_killrpcs(%struct.nfsmount* %215)
  br label %217

217:                                              ; preds = %214, %197
  %218 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %219 = call i32 @NFSLOCKMNT(%struct.nfsmount* %218)
  %220 = load i32, i32* @NFSMNTP_CANCELRPCS, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %223 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %227 = call i32 @wakeup(%struct.nfsmount* %226)
  br label %228

228:                                              ; preds = %217, %178
  %229 = load %struct.nfsmount*, %struct.nfsmount** %15, align 8
  %230 = call i32 @NFSUNLOCKMNT(%struct.nfsmount* %229)
  br label %231

231:                                              ; preds = %228, %175
  %232 = load i32*, i32** %9, align 8
  %233 = call i32 @nfsrv_freefilelayouts(i32* %232)
  %234 = load %struct.ucred*, %struct.ucred** %11, align 8
  %235 = call i32 @NFSFREECRED(%struct.ucred* %234)
  %236 = load %struct.nfsrvdsremove*, %struct.nfsrvdsremove** %12, align 8
  %237 = load i32, i32* @M_TEMP, align 4
  %238 = call i32 @free(%struct.nfsrvdsremove* %236, i32 %237)
  ret void
}

declare dso_local %struct.ucred* @newnfs_getcred(...) #1

declare dso_local %struct.nfsrvdsremove* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @nfs_pnfsio(i32, %struct.nfsrvdsremove*) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @nfsrv_dsremove(%struct.vnode*, i8*, %struct.ucred*, i32*) #1

declare dso_local i64 @nfsds_failerr(i32) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @NFSLOCKMNT(%struct.nfsmount*) #1

declare dso_local i32 @NFSUNLOCKMNT(%struct.nfsmount*) #1

declare dso_local %struct.nfsdevice* @nfsrv_deldsnmp(i32, %struct.nfsmount*, i32*) #1

declare dso_local i32 @nfsrv_killrpcs(%struct.nfsmount*) #1

declare dso_local i32 @wakeup(%struct.nfsmount*) #1

declare dso_local i32 @nfsrv_freefilelayouts(i32*) #1

declare dso_local i32 @NFSFREECRED(%struct.ucred*) #1

declare dso_local i32 @free(%struct.nfsrvdsremove*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
