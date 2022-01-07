; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_getdents.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_getdents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tmpfs_dirent*, i8* }
%struct.tmpfs_dirent = type { i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uio = type { i32, i64 }
%struct.tmpfs_dir_cursor = type { i32 }
%struct.dirent = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DT_WHT = common dso_local global i32 0, align 4
@DT_BLK = common dso_local global i32 0, align 4
@DT_CHR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@DT_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tmpfs_dir_getdents: type %p %d\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_dir_getdents(%struct.tmpfs_mount* %0, %struct.tmpfs_node* %1, %struct.uio* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tmpfs_mount*, align 8
  %9 = alloca %struct.tmpfs_node*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.tmpfs_dir_cursor, align 4
  %15 = alloca %struct.tmpfs_dirent*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dirent, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %8, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %9, align 8
  store %struct.uio* %2, %struct.uio** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %20 = call i32 @TMPFS_VALIDATE_DIR(%struct.tmpfs_node* %19)
  store i8* null, i8** %16, align 8
  %21 = load %struct.uio*, %struct.uio** %10, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %88 [
    i32 137, label %24
    i32 136, label %51
    i32 135, label %87
  ]

24:                                               ; preds = %6
  %25 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %8, align 8
  %26 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %27 = load %struct.uio*, %struct.uio** %10, align 8
  %28 = call i32 @tmpfs_dir_getdotdent(%struct.tmpfs_mount* %25, %struct.tmpfs_node* %26, %struct.uio* %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %7, align 4
  br label %259

33:                                               ; preds = %24
  %34 = load %struct.uio*, %struct.uio** %10, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  store i32 136, i32* %35, align 8
  %36 = load i8**, i8*** %12, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.uio*, %struct.uio** %10, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %16, align 8
  %44 = load i8**, i8*** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %38, %33
  br label %51

51:                                               ; preds = %6, %50
  %52 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %8, align 8
  %53 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %54 = load %struct.uio*, %struct.uio** %10, align 8
  %55 = call i32 @tmpfs_dir_getdotdotdent(%struct.tmpfs_mount* %52, %struct.tmpfs_node* %53, %struct.uio* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %7, align 4
  br label %259

60:                                               ; preds = %51
  %61 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %62 = call %struct.tmpfs_dirent* @tmpfs_dir_first(%struct.tmpfs_node* %61, %struct.tmpfs_dir_cursor* %14)
  store %struct.tmpfs_dirent* %62, %struct.tmpfs_dirent** %15, align 8
  %63 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %64 = call i8* @tmpfs_dirent_cookie(%struct.tmpfs_dirent* %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.uio*, %struct.uio** %10, align 8
  %67 = getelementptr inbounds %struct.uio, %struct.uio* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i8**, i8*** %12, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %60
  %71 = load %struct.uio*, %struct.uio** %10, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %16, align 8
  %76 = load i8**, i8*** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %70, %60
  %83 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %84 = icmp eq %struct.tmpfs_dirent* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %259

86:                                               ; preds = %82
  br label %105

87:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %259

88:                                               ; preds = %6
  %89 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %90 = load %struct.uio*, %struct.uio** %10, align 8
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup_cookie(%struct.tmpfs_node* %89, i32 %92, %struct.tmpfs_dir_cursor* %14)
  store %struct.tmpfs_dirent* %93, %struct.tmpfs_dirent** %15, align 8
  %94 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %95 = icmp eq %struct.tmpfs_dirent* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %7, align 4
  br label %259

98:                                               ; preds = %88
  %99 = load i8**, i8*** %12, align 8
  %100 = icmp ne i8** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %103 = call i8* @tmpfs_dirent_cookie(%struct.tmpfs_dirent* %102)
  store i8* %103, i8** %16, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %233, %105
  %107 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %108 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp eq %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* @DT_WHT, align 4
  %114 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %113, i32* %114, align 4
  br label %159

115:                                              ; preds = %106
  %116 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %117 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %123 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %148 [
    i32 134, label %127
    i32 133, label %130
    i32 132, label %133
    i32 131, label %136
    i32 130, label %139
    i32 129, label %142
    i32 128, label %145
  ]

127:                                              ; preds = %115
  %128 = load i32, i32* @DT_BLK, align 4
  %129 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %128, i32* %129, align 4
  br label %158

130:                                              ; preds = %115
  %131 = load i32, i32* @DT_CHR, align 4
  %132 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %131, i32* %132, align 4
  br label %158

133:                                              ; preds = %115
  %134 = load i32, i32* @DT_DIR, align 4
  %135 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %134, i32* %135, align 4
  br label %158

136:                                              ; preds = %115
  %137 = load i32, i32* @DT_FIFO, align 4
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %137, i32* %138, align 4
  br label %158

139:                                              ; preds = %115
  %140 = load i32, i32* @DT_LNK, align 4
  %141 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %140, i32* %141, align 4
  br label %158

142:                                              ; preds = %115
  %143 = load i32, i32* @DT_REG, align 4
  %144 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %143, i32* %144, align 4
  br label %158

145:                                              ; preds = %115
  %146 = load i32, i32* @DT_SOCK, align 4
  %147 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  store i32 %146, i32* %147, align 4
  br label %158

148:                                              ; preds = %115
  %149 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %150 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %153 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %151, i32 %156)
  br label %158

158:                                              ; preds = %148, %145, %142, %139, %136, %133, %130, %127
  br label %159

159:                                              ; preds = %158, %111
  %160 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %161 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  %164 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %165 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = icmp ult i64 %167, 4
  %169 = zext i1 %168 to i32
  %170 = call i32 @MPASS(i32 %169)
  %171 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %174 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %178 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @memcpy(i32 %172, i32 %176, i32 %179)
  %181 = call i64 @GENERIC_DIRSIZ(%struct.dirent* %18)
  %182 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 2
  store i64 %181, i64* %182, align 8
  %183 = call i32 @dirent_terminate(%struct.dirent* %18)
  %184 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.uio*, %struct.uio** %10, align 8
  %187 = getelementptr inbounds %struct.uio, %struct.uio* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %185, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %159
  %191 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %191, i32* %17, align 4
  br label %235

192:                                              ; preds = %159
  %193 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.uio*, %struct.uio** %10, align 8
  %196 = call i32 @uiomove(%struct.dirent* %18, i64 %194, %struct.uio* %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %221

199:                                              ; preds = %192
  %200 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %201 = call %struct.tmpfs_dirent* @tmpfs_dir_next(%struct.tmpfs_node* %200, %struct.tmpfs_dir_cursor* %14)
  store %struct.tmpfs_dirent* %201, %struct.tmpfs_dirent** %15, align 8
  %202 = load i8**, i8*** %12, align 8
  %203 = icmp ne i8** %202, null
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %206 = call i8* @tmpfs_dirent_cookie(%struct.tmpfs_dirent* %205)
  store i8* %206, i8** %16, align 8
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @MPASS(i32 %211)
  %213 = load i8*, i8** %16, align 8
  %214 = load i8**, i8*** %12, align 8
  %215 = load i32*, i32** %13, align 8
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8*, i8** %214, i64 %218
  store i8* %213, i8** %219, align 8
  br label %220

220:                                              ; preds = %204, %199
  br label %221

221:                                              ; preds = %220, %192
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %17, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load %struct.uio*, %struct.uio** %10, align 8
  %227 = getelementptr inbounds %struct.uio, %struct.uio* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %232 = icmp ne %struct.tmpfs_dirent* %231, null
  br label %233

233:                                              ; preds = %230, %225, %222
  %234 = phi i1 [ false, %225 ], [ false, %222 ], [ %232, %230 ]
  br i1 %234, label %106, label %235

235:                                              ; preds = %233, %190
  %236 = load i8**, i8*** %12, align 8
  %237 = icmp eq i8** %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %240 = call i8* @tmpfs_dirent_cookie(%struct.tmpfs_dirent* %239)
  store i8* %240, i8** %16, align 8
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i8*, i8** %16, align 8
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.uio*, %struct.uio** %10, align 8
  %245 = getelementptr inbounds %struct.uio, %struct.uio* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load i8*, i8** %16, align 8
  %247 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %248 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  store i8* %246, i8** %249, align 8
  %250 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %15, align 8
  %251 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %252 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store %struct.tmpfs_dirent* %250, %struct.tmpfs_dirent** %253, align 8
  %254 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %8, align 8
  %255 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %256 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %257 = call i32 @tmpfs_set_status(%struct.tmpfs_mount* %254, %struct.tmpfs_node* %255, i32 %256)
  %258 = load i32, i32* %17, align 4
  store i32 %258, i32* %7, align 4
  br label %259

259:                                              ; preds = %241, %96, %87, %85, %58, %31
  %260 = load i32, i32* %7, align 4
  ret i32 %260
}

declare dso_local i32 @TMPFS_VALIDATE_DIR(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_dir_getdotdent(%struct.tmpfs_mount*, %struct.tmpfs_node*, %struct.uio*) #1

declare dso_local i32 @tmpfs_dir_getdotdotdent(%struct.tmpfs_mount*, %struct.tmpfs_node*, %struct.uio*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_first(%struct.tmpfs_node*, %struct.tmpfs_dir_cursor*) #1

declare dso_local i8* @tmpfs_dirent_cookie(%struct.tmpfs_dirent*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup_cookie(%struct.tmpfs_node*, i32, %struct.tmpfs_dir_cursor*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @GENERIC_DIRSIZ(%struct.dirent*) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @uiomove(%struct.dirent*, i64, %struct.uio*) #1

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_next(%struct.tmpfs_node*, %struct.tmpfs_dir_cursor*) #1

declare dso_local i32 @tmpfs_set_status(%struct.tmpfs_mount*, %struct.tmpfs_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
