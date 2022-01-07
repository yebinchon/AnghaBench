; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_loadfsinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_loadfsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nfsfsinfo = type { i32, i32, i32, i32, i32, i64 }

@NFS_FABLKSIZE = common dso_local global i32 0, align 4
@NFS_DIRBLKSIZ = common dso_local global i32 0, align 4
@NFSSTA_GOTFSINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfscl_loadfsinfo(%struct.nfsmount* %0, %struct.nfsfsinfo* %1) #0 {
  %3 = alloca %struct.nfsmount*, align 8
  %4 = alloca %struct.nfsfsinfo*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %3, align 8
  store %struct.nfsfsinfo* %1, %struct.nfsfsinfo** %4, align 8
  %5 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %6 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %11 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %14 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %9, %2
  %18 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %19 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NFS_FABLKSIZE, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %25 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NFS_FABLKSIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @NFS_FABLKSIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %35 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %17, %9
  %37 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %38 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %41 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %36
  %45 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %46 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %51 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFS_FABLKSIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %58 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %60 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %65 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %68 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %49
  br label %70

70:                                               ; preds = %69, %44, %36
  %71 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %72 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NFS_FABLKSIZE, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @NFS_FABLKSIZE, align 4
  %78 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %79 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %87 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %90 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %85, %80
  %94 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %95 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @NFS_FABLKSIZE, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %101 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NFS_FABLKSIZE, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @NFS_FABLKSIZE, align 4
  %107 = sub nsw i32 %106, 1
  %108 = xor i32 %107, -1
  %109 = and i32 %105, %108
  %110 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %111 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %99, %93, %85
  %113 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %114 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %117 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %112
  %121 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %122 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %120
  %126 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %127 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NFS_FABLKSIZE, align 4
  %130 = sub nsw i32 %129, 1
  %131 = xor i32 %130, -1
  %132 = and i32 %128, %131
  %133 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %134 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %136 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %141 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %144 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %125
  br label %146

146:                                              ; preds = %145, %120, %112
  %147 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %148 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NFS_FABLKSIZE, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i32, i32* @NFS_FABLKSIZE, align 4
  %154 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %155 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %152, %146
  %157 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %158 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %156
  %162 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %163 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %166 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %161, %156
  %170 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %171 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %169
  %176 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %177 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %180 = add nsw i32 %178, %179
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %183 = sub nsw i32 %182, 1
  %184 = xor i32 %183, -1
  %185 = and i32 %181, %184
  %186 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %187 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %175, %169, %161
  %189 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %190 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %193 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %222

196:                                              ; preds = %188
  %197 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %198 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %196
  %202 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %203 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %206 = sub nsw i32 %205, 1
  %207 = xor i32 %206, -1
  %208 = and i32 %204, %207
  %209 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %210 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %212 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %201
  %216 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %217 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %220 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %215, %201
  br label %222

222:                                              ; preds = %221, %196, %188
  %223 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %224 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %230 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %231 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %228, %222
  %233 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %234 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %239 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %242 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp slt i64 %240, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %237
  %246 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %4, align 8
  %247 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %250 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %249, i32 0, i32 3
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %245, %237, %232
  %252 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %253 = call i32 @newnfs_iosize(%struct.nfsmount* %252)
  %254 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %255 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %254, i32 0, i32 5
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 4
  %259 = load i32, i32* @NFSSTA_GOTFSINFO, align 4
  %260 = load %struct.nfsmount*, %struct.nfsmount** %3, align 8
  %261 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  ret void
}

declare dso_local i32 @newnfs_iosize(%struct.nfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
