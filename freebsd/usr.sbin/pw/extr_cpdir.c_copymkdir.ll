; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_cpdir.c_copymkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_cpdir.c_copymkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }
%struct.dirent = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"mkdir(%s)\00", align 1
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dot.\00", align 1
@_DEF_DIRMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copymkdir(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4096 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.stat, align 4
  %25 = alloca %struct.dirent*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %39

36:                                               ; preds = %7
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %36, %7
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @mkdirat(i32 %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EEXIST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 1, i32* %27, align 4
  br label %226

52:                                               ; preds = %45, %39
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %58 = call i32 @fchownat(i32 %53, i8* %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %66 = call i32 @chflagsat(i32 %62, i8* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %52
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %27, align 4
  br label %226

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* @O_DIRECTORY, align 4
  %75 = call i32 (i32, i8*, i32, ...) @openat(i32 %72, i8* %73, i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32* @fdopendir(i32 %76)
  store i32* %77, i32** %26, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @close(i32 %80)
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @close(i32 %82)
  store i32 1, i32* %27, align 4
  br label %226

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %210, %196, %182, %173, %155, %124, %111, %101, %84
  %86 = load i32*, i32** %26, align 8
  %87 = call %struct.dirent* @readdir(i32* %86)
  store %struct.dirent* %87, %struct.dirent** %25, align 8
  %88 = icmp ne %struct.dirent* %87, null
  br i1 %88, label %89, label %223

89:                                               ; preds = %85
  %90 = load %struct.dirent*, %struct.dirent** %25, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.dirent*, %struct.dirent** %25, align 8
  %97 = getelementptr inbounds %struct.dirent, %struct.dirent* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %89
  br label %85

102:                                              ; preds = %95
  %103 = load %struct.dirent*, %struct.dirent** %25, align 8
  %104 = getelementptr inbounds %struct.dirent, %struct.dirent* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %15, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %109 = call i32 @fstatat(i32 %106, i8* %107, %struct.stat* %24, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %85

112:                                              ; preds = %102
  %113 = load i8*, i8** %15, align 8
  %114 = call i64 @strncmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i8*, i8** %15, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  store i8* %118, i8** %15, align 8
  br label %119

119:                                              ; preds = %116, %112
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @S_ISDIR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load i32, i32* %20, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.dirent*, %struct.dirent** %25, align 8
  %129 = getelementptr inbounds %struct.dirent, %struct.dirent* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @O_DIRECTORY, align 4
  %132 = call i32 (i32, i8*, i32, ...) @openat(i32 %127, i8* %130, i32 %131)
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @_DEF_DIRMODE, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  call void @copymkdir(i32 %125, i8* %126, i32 %132, i32 %136, i32 %137, i32 %138, i32 %140)
  br label %85

141:                                              ; preds = %119
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @S_ISLNK(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.dirent*, %struct.dirent** %25, align 8
  %149 = getelementptr inbounds %struct.dirent, %struct.dirent* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = sub i64 %29, 1
  %152 = trunc i64 %151 to i32
  %153 = call i32 @readlinkat(i32 %147, i8* %150, i8* %31, i32 %152)
  store i32 %153, i32* %19, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %168

155:                                              ; preds = %146
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %31, i64 %157
  store i8 0, i8* %158, align 1
  %159 = load i32, i32* %20, align 4
  %160 = load i8*, i8** %15, align 8
  %161 = call i32 @symlinkat(i8* %31, i32 %159, i8* %160)
  %162 = load i32, i32* %20, align 4
  %163 = load i8*, i8** %15, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %167 = call i32 @fchownat(i32 %162, i8* %163, i32 %164, i32 %165, i32 %166)
  br label %85

168:                                              ; preds = %146, %141
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @S_ISREG(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  br label %85

174:                                              ; preds = %168
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.dirent*, %struct.dirent** %25, align 8
  %177 = getelementptr inbounds %struct.dirent, %struct.dirent* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* @O_RDONLY, align 4
  %180 = call i32 (i32, i8*, i32, ...) @openat(i32 %175, i8* %178, i32 %179)
  store i32 %180, i32* %21, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %85

183:                                              ; preds = %174
  %184 = load i32, i32* %20, align 4
  %185 = load i8*, i8** %15, align 8
  %186 = load i32, i32* @O_RDWR, align 4
  %187 = load i32, i32* @O_CREAT, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @O_EXCL, align 4
  %190 = or i32 %188, %189
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, i32, ...) @openat(i32 %184, i8* %185, i32 %190, i32 %192)
  store i32 %193, i32* %22, align 4
  %194 = load i32, i32* %22, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %199

196:                                              ; preds = %183
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @close(i32 %197)
  br label %85

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %205, %199
  %201 = load i32, i32* %21, align 4
  %202 = getelementptr inbounds [4096 x i8], [4096 x i8]* %18, i64 0, i64 0
  %203 = call i32 @read(i32 %201, i8* %202, i32 4096)
  store i32 %203, i32* %23, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load i32, i32* %22, align 4
  %207 = getelementptr inbounds [4096 x i8], [4096 x i8]* %18, i64 0, i64 0
  %208 = load i32, i32* %23, align 4
  %209 = call i32 @write(i32 %206, i8* %207, i32 %208)
  br label %200

210:                                              ; preds = %200
  %211 = load i32, i32* %21, align 4
  %212 = call i32 @close(i32 %211)
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @fchown(i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %22, align 4
  %218 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @fchflags(i32 %217, i32 %219)
  %221 = load i32, i32* %22, align 4
  %222 = call i32 @close(i32 %221)
  br label %85

223:                                              ; preds = %85
  %224 = load i32*, i32** %26, align 8
  %225 = call i32 @closedir(i32* %224)
  store i32 0, i32* %27, align 4
  br label %226

226:                                              ; preds = %223, %79, %70, %49
  %227 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %27, align 4
  switch i32 %228, label %230 [
    i32 0, label %229
    i32 1, label %229
  ]

229:                                              ; preds = %226, %226
  ret void

230:                                              ; preds = %226
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mkdirat(i32, i8*, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fchownat(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @chflagsat(i32, i8*, i32, i32) #2

declare dso_local i32 @openat(i32, i8*, i32, ...) #2

declare dso_local i32* @fdopendir(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @readlinkat(i32, i8*, i8*, i32) #2

declare dso_local i32 @symlinkat(i8*, i32, i8*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @fchown(i32, i32, i32) #2

declare dso_local i32 @fchflags(i32, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
