; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_ext_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_ext_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.m_ext2fs = type { i32, i32 }
%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.buf = type { i32, i32, i64 }

@EFBIG = common dso_local global i32 0, align 4
@BA_CLRBUF = common dso_local global i32 0, align 4
@B_CLUSTEROK = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*)* @ext2_ext_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_ext_truncate(%struct.vnode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_ext2fs*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.buf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %22, %struct.vnode** %12, align 8
  %23 = load %struct.vnode*, %struct.vnode** %12, align 8
  %24 = call %struct.inode* @VTOI(%struct.vnode* %23)
  store %struct.inode* %24, %struct.inode** %15, align 8
  %25 = load %struct.inode*, %struct.inode** %15, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %26, align 8
  store %struct.m_ext2fs* %27, %struct.m_ext2fs** %14, align 8
  %28 = load %struct.inode*, %struct.inode** %15, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %15, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  %38 = load %struct.m_ext2fs*, %struct.m_ext2fs** %37, align 8
  %39 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @EFBIG, align 4
  store i32 %43, i32* %6, align 4
  br label %263

44:                                               ; preds = %34
  %45 = load %struct.vnode*, %struct.vnode** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @vnode_pager_setsize(%struct.vnode* %45, i32 %46)
  %48 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @blkoff(%struct.m_ext2fs* %48, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @lblkno(%struct.m_ext2fs* %52, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* @BA_CLRBUF, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.inode*, %struct.inode** %15, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.ucred*, %struct.ucred** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ext2_balloc(%struct.inode* %59, i32 %60, i32 %62, %struct.ucred* %63, %struct.buf** %16, i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %44
  %69 = load %struct.vnode*, %struct.vnode** %7, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i32 @vnode_pager_setsize(%struct.vnode* %69, i32 %70)
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %6, align 4
  br label %263

73:                                               ; preds = %44
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.inode*, %struct.inode** %15, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.buf*, %struct.buf** %16, align 8
  %78 = getelementptr inbounds %struct.buf, %struct.buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %81 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load i32, i32* @B_CLUSTEROK, align 4
  %86 = load %struct.buf*, %struct.buf** %16, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %73
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @IO_SYNC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.buf*, %struct.buf** %16, align 8
  %97 = call i32 @bwrite(%struct.buf* %96)
  br label %109

98:                                               ; preds = %90
  %99 = load %struct.vnode*, %struct.vnode** %12, align 8
  %100 = call i64 @DOINGASYNC(%struct.vnode* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.buf*, %struct.buf** %16, align 8
  %104 = call i32 @bdwrite(%struct.buf* %103)
  br label %108

105:                                              ; preds = %98
  %106 = load %struct.buf*, %struct.buf** %16, align 8
  %107 = call i32 @bawrite(%struct.buf* %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, i32* @IN_CHANGE, align 4
  %111 = load i32, i32* @IN_UPDATE, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.inode*, %struct.inode** %15, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.vnode*, %struct.vnode** %12, align 8
  %118 = load %struct.vnode*, %struct.vnode** %12, align 8
  %119 = call i64 @DOINGASYNC(%struct.vnode* %118)
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @ext2_update(%struct.vnode* %117, i32 %122)
  store i32 %123, i32* %6, align 4
  br label %263

124:                                              ; preds = %5
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %127 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %132 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %130, %133
  store i32 %134, i32* %13, align 4
  %135 = load %struct.inode*, %struct.inode** %15, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.ucred*, %struct.ucred** %10, align 8
  %139 = load %struct.thread*, %struct.thread** %11, align 8
  %140 = call i32 @ext4_ext_remove_space(%struct.inode* %135, i32 %136, i32 %137, %struct.ucred* %138, %struct.thread* %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %124
  %144 = load i32, i32* %19, align 4
  store i32 %144, i32* %6, align 4
  br label %263

145:                                              ; preds = %124
  %146 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @blkoff(%struct.m_ext2fs* %146, i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.inode*, %struct.inode** %15, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %227

155:                                              ; preds = %145
  %156 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @lblkno(%struct.m_ext2fs* %156, i32 %157)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* @BA_CLRBUF, align 4
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.inode*, %struct.inode** %15, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load %struct.ucred*, %struct.ucred** %10, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @ext2_balloc(%struct.inode* %162, i32 %163, i32 %164, %struct.ucred* %165, %struct.buf** %16, i32 %166)
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %155
  %171 = load i32, i32* %19, align 4
  store i32 %171, i32* %6, align 4
  br label %263

172:                                              ; preds = %155
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.inode*, %struct.inode** %15, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %177 = load %struct.inode*, %struct.inode** %15, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @blksize(%struct.m_ext2fs* %176, %struct.inode* %177, i32 %178)
  store i32 %179, i32* %20, align 4
  %180 = load %struct.buf*, %struct.buf** %16, align 8
  %181 = getelementptr inbounds %struct.buf, %struct.buf* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i8*
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %18, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 @bzero(i8* %186, i32 %189)
  %191 = load %struct.buf*, %struct.buf** %16, align 8
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @allocbuf(%struct.buf* %191, i32 %192)
  %194 = load %struct.buf*, %struct.buf** %16, align 8
  %195 = getelementptr inbounds %struct.buf, %struct.buf* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %198 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %172
  %202 = load i32, i32* @B_CLUSTEROK, align 4
  %203 = load %struct.buf*, %struct.buf** %16, align 8
  %204 = getelementptr inbounds %struct.buf, %struct.buf* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %172
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @IO_SYNC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load %struct.buf*, %struct.buf** %16, align 8
  %214 = call i32 @bwrite(%struct.buf* %213)
  br label %226

215:                                              ; preds = %207
  %216 = load %struct.vnode*, %struct.vnode** %12, align 8
  %217 = call i64 @DOINGASYNC(%struct.vnode* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load %struct.buf*, %struct.buf** %16, align 8
  %221 = call i32 @bdwrite(%struct.buf* %220)
  br label %225

222:                                              ; preds = %215
  %223 = load %struct.buf*, %struct.buf** %16, align 8
  %224 = call i32 @bawrite(%struct.buf* %223)
  br label %225

225:                                              ; preds = %222, %219
  br label %226

226:                                              ; preds = %225, %212
  br label %227

227:                                              ; preds = %226, %151
  %228 = load i32, i32* %21, align 4
  %229 = load %struct.inode*, %struct.inode** %15, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.vnode*, %struct.vnode** %12, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %234 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @vtruncbuf(%struct.vnode* %231, i32 %232, i32 %235)
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %19, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %227
  %240 = load i32, i32* %19, align 4
  store i32 %240, i32* %6, align 4
  br label %263

241:                                              ; preds = %227
  %242 = load %struct.vnode*, %struct.vnode** %12, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @vnode_pager_setsize(%struct.vnode* %242, i32 %243)
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.inode*, %struct.inode** %15, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* @IN_CHANGE, align 4
  %249 = load i32, i32* @IN_UPDATE, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.inode*, %struct.inode** %15, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load %struct.vnode*, %struct.vnode** %12, align 8
  %256 = load %struct.vnode*, %struct.vnode** %12, align 8
  %257 = call i64 @DOINGASYNC(%struct.vnode* %256)
  %258 = icmp ne i64 %257, 0
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = call i32 @ext2_update(%struct.vnode* %255, i32 %260)
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %19, align 4
  store i32 %262, i32* %6, align 4
  br label %263

263:                                              ; preds = %241, %239, %170, %143, %109, %68, %42
  %264 = load i32, i32* %6, align 4
  ret i32 %264
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i32) #1

declare dso_local i32 @blkoff(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @lblkno(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_balloc(%struct.inode*, i32, i32, %struct.ucred*, %struct.buf**, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i32 @ext2_update(%struct.vnode*, i32) #1

declare dso_local i32 @ext4_ext_remove_space(%struct.inode*, i32, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @blksize(%struct.m_ext2fs*, %struct.inode*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @allocbuf(%struct.buf*, i32) #1

declare dso_local i32 @vtruncbuf(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
