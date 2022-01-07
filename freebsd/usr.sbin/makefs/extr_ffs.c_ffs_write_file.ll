; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_write_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i8 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.inode = type { i32, i32, %struct.TYPE_8__, %struct.vnode*, %struct.fs* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vnode = type { i32*, %struct.TYPE_6__* }
%struct.fs = type { i32 }
%struct.buf = type { i32* }

@mode = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_FS_WRITE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ffs_write_file: ino %u, din %p, isfile %d, %s, size %lld\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c", file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", buffer %p\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Can't open `%s' for reading\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Reading `%s', %lld bytes to go\00", align 1
@.str.5 = private unnamed_addr constant [119 x i8] c"Reading `%s', %lld bytes to go, read %zd bytes, expected %ju bytes, does metalog size= attribute mismatch source size?\00", align 1
@DEBUG_FS_WRITE_FILE_BLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"ffs_write_file: write %p offset %lld size %lld left %lld\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Writing inode %d (%s), bytes %lld + %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.dinode*, i32, i8*, %struct.TYPE_6__*)* @ffs_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_write_file(%union.dinode* %0, i32 %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca %union.dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode, align 8
  %18 = alloca %struct.buf*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.vnode, align 8
  store %union.dinode* %0, %union.dinode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %19, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = bitcast %struct.TYPE_6__* %25 to i32*
  store i32* %26, i32** %24, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %27, align 8
  %28 = load %union.dinode*, %union.dinode** %5, align 8
  %29 = icmp ne %union.dinode* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %union.dinode*, %union.dinode** %5, align 8
  %45 = load i32, i32* @mode, align 4
  %46 = call i32 @DIP(%union.dinode* %44, i32 %45)
  %47 = call i32 @S_ISREG(i32 %46)
  store i32 %47, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.fs*
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  store %struct.fs* %51, %struct.fs** %52, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  store %struct.vnode* %20, %struct.vnode** %53, align 8
  %54 = load i32, i32* @debug, align 4
  %55 = load i32, i32* @DEBUG_FS_WRITE_FILE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %4
  %59 = load i32, i32* %6, align 4
  %60 = load %union.dinode*, %union.dinode** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %union.dinode*, %union.dinode** %5, align 8
  %63 = load i32, i32* @mode, align 4
  %64 = call i32 @DIP(%union.dinode* %62, i32 %63)
  %65 = load i32, i32* @S_IFMT, align 4
  %66 = and i32 %64, %65
  %67 = call i8* @inode_type(i32 %66)
  %68 = load %union.dinode*, %union.dinode** %5, align 8
  %69 = load i32, i32* @size, align 4
  %70 = call i32 @DIP(%union.dinode* %68, i32 %69)
  %71 = sext i32 %70 to i64
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %59, %union.dinode* %60, i32 %61, i8* %67, i64 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %81

78:                                               ; preds = %58
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %4
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %union.dinode*, %union.dinode** %5, align 8
  %86 = load i32, i32* @size, align 4
  %87 = call i32 @DIP(%union.dinode* %85, i32 %86)
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %union.dinode*, %union.dinode** %5, align 8
  %97 = bitcast %union.dinode* %96 to i8*
  %98 = call i32 @memcpy(i32* %95, i8* %97, i32 4)
  br label %105

99:                                               ; preds = %82
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %union.dinode*, %union.dinode** %5, align 8
  %103 = bitcast %union.dinode* %102 to i8*
  %104 = call i32 @memcpy(i32* %101, i8* %103, i32 4)
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %union.dinode*, %union.dinode** %5, align 8
  %107 = load i32, i32* @size, align 4
  %108 = call i32 @DIP(%union.dinode* %106, i32 %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %248

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @emalloc(i32 %117)
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* @O_RDONLY, align 4
  %121 = call i32 @open(i8* %119, i32 %120, i32 292)
  store i32 %121, i32* %10, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i32, i8*, ...) @err(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %114
  br label %130

128:                                              ; preds = %111
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %12, align 8
  br label %130

130:                                              ; preds = %128, %127
  store i32 0, i32* %14, align 4
  %131 = load %union.dinode*, %union.dinode** %5, align 8
  %132 = load i32, i32* @size, align 4
  %133 = call i32 @DIP(%union.dinode* %131, i32 %132)
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %243, %130
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %247

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @MIN(i32 %138, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  br label %174

146:                                              ; preds = %137
  %147 = load i32, i32* %10, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @read(i32 %147, i8* %148, i32 %149)
  store i32 %150, i32* %16, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = call i32 (i32, i8*, ...) @err(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %154, i64 %156)
  br label %173

158:                                              ; preds = %146
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32, i32* @EXIT_FAILURE, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @errx(i32 %163, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i64 0, i64 0), i8* %164, i64 %166, i32 %167, i32 %168)
  br label %172

170:                                              ; preds = %158
  %171 = load i8*, i8** %11, align 8
  store i8* %171, i8** %12, align 8
  br label %172

172:                                              ; preds = %170, %162
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173, %145
  %175 = load %union.dinode*, %union.dinode** %5, align 8
  %176 = load i32, i32* @size, align 4
  %177 = call i32 @DIP(%union.dinode* %175, i32 %176)
  %178 = load i32, i32* %13, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* @debug, align 4
  %181 = load i32, i32* @DEBUG_FS_WRITE_FILE_BLOCK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %174
  %185 = load i8*, i8** %12, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %185, i64 %187, i64 %189, i64 %191)
  br label %193

193:                                              ; preds = %184, %174
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i64 @ffs_balloc(%struct.inode* %17, i32 %194, i32 %195, %struct.buf** %18)
  store i64 %196, i64* @errno, align 8
  br label %197

197:                                              ; preds = %231, %193
  %198 = load i64, i64* @errno, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %197
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i8*, i8** %7, align 8
  br label %213

206:                                              ; preds = %200
  %207 = load %union.dinode*, %union.dinode** %5, align 8
  %208 = load i32, i32* @mode, align 4
  %209 = call i32 @DIP(%union.dinode* %207, i32 %208)
  %210 = load i32, i32* @S_IFMT, align 4
  %211 = and i32 %209, %210
  %212 = call i8* @inode_type(i32 %211)
  br label %213

213:                                              ; preds = %206, %204
  %214 = phi i8* [ %205, %204 ], [ %212, %206 ]
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %201, i8* %214, i64 %216, i64 %218)
  br label %220

220:                                              ; preds = %213, %197
  %221 = load %struct.buf*, %struct.buf** %18, align 8
  %222 = getelementptr inbounds %struct.buf, %struct.buf* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @memcpy(i32* %223, i8* %224, i32 %225)
  %227 = load %struct.buf*, %struct.buf** %18, align 8
  %228 = call i64 @bwrite(%struct.buf* %227)
  store i64 %228, i64* @errno, align 8
  %229 = load i64, i64* @errno, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  br label %197

232:                                              ; preds = %220
  %233 = load %struct.buf*, %struct.buf** %18, align 8
  %234 = call i32 @brelse(%struct.buf* %233)
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = load i32, i32* %14, align 4
  %239 = load i8*, i8** %12, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8* %241, i8** %12, align 8
  br label %242

242:                                              ; preds = %237, %232
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %13, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %13, align 4
  br label %134

247:                                              ; preds = %134
  br label %248

248:                                              ; preds = %247, %110
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %253 = call i32 @ffs_write_inode(%struct.TYPE_8__* %249, i32 %251, %struct.TYPE_6__* %252)
  %254 = load i8*, i8** %11, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %248
  %257 = load i8*, i8** %11, align 8
  %258 = call i32 @free(i8* %257)
  br label %259

259:                                              ; preds = %256, %248
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, -1
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @close(i32 %263)
  br label %265

265:                                              ; preds = %262, %259
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @inode_type(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, i64, i32, i32) #1

declare dso_local i64 @ffs_balloc(%struct.inode*, i32, i32, %struct.buf**) #1

declare dso_local i64 @bwrite(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ffs_write_inode(%struct.TYPE_8__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
