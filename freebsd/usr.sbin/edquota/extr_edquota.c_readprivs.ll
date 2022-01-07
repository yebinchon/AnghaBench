; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_readprivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_readprivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { i32, %struct.TYPE_2__, %struct.quotause*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i8*, i8*, i64, i64 }
%struct.dqblk = type { i64, i64, i64, i64, i8*, i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't re-read temp file!!\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: bad format\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %s: bad format\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c" in use: %ju%c, limits (soft = %ju%c, hard = %ju%c)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c" in use: %ju%c, limits (soft = %ju%c hard = %ju%c\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c" in use: %ju%c, limits (soft = %ju%c hard = %ju%c)\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c" in use: %ju%c, limits (soft = %ju%c, hard = %ju%c\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s:%s: bad format\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"current block count\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"block soft limit\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"block hard limit\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c" in use: %ju%c limits (soft = %ju%c, hard = %ju%c)\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c" in use: %ju%c limits (soft = %ju%c hard = %ju%c\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c" in use: %ju%c limits (soft = %ju%c hard = %ju%c)\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c" in use: %ju%c limits (soft = %ju%c, hard = %ju%c\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"%s: %s: bad format cnt %d\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"current inode count\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"inode soft limit\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"inode hard limit\00", align 1
@FOUND = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"%s: cannot change current allocation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readprivs(%struct.quotause* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quotause*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.quotause*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dqblk, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.quotause* %0, %struct.quotause** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load i32, i32* @BUFSIZ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

35:                                               ; preds = %2
  %36 = trunc i64 %23 to i32
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @fgets(i8* %25, i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %291, %35
  %40 = trunc i64 %23 to i32
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @fgets(i8* %25, i32 %40, i32* %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = trunc i64 %27 to i32
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @fgets(i8* %28, i32 %45, i32* %46)
  %48 = icmp ne i32* %47, null
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %292

51:                                               ; preds = %49
  %52 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %52, i8** %17, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

56:                                               ; preds = %51
  %57 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %57, i8** %15, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i8*, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %66)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

68:                                               ; preds = %56
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @sscanf(i8* %69, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 6
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @sscanf(i8* %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 6
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @sscanf(i8* %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 6
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @sscanf(i8* %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 6
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** %17, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %93)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = load i8, i8* %13, align 1
  %98 = call i8* @cvtblkval(i32 %96, i8 signext %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %99 = ptrtoint i8* %98 to i64
  %100 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i8, i8* %12, align 1
  %103 = call i8* @cvtblkval(i32 %101, i8 signext %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %104 = ptrtoint i8* %103 to i64
  %105 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i8, i8* %11, align 1
  %108 = call i8* @cvtblkval(i32 %106, i8 signext %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 5
  store i8* %108, i8** %109, align 8
  %110 = call i8* @strtok(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %110, i8** %15, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %113, i8* %28)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

115:                                              ; preds = %95
  %116 = load i8*, i8** %15, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 7
  %118 = call i32 @sscanf(i8* %117, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 6
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  %124 = call i32 @sscanf(i8* %123, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 6
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i8*, i8** %15, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 7
  %131 = call i32 @sscanf(i8* %130, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 6
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i8*, i8** %15, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 7
  %138 = call i32 @sscanf(i8* %137, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32* %10, i8* %13, i32* %9, i8* %12, i32* %8, i8* %11)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 6
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i8*, i8** %17, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 7
  %146 = load i32, i32* %14, align 4
  %147 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %143, i8* %145, i32 %146)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

148:                                              ; preds = %139
  %149 = load i32, i32* %10, align 4
  %150 = load i8, i8* %13, align 1
  %151 = call i8* @cvtinoval(i32 %149, i8 signext %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %152 = ptrtoint i8* %151 to i64
  %153 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 2
  store i64 %152, i64* %153, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i8, i8* %12, align 1
  %156 = call i8* @cvtinoval(i32 %154, i8 signext %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %157 = ptrtoint i8* %156 to i64
  %158 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 3
  store i64 %157, i64* %158, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i8, i8* %11, align 1
  %161 = call i8* @cvtinoval(i32 %159, i8 signext %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %162 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 4
  store i8* %161, i8** %162, align 8
  %163 = load %struct.quotause*, %struct.quotause** %4, align 8
  store %struct.quotause* %163, %struct.quotause** %6, align 8
  br label %164

164:                                              ; preds = %287, %148
  %165 = load %struct.quotause*, %struct.quotause** %6, align 8
  %166 = icmp ne %struct.quotause* %165, null
  br i1 %166, label %167, label %291

167:                                              ; preds = %164
  %168 = load i8*, i8** %17, align 8
  %169 = load %struct.quotause*, %struct.quotause** %6, align 8
  %170 = getelementptr inbounds %struct.quotause, %struct.quotause* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @strcmp(i8* %168, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %287

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %175
  %180 = load %struct.quotause*, %struct.quotause** %6, align 8
  %181 = getelementptr inbounds %struct.quotause, %struct.quotause* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp sge i64 %183, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %179
  %188 = load %struct.quotause*, %struct.quotause** %6, align 8
  %189 = getelementptr inbounds %struct.quotause, %struct.quotause* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = load %struct.quotause*, %struct.quotause** %6, align 8
  %195 = getelementptr inbounds %struct.quotause, %struct.quotause* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.quotause*, %struct.quotause** %6, align 8
  %199 = getelementptr inbounds %struct.quotause, %struct.quotause* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %197, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %193, %187
  %204 = load %struct.quotause*, %struct.quotause** %6, align 8
  %205 = getelementptr inbounds %struct.quotause, %struct.quotause* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 7
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %203, %193, %179, %175
  %208 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %207
  %212 = load %struct.quotause*, %struct.quotause** %6, align 8
  %213 = getelementptr inbounds %struct.quotause, %struct.quotause* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp sge i64 %215, %217
  br i1 %218, label %219, label %239

219:                                              ; preds = %211
  %220 = load %struct.quotause*, %struct.quotause** %6, align 8
  %221 = getelementptr inbounds %struct.quotause, %struct.quotause* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %235, label %225

225:                                              ; preds = %219
  %226 = load %struct.quotause*, %struct.quotause** %6, align 8
  %227 = getelementptr inbounds %struct.quotause, %struct.quotause* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.quotause*, %struct.quotause** %6, align 8
  %231 = getelementptr inbounds %struct.quotause, %struct.quotause* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp slt i64 %229, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %225, %219
  %236 = load %struct.quotause*, %struct.quotause** %6, align 8
  %237 = getelementptr inbounds %struct.quotause, %struct.quotause* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 6
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %235, %225, %211, %207
  %240 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.quotause*, %struct.quotause** %6, align 8
  %243 = getelementptr inbounds %struct.quotause, %struct.quotause* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  store i64 %241, i64* %244, align 8
  %245 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 5
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.quotause*, %struct.quotause** %6, align 8
  %248 = getelementptr inbounds %struct.quotause, %struct.quotause* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 5
  store i8* %246, i8** %249, align 8
  %250 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.quotause*, %struct.quotause** %6, align 8
  %253 = getelementptr inbounds %struct.quotause, %struct.quotause* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 3
  store i64 %251, i64* %254, align 8
  %255 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 4
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.quotause*, %struct.quotause** %6, align 8
  %258 = getelementptr inbounds %struct.quotause, %struct.quotause* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 4
  store i8* %256, i8** %259, align 8
  %260 = load i32, i32* @FOUND, align 4
  %261 = load %struct.quotause*, %struct.quotause** %6, align 8
  %262 = getelementptr inbounds %struct.quotause, %struct.quotause* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load i64, i64* @hflag, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %283, label %267

267:                                              ; preds = %239
  %268 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.quotause*, %struct.quotause** %6, align 8
  %271 = getelementptr inbounds %struct.quotause, %struct.quotause* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %269, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %16, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.quotause*, %struct.quotause** %6, align 8
  %279 = getelementptr inbounds %struct.quotause, %struct.quotause* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %277, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %275, %239
  br label %291

284:                                              ; preds = %275, %267
  %285 = load i8*, i8** %17, align 8
  %286 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8* %285)
  br label %291

287:                                              ; preds = %174
  %288 = load %struct.quotause*, %struct.quotause** %6, align 8
  %289 = getelementptr inbounds %struct.quotause, %struct.quotause* %288, i32 0, i32 2
  %290 = load %struct.quotause*, %struct.quotause** %289, align 8
  store %struct.quotause* %290, %struct.quotause** %6, align 8
  br label %164

291:                                              ; preds = %284, %283, %164
  br label %39

292:                                              ; preds = %49
  %293 = load i32*, i32** %7, align 8
  %294 = call i32 @fclose(i32* %293)
  %295 = load %struct.quotause*, %struct.quotause** %4, align 8
  store %struct.quotause* %295, %struct.quotause** %6, align 8
  br label %296

296:                                              ; preds = %326, %292
  %297 = load %struct.quotause*, %struct.quotause** %6, align 8
  %298 = icmp ne %struct.quotause* %297, null
  br i1 %298, label %299, label %330

299:                                              ; preds = %296
  %300 = load %struct.quotause*, %struct.quotause** %6, align 8
  %301 = getelementptr inbounds %struct.quotause, %struct.quotause* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @FOUND, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %299
  %307 = load i32, i32* @FOUND, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.quotause*, %struct.quotause** %6, align 8
  %310 = getelementptr inbounds %struct.quotause, %struct.quotause* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %326

313:                                              ; preds = %299
  %314 = load %struct.quotause*, %struct.quotause** %6, align 8
  %315 = getelementptr inbounds %struct.quotause, %struct.quotause* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 1
  store i64 0, i64* %316, align 8
  %317 = load %struct.quotause*, %struct.quotause** %6, align 8
  %318 = getelementptr inbounds %struct.quotause, %struct.quotause* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 5
  store i8* null, i8** %319, align 8
  %320 = load %struct.quotause*, %struct.quotause** %6, align 8
  %321 = getelementptr inbounds %struct.quotause, %struct.quotause* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 3
  store i64 0, i64* %322, align 8
  %323 = load %struct.quotause*, %struct.quotause** %6, align 8
  %324 = getelementptr inbounds %struct.quotause, %struct.quotause* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 4
  store i8* null, i8** %325, align 8
  br label %326

326:                                              ; preds = %313, %306
  %327 = load %struct.quotause*, %struct.quotause** %6, align 8
  %328 = getelementptr inbounds %struct.quotause, %struct.quotause* %327, i32 0, i32 2
  %329 = load %struct.quotause*, %struct.quotause** %328, align 8
  store %struct.quotause* %329, %struct.quotause** %6, align 8
  br label %296

330:                                              ; preds = %296
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %331

331:                                              ; preds = %330, %142, %112, %91, %59, %54, %33
  %332 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i32*, i8*, i32*, i8*) #2

declare dso_local i8* @cvtblkval(i32, i8 signext, i8*) #2

declare dso_local i8* @cvtinoval(i32, i8 signext, i8*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
