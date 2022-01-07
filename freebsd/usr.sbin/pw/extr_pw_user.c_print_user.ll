; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_print_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_print_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i64, i64, i8*, i8*, i8*, i64, i64, i32* }
%struct.group = type { i8*, i32** }
%struct.tm = type { i32 }

@__const.print_user.acexpire = private unnamed_addr constant [32 x i8] c"[None]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.print_user.pwexpire = private unnamed_addr constant [32 x i8] c"[None]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [208 x i8] c"Login Name: %-15s   #%-12ju Group: %-15s   #%ju\0A Full Name: %s\0A      Home: %-26.26s      Class: %s\0A     Shell: %-26.26s     Office: %s\0AWork Phone: %-26.26s Home Phone: %s\0AAcc Expire: %-26.26s Pwd Expire: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"(invalid)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"    Groups: %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, i32, i32)* @print_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_user(%struct.passwd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca [60 x i8], align 16
  %12 = alloca [60 x i8], align 16
  %13 = alloca [60 x i8], align 16
  %14 = alloca [60 x i8], align 16
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca %struct.tm*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.passwd*, %struct.passwd** %5, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.group* @GETGRGID(i64 %23)
  store %struct.group* %24, %struct.group** %10, align 8
  %25 = bitcast [60 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 60, i1 false)
  %26 = bitcast i8* %25 to [60 x i8]*
  %27 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i32 0, i32 0
  store i8 85, i8* %27, align 16
  %28 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i32 0, i32 1
  store i8 115, i8* %28, align 1
  %29 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i32 0, i32 2
  store i8 101, i8* %29, align 2
  %30 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i32 0, i32 3
  store i8 114, i8* %30, align 1
  %31 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i32 0, i32 4
  store i8 32, i8* %31, align 4
  %32 = getelementptr inbounds [60 x i8], [60 x i8]* %26, i32 0, i32 5
  store i8 38, i8* %32, align 1
  %33 = bitcast [60 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 60, i1 false)
  %34 = bitcast i8* %33 to [60 x i8]*
  %35 = getelementptr inbounds [60 x i8], [60 x i8]* %34, i32 0, i32 0
  store i8 91, i8* %35, align 16
  %36 = getelementptr inbounds [60 x i8], [60 x i8]* %34, i32 0, i32 1
  store i8 78, i8* %36, align 1
  %37 = getelementptr inbounds [60 x i8], [60 x i8]* %34, i32 0, i32 2
  store i8 111, i8* %37, align 2
  %38 = getelementptr inbounds [60 x i8], [60 x i8]* %34, i32 0, i32 3
  store i8 110, i8* %38, align 1
  %39 = getelementptr inbounds [60 x i8], [60 x i8]* %34, i32 0, i32 4
  store i8 101, i8* %39, align 4
  %40 = getelementptr inbounds [60 x i8], [60 x i8]* %34, i32 0, i32 5
  store i8 93, i8* %40, align 1
  %41 = bitcast [60 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 60, i1 false)
  %42 = bitcast i8* %41 to [60 x i8]*
  %43 = getelementptr inbounds [60 x i8], [60 x i8]* %42, i32 0, i32 0
  store i8 91, i8* %43, align 16
  %44 = getelementptr inbounds [60 x i8], [60 x i8]* %42, i32 0, i32 1
  store i8 78, i8* %44, align 1
  %45 = getelementptr inbounds [60 x i8], [60 x i8]* %42, i32 0, i32 2
  store i8 111, i8* %45, align 2
  %46 = getelementptr inbounds [60 x i8], [60 x i8]* %42, i32 0, i32 3
  store i8 110, i8* %46, align 1
  %47 = getelementptr inbounds [60 x i8], [60 x i8]* %42, i32 0, i32 4
  store i8 101, i8* %47, align 4
  %48 = getelementptr inbounds [60 x i8], [60 x i8]* %42, i32 0, i32 5
  store i8 93, i8* %48, align 1
  %49 = bitcast [60 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 60, i1 false)
  %50 = bitcast i8* %49 to [60 x i8]*
  %51 = getelementptr inbounds [60 x i8], [60 x i8]* %50, i32 0, i32 0
  store i8 91, i8* %51, align 16
  %52 = getelementptr inbounds [60 x i8], [60 x i8]* %50, i32 0, i32 1
  store i8 78, i8* %52, align 1
  %53 = getelementptr inbounds [60 x i8], [60 x i8]* %50, i32 0, i32 2
  store i8 111, i8* %53, align 2
  %54 = getelementptr inbounds [60 x i8], [60 x i8]* %50, i32 0, i32 3
  store i8 110, i8* %54, align 1
  %55 = getelementptr inbounds [60 x i8], [60 x i8]* %50, i32 0, i32 4
  store i8 101, i8* %55, align 4
  %56 = getelementptr inbounds [60 x i8], [60 x i8]* %50, i32 0, i32 5
  store i8 93, i8* %56, align 1
  %57 = bitcast [32 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.print_user.acexpire, i32 0, i32 0), i64 32, i1 false)
  %58 = bitcast [32 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %58, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.print_user.pwexpire, i32 0, i32 0), i64 32, i1 false)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %3
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.passwd*, %struct.passwd** %5, align 8
  %66 = call i8* @pw_make_v7(%struct.passwd* %65)
  br label %70

67:                                               ; preds = %61
  %68 = load %struct.passwd*, %struct.passwd** %5, align 8
  %69 = call i8* @pw_make(%struct.passwd* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i8* [ %66, %64 ], [ %69, %67 ]
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %76, i32* %4, align 4
  br label %258

77:                                               ; preds = %3
  %78 = load %struct.passwd*, %struct.passwd** %5, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  %81 = call i8* @strtok(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %81, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %77
  %84 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @strlcpy(i8* %84, i8* %85, i32 60)
  %87 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %87, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @strlcpy(i8* %90, i8* %91, i32 60)
  %93 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %93, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = getelementptr inbounds [60 x i8], [60 x i8]* %13, i64 0, i64 0
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @strlcpy(i8* %96, i8* %97, i32 60)
  %99 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %99, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = getelementptr inbounds [60 x i8], [60 x i8]* %14, i64 0, i64 0
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @strlcpy(i8* %102, i8* %103, i32 60)
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %83
  br label %108

108:                                              ; preds = %107, %77
  %109 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %110 = call i8* @strchr(i8* %109, i8 signext 38)
  store i8* %110, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load %struct.passwd*, %struct.passwd** %5, align 8
  %114 = getelementptr inbounds %struct.passwd, %struct.passwd* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strlen(i8* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @strlen(i8* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @memmove(i8* %122, i8* %124, i32 %125)
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.passwd*, %struct.passwd** %5, align 8
  %129 = getelementptr inbounds %struct.passwd, %struct.passwd* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @memmove(i8* %127, i8* %130, i32 %131)
  %133 = load i8*, i8** %9, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i64 @toupper(i8 zeroext %134)
  %136 = trunc i64 %135 to i8
  %137 = load i8*, i8** %9, align 8
  store i8 %136, i8* %137, align 1
  br label %138

138:                                              ; preds = %112, %108
  %139 = load %struct.passwd*, %struct.passwd** %5, align 8
  %140 = getelementptr inbounds %struct.passwd, %struct.passwd* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.passwd*, %struct.passwd** %5, align 8
  %145 = getelementptr inbounds %struct.passwd, %struct.passwd* %144, i32 0, i32 1
  %146 = call %struct.tm* @localtime(i64* %145)
  store %struct.tm* %146, %struct.tm** %17, align 8
  %147 = icmp ne %struct.tm* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %150 = load %struct.tm*, %struct.tm** %17, align 8
  %151 = call i32 @strftime(i8* %149, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %150)
  br label %152

152:                                              ; preds = %148, %143, %138
  %153 = load %struct.passwd*, %struct.passwd** %5, align 8
  %154 = getelementptr inbounds %struct.passwd, %struct.passwd* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.passwd*, %struct.passwd** %5, align 8
  %159 = getelementptr inbounds %struct.passwd, %struct.passwd* %158, i32 0, i32 2
  %160 = call %struct.tm* @localtime(i64* %159)
  store %struct.tm* %160, %struct.tm** %17, align 8
  %161 = icmp ne %struct.tm* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %164 = load %struct.tm*, %struct.tm** %17, align 8
  %165 = call i32 @strftime(i8* %163, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %164)
  br label %166

166:                                              ; preds = %162, %157, %152
  %167 = load %struct.passwd*, %struct.passwd** %5, align 8
  %168 = getelementptr inbounds %struct.passwd, %struct.passwd* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.passwd*, %struct.passwd** %5, align 8
  %171 = getelementptr inbounds %struct.passwd, %struct.passwd* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = load %struct.group*, %struct.group** %10, align 8
  %175 = icmp ne %struct.group* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load %struct.group*, %struct.group** %10, align 8
  %178 = getelementptr inbounds %struct.group, %struct.group* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  br label %181

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %176
  %182 = phi i8* [ %179, %176 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %180 ]
  %183 = load %struct.passwd*, %struct.passwd** %5, align 8
  %184 = getelementptr inbounds %struct.passwd, %struct.passwd* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %188 = load %struct.passwd*, %struct.passwd** %5, align 8
  %189 = getelementptr inbounds %struct.passwd, %struct.passwd* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.passwd*, %struct.passwd** %5, align 8
  %192 = getelementptr inbounds %struct.passwd, %struct.passwd* %191, i32 0, i32 4
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.passwd*, %struct.passwd** %5, align 8
  %195 = getelementptr inbounds %struct.passwd, %struct.passwd* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %198 = getelementptr inbounds [60 x i8], [60 x i8]* %13, i64 0, i64 0
  %199 = getelementptr inbounds [60 x i8], [60 x i8]* %14, i64 0, i64 0
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %201 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %202 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.4, i64 0, i64 0), i8* %169, i8* %173, i8* %182, i8* %186, i8* %187, i8* %190, i8* %193, i8* %196, i8* %197, i8* %198, i8* %199, i8* %200, i8* %201)
  %203 = call i32 (...) @SETGRENT()
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %249, %181
  %205 = call %struct.group* (...) @GETGRENT()
  store %struct.group* %205, %struct.group** %10, align 8
  %206 = icmp ne %struct.group* %205, null
  br i1 %206, label %207, label %250

207:                                              ; preds = %204
  store i32 0, i32* %20, align 4
  %208 = load %struct.group*, %struct.group** %10, align 8
  %209 = getelementptr inbounds %struct.group, %struct.group* %208, i32 0, i32 1
  %210 = load i32**, i32*** %209, align 8
  %211 = icmp ne i32** %210, null
  br i1 %211, label %212, label %249

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %245, %212
  %214 = load %struct.group*, %struct.group** %10, align 8
  %215 = getelementptr inbounds %struct.group, %struct.group* %214, i32 0, i32 1
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %248

222:                                              ; preds = %213
  %223 = load %struct.group*, %struct.group** %10, align 8
  %224 = getelementptr inbounds %struct.group, %struct.group* %223, i32 0, i32 1
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.passwd*, %struct.passwd** %5, align 8
  %231 = getelementptr inbounds %struct.passwd, %struct.passwd* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @strcmp(i32* %229, i8* %232)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %222
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  %238 = icmp eq i32 %236, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %241 = load %struct.group*, %struct.group** %10, align 8
  %242 = getelementptr inbounds %struct.group, %struct.group* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i8*, ...) @printf(i8* %240, i8* %243)
  br label %248

245:                                              ; preds = %222
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %20, align 4
  br label %213

248:                                              ; preds = %235, %213
  br label %249

249:                                              ; preds = %248, %207
  br label %204

250:                                              ; preds = %204
  %251 = call i32 (...) @ENDGRENT()
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %256 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %255)
  %257 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %250, %70
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local %struct.group* @GETGRGID(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @pw_make_v7(%struct.passwd*) #1

declare dso_local i8* @pw_make(%struct.passwd*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok(i32*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @toupper(i8 zeroext) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @SETGRENT(...) #1

declare dso_local %struct.group* @GETGRENT(...) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @ENDGRENT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
