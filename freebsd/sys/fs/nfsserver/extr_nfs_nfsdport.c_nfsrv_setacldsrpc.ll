; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setacldsrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setacldsrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsmount = type { i32 }
%struct.acl = type { i32 }
%struct.nfsrvsetacldsdorpc = type { i64, i64, i32, i32, %struct.acl*, i32*, %struct.ucred*, %struct.vnode*, %struct.nfsmount*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"in nfsrv_setacldsrpc\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@nfs_pnfsiothreads = common dso_local global i64 0, align 8
@start_setacldsdorpc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"nfsrv_setacldsrpc: nfs_pnfsio=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"nfsrv_setacldsrpc: aft setextat=%d\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"srvacds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ucred*, i32*, %struct.vnode*, %struct.nfsmount**, i32, %struct.acl*, i32*)* @nfsrv_setacldsrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_setacldsrpc(i32* %0, %struct.ucred* %1, i32* %2, %struct.vnode* %3, %struct.nfsmount** %4, i32 %5, %struct.acl* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.nfsmount**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.acl*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.nfsrvsetacldsdorpc*, align 8
  %18 = alloca %struct.nfsrvsetacldsdorpc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.ucred* %1, %struct.ucred** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.nfsmount** %4, %struct.nfsmount*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.acl* %6, %struct.acl** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.nfsrvsetacldsdorpc* null, %struct.nfsrvsetacldsdorpc** %17, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %8
  %27 = load i32, i32* %14, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 72, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @M_TEMP, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call %struct.nfsrvsetacldsdorpc* @malloc(i32 %31, i32 %32, i32 %33)
  store %struct.nfsrvsetacldsdorpc* %34, %struct.nfsrvsetacldsdorpc** %17, align 8
  store %struct.nfsrvsetacldsdorpc* %34, %struct.nfsrvsetacldsdorpc** %18, align 8
  br label %35

35:                                               ; preds = %26, %8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %114, %35
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %36
  %42 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %43 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %45 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %48 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %47, i32 0, i32 9
  %49 = call i32 @NFSBCOPY(i32* %46, i32* %48, i32 4)
  %50 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %51 = load %struct.nfsmount*, %struct.nfsmount** %50, align 8
  %52 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %53 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %52, i32 0, i32 8
  store %struct.nfsmount* %51, %struct.nfsmount** %53, align 8
  %54 = load %struct.vnode*, %struct.vnode** %12, align 8
  %55 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %56 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %55, i32 0, i32 7
  store %struct.vnode* %54, %struct.vnode** %56, align 8
  %57 = load %struct.ucred*, %struct.ucred** %10, align 8
  %58 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %59 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %58, i32 0, i32 6
  store %struct.ucred* %57, %struct.ucred** %59, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %62 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load %struct.acl*, %struct.acl** %15, align 8
  %64 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %65 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %64, i32 0, i32 4
  store %struct.acl* %63, %struct.acl** %65, align 8
  %66 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %67 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @EIO, align 4
  store i32 %68, i32* %21, align 4
  %69 = load i64, i64* @nfs_pnfsiothreads, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %41
  %72 = load i32, i32* @start_setacldsdorpc, align 4
  %73 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %74 = call i32 @nfs_pnfsio(i32 %72, %struct.nfsrvsetacldsdorpc* %73)
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %21, align 4
  %76 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %41
  %78 = load i32, i32* %21, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.ucred*, %struct.ucred** %10, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.vnode*, %struct.vnode** %12, align 8
  %85 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %86 = load %struct.nfsmount*, %struct.nfsmount** %85, align 8
  %87 = load %struct.acl*, %struct.acl** %15, align 8
  %88 = call i32 @nfsrv_setacldsdorpc(i32* %81, %struct.ucred* %82, i32* %83, %struct.vnode* %84, %struct.nfsmount* %86, %struct.acl* %87)
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %21, align 4
  %90 = call i64 @nfsds_failerr(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %20, align 4
  %98 = load i32*, i32** %16, align 8
  store i32 %97, i32* %98, align 4
  br label %108

99:                                               ; preds = %92, %80
  %100 = load i32, i32* %19, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %21, align 4
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %105, %102, %99
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %111 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %110, i32 1
  store %struct.nfsmount** %111, %struct.nfsmount*** %13, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %20, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %20, align 4
  %117 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %118 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %117, i32 1
  store %struct.nfsrvsetacldsdorpc* %118, %struct.nfsrvsetacldsdorpc** %18, align 8
  br label %36

119:                                              ; preds = %36
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.ucred*, %struct.ucred** %10, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.vnode*, %struct.vnode** %12, align 8
  %124 = load %struct.nfsmount**, %struct.nfsmount*** %13, align 8
  %125 = load %struct.nfsmount*, %struct.nfsmount** %124, align 8
  %126 = load %struct.acl*, %struct.acl** %15, align 8
  %127 = call i32 @nfsrv_setacldsdorpc(i32* %120, %struct.ucred* %121, i32* %122, %struct.vnode* %123, %struct.nfsmount* %125, %struct.acl* %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call i64 @nfsds_failerr(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %119
  %132 = load i32*, i32** %16, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32, i32* %14, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i32*, i32** %16, align 8
  store i32 %140, i32* %141, align 4
  br label %151

142:                                              ; preds = %135, %131, %119
  %143 = load i32, i32* %19, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %21, align 4
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %148, %145, %142
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i32, i32* %19, align 4
  %153 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %17, align 8
  store %struct.nfsrvsetacldsdorpc* %154, %struct.nfsrvsetacldsdorpc** %18, align 8
  %155 = load i32, i32* @hz, align 4
  %156 = sdiv i32 %155, 50
  store i32 %156, i32* %22, align 4
  %157 = load i32, i32* %22, align 4
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  store i32 1, i32* %22, align 4
  br label %160

160:                                              ; preds = %159, %151
  store i32 0, i32* %20, align 4
  br label %161

161:                                              ; preds = %212, %160
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %14, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %217

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %179, %166
  %168 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %169 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %174 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i1 [ false, %167 ], [ %176, %172 ]
  br i1 %178, label %179, label %185

179:                                              ; preds = %177
  %180 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %181 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %180, i32 0, i32 3
  %182 = load i32, i32* @PVFS, align 4
  %183 = load i32, i32* %22, align 4
  %184 = call i32 @tsleep(i32* %181, i32 %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  br label %167

185:                                              ; preds = %177
  %186 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %187 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @nfsds_failerr(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load i32*, i32** %16, align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %20, align 4
  %197 = load i32*, i32** %16, align 8
  store i32 %196, i32* %197, align 4
  br label %211

198:                                              ; preds = %191, %185
  %199 = load i32, i32* %19, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %203 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %208 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %19, align 4
  br label %210

210:                                              ; preds = %206, %201, %198
  br label %211

211:                                              ; preds = %210, %195
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %20, align 4
  %215 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %18, align 8
  %216 = getelementptr inbounds %struct.nfsrvsetacldsdorpc, %struct.nfsrvsetacldsdorpc* %215, i32 1
  store %struct.nfsrvsetacldsdorpc* %216, %struct.nfsrvsetacldsdorpc** %18, align 8
  br label %161

217:                                              ; preds = %161
  %218 = load %struct.nfsrvsetacldsdorpc*, %struct.nfsrvsetacldsdorpc** %17, align 8
  %219 = load i32, i32* @M_TEMP, align 4
  %220 = call i32 @free(%struct.nfsrvsetacldsdorpc* %218, i32 %219)
  %221 = load i32, i32* %19, align 4
  ret i32 %221
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.nfsrvsetacldsdorpc* @malloc(i32, i32, i32) #1

declare dso_local i32 @NFSBCOPY(i32*, i32*, i32) #1

declare dso_local i32 @nfs_pnfsio(i32, %struct.nfsrvsetacldsdorpc*) #1

declare dso_local i32 @nfsrv_setacldsdorpc(i32*, %struct.ucred*, i32*, %struct.vnode*, %struct.nfsmount*, %struct.acl*) #1

declare dso_local i64 @nfsds_failerr(i32) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.nfsrvsetacldsdorpc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
