; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext2fs_searchslot = type { i64, i32, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.ext2fs_direct_2 = type { i32, i64, i32, i32 }

@dirchk = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"mangled entry\00", align 1
@FOUND = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@COMPACT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_search_dirblock(%struct.inode* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32* %5, i8** %6, i8** %7, i8** %8, %struct.ext2fs_searchslot* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca %struct.ext2fs_searchslot*, align 8
  %22 = alloca %struct.vnode*, align 8
  %23 = alloca %struct.ext2fs_direct_2*, align 8
  %24 = alloca %struct.ext2fs_direct_2*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i8** %8, i8*** %20, align 8
  store %struct.ext2fs_searchslot* %9, %struct.ext2fs_searchslot** %21, align 8
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %25, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %26, align 4
  %37 = load %struct.inode*, %struct.inode** %12, align 8
  %38 = call %struct.vnode* @ITOV(%struct.inode* %37)
  store %struct.vnode* %38, %struct.vnode** %22, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %26, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = bitcast i8* %42 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %43, %struct.ext2fs_direct_2** %23, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %25, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %48, %struct.ext2fs_direct_2** %24, align 8
  br label %49

49:                                               ; preds = %246, %67, %10
  %50 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %51 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %24, align 8
  %52 = icmp ult %struct.ext2fs_direct_2* %50, %51
  br i1 %52, label %53, label %252

53:                                               ; preds = %49
  %54 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %55 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @dirchk, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load %struct.vnode*, %struct.vnode** %22, align 8
  %63 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %64 = load i32, i32* %26, align 4
  %65 = call i64 @ext2_dirbadentry(%struct.vnode* %62, %struct.ext2fs_direct_2* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %61, %53
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = load i8**, i8*** %18, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @ext2_dirbad(%struct.inode* %68, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %25, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %73, %75
  %77 = sub nsw i32 %72, %76
  store i32 %77, i32* %28, align 4
  %78 = load i32, i32* %28, align 4
  %79 = load i8**, i8*** %18, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = sext i32 %78 to i64
  %82 = getelementptr i8, i8* %80, i64 %81
  store i8* %82, i8** %79, align 8
  %83 = load i32, i32* %28, align 4
  %84 = load i32, i32* %26, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %26, align 4
  br label %49

86:                                               ; preds = %61, %58
  %87 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %88 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FOUND, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %197

92:                                               ; preds = %86
  %93 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %94 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %29, align 4
  %96 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %97 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %102 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @EXT2_DIR_REC_LEN(i32 %103)
  %105 = load i32, i32* %29, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %29, align 4
  br label %120

109:                                              ; preds = %92
  %110 = load %struct.inode*, %struct.inode** %12, align 8
  %111 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %112 = call i64 @ext2_is_dirent_tail(%struct.inode* %110, %struct.ext2fs_direct_2* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* %29, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %29, align 4
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %100
  %121 = load i32, i32* %29, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %196

123:                                              ; preds = %120
  %124 = load i32, i32* %29, align 4
  %125 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %126 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load i64, i64* @FOUND, align 8
  %131 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %132 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i8**, i8*** %18, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %137 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %139 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %142 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %195

143:                                              ; preds = %123
  %144 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %145 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @NONE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %194

149:                                              ; preds = %143
  %150 = load i32, i32* %29, align 4
  %151 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %152 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %156 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %165

159:                                              ; preds = %149
  %160 = load i8**, i8*** %18, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %164 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %149
  %166 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %167 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %170 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %173, label %193

173:                                              ; preds = %165
  %174 = load i64, i64* @COMPACT, align 8
  %175 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %176 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i8**, i8*** %18, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %180 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr i8, i8* %178, i64 %182
  %184 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %185 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr i8, i8* %183, i64 %188
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %21, align 8
  %192 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %173, %165
  br label %194

194:                                              ; preds = %193, %143
  br label %195

195:                                              ; preds = %194, %129
  br label %196

196:                                              ; preds = %195, %120
  br label %197

197:                                              ; preds = %196, %86
  %198 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %199 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %220

202:                                              ; preds = %197
  %203 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %204 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %27, align 4
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %202
  %210 = load i8*, i8** %15, align 8
  %211 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %212 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %27, align 4
  %215 = call i32 @bcmp(i8* %210, i32 %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %209
  %218 = load i32*, i32** %14, align 8
  store i32 1, i32* %218, align 4
  store i32 0, i32* %11, align 4
  br label %253

219:                                              ; preds = %209, %202
  br label %220

220:                                              ; preds = %219, %197
  %221 = load i8**, i8*** %18, align 8
  %222 = load i8*, i8** %221, align 8
  %223 = load i8**, i8*** %19, align 8
  store i8* %222, i8** %223, align 8
  %224 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %225 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i8**, i8*** %18, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = sext i32 %226 to i64
  %230 = getelementptr i8, i8* %228, i64 %229
  store i8* %230, i8** %227, align 8
  %231 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %232 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %26, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %26, align 4
  %236 = load i32, i32* %26, align 4
  %237 = load i32*, i32** %17, align 8
  store i32 %236, i32* %237, align 4
  %238 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %23, align 8
  %239 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %220
  %243 = load i8**, i8*** %18, align 8
  %244 = load i8*, i8** %243, align 8
  %245 = load i8**, i8*** %20, align 8
  store i8* %244, i8** %245, align 8
  br label %246

246:                                              ; preds = %242, %220
  %247 = load i8*, i8** %13, align 8
  %248 = load i32, i32* %26, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = bitcast i8* %250 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %251, %struct.ext2fs_direct_2** %23, align 8
  br label %49

252:                                              ; preds = %49
  store i32 0, i32* %11, align 4
  br label %253

253:                                              ; preds = %252, %217
  %254 = load i32, i32* %11, align 4
  ret i32 %254
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i64 @ext2_dirbadentry(%struct.vnode*, %struct.ext2fs_direct_2*, i32) #1

declare dso_local i32 @ext2_dirbad(%struct.inode*, i8*, i8*) #1

declare dso_local i64 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i64 @ext2_is_dirent_tail(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @bcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
