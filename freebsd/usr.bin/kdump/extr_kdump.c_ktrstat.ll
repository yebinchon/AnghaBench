; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.passwd = type { i8* }
%struct.group = type { i8* }
%struct.tm = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"struct stat {\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dev=%ju, ino=%ju, \00", align 1
@resolv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mode=0%jo, \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mode=%s, \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"nlink=%ju, \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"uid=%ju, \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"uid=\22%s\22, \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gid=%ju, \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gid=\22%s\22, \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"rdev=%ju, \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"atime=\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@TIME_FORMAT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c".%09ld, \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"mtime=\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ctime=\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"birthtime=\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"size=%jd, blksize=%ju, blocks=%jd, flags=0x%x\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@capgrp = common dso_local global i32* null, align 8
@cappwd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktrstat(%struct.stat* %0) #0 {
  %2 = alloca %struct.stat*, align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.tm*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = add nsw i32 %9, 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.stat*, %struct.stat** %2, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 14
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.stat*, %struct.stat** %2, align 8
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %22)
  %24 = load i32, i32* @resolv, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.stat*, %struct.stat** %2, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 12
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.stat*, %struct.stat** %2, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %37 = call i32 @strmode(i64 %35, i8* %36)
  %38 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.stat*, %struct.stat** %2, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @resolv, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store %struct.passwd* null, %struct.passwd** %6, align 8
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.stat*, %struct.stat** %2, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.passwd* @getpwuid(i64 %52)
  store %struct.passwd* %53, %struct.passwd** %6, align 8
  br label %54

54:                                               ; preds = %49, %48
  %55 = load %struct.passwd*, %struct.passwd** %6, align 8
  %56 = icmp eq %struct.passwd* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.stat*, %struct.stat** %2, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %68

63:                                               ; preds = %54
  %64 = load %struct.passwd*, %struct.passwd** %6, align 8
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* @resolv, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store %struct.group* null, %struct.group** %7, align 8
  br label %77

72:                                               ; preds = %68
  %73 = load %struct.stat*, %struct.stat** %2, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.group* @getgrgid(i64 %75)
  store %struct.group* %76, %struct.group** %7, align 8
  br label %77

77:                                               ; preds = %72, %71
  %78 = load %struct.group*, %struct.group** %7, align 8
  %79 = icmp eq %struct.group* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.stat*, %struct.stat** %2, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.group*, %struct.group** %7, align 8
  %88 = getelementptr inbounds %struct.group, %struct.group* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.stat*, %struct.stat** %2, align 8
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %98 = load i32, i32* @resolv, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91
  %101 = load %struct.stat*, %struct.stat** %2, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  br label %117

107:                                              ; preds = %91
  %108 = load %struct.stat*, %struct.stat** %2, align 8
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = call %struct.tm* @localtime(i64* %110)
  store %struct.tm* %111, %struct.tm** %8, align 8
  %112 = trunc i64 %11 to i32
  %113 = load i32, i32* @TIME_FORMAT, align 4
  %114 = load %struct.tm*, %struct.tm** %8, align 8
  %115 = call i32 @strftime(i8* %13, i32 %112, i32 %113, %struct.tm* %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %13)
  br label %117

117:                                              ; preds = %107, %100
  %118 = load %struct.stat*, %struct.stat** %2, align 8
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.stat*, %struct.stat** %2, align 8
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %127)
  br label %131

129:                                              ; preds = %117
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %123
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %133 = load i32, i32* @resolv, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load %struct.stat*, %struct.stat** %2, align 8
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  br label %152

142:                                              ; preds = %131
  %143 = load %struct.stat*, %struct.stat** %2, align 8
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = call %struct.tm* @localtime(i64* %145)
  store %struct.tm* %146, %struct.tm** %8, align 8
  %147 = trunc i64 %11 to i32
  %148 = load i32, i32* @TIME_FORMAT, align 4
  %149 = load %struct.tm*, %struct.tm** %8, align 8
  %150 = call i32 @strftime(i8* %13, i32 %147, i32 %148, %struct.tm* %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %13)
  br label %152

152:                                              ; preds = %142, %135
  %153 = load %struct.stat*, %struct.stat** %2, align 8
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.stat*, %struct.stat** %2, align 8
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %162)
  br label %166

164:                                              ; preds = %152
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %158
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %168 = load i32, i32* @resolv, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load %struct.stat*, %struct.stat** %2, align 8
  %172 = getelementptr inbounds %struct.stat, %struct.stat* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %175)
  br label %187

177:                                              ; preds = %166
  %178 = load %struct.stat*, %struct.stat** %2, align 8
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = call %struct.tm* @localtime(i64* %180)
  store %struct.tm* %181, %struct.tm** %8, align 8
  %182 = trunc i64 %11 to i32
  %183 = load i32, i32* @TIME_FORMAT, align 4
  %184 = load %struct.tm*, %struct.tm** %8, align 8
  %185 = call i32 @strftime(i8* %13, i32 %182, i32 %183, %struct.tm* %184)
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %13)
  br label %187

187:                                              ; preds = %177, %170
  %188 = load %struct.stat*, %struct.stat** %2, align 8
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load %struct.stat*, %struct.stat** %2, align 8
  %195 = getelementptr inbounds %struct.stat, %struct.stat* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  br label %201

199:                                              ; preds = %187
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %193
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %203 = load i32, i32* @resolv, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = load %struct.stat*, %struct.stat** %2, align 8
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %210)
  br label %222

212:                                              ; preds = %201
  %213 = load %struct.stat*, %struct.stat** %2, align 8
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = call %struct.tm* @localtime(i64* %215)
  store %struct.tm* %216, %struct.tm** %8, align 8
  %217 = trunc i64 %11 to i32
  %218 = load i32, i32* @TIME_FORMAT, align 4
  %219 = load %struct.tm*, %struct.tm** %8, align 8
  %220 = call i32 @strftime(i8* %13, i32 %217, i32 %218, %struct.tm* %219)
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %13)
  br label %222

222:                                              ; preds = %212, %205
  %223 = load %struct.stat*, %struct.stat** %2, align 8
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load %struct.stat*, %struct.stat** %2, align 8
  %230 = getelementptr inbounds %struct.stat, %struct.stat* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %232)
  br label %236

234:                                              ; preds = %222
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %228
  %237 = load %struct.stat*, %struct.stat** %2, align 8
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = load %struct.stat*, %struct.stat** %2, align 8
  %242 = getelementptr inbounds %struct.stat, %struct.stat* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.stat*, %struct.stat** %2, align 8
  %246 = getelementptr inbounds %struct.stat, %struct.stat* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = load %struct.stat*, %struct.stat** %2, align 8
  %250 = getelementptr inbounds %struct.stat, %struct.stat* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %240, i32 %244, i32 %248, i32 %251)
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %254 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %254)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strmode(i64, i8*) #2

declare dso_local %struct.passwd* @getpwuid(i64) #2

declare dso_local %struct.group* @getgrgid(i64) #2

declare dso_local %struct.tm* @localtime(i64*) #2

declare dso_local i32 @strftime(i8*, i32, i32, %struct.tm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
