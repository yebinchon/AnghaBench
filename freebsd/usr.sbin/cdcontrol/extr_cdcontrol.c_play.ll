; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_play.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i8, i8 }
%struct.ioc_toc_header = type { i32, i32 }

@fd = common dso_local global i32 0, align 4
@CDIOREADTOCHEADER = common dso_local global i32 0, align 4
@msf = common dso_local global i64 0, align 8
@toc_buffer = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"#%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%d %d:%d.%d %d %d:%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%d %d:%d %d %d:%d.%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%d %d:%d.%d %d %d:%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%d %d:%d.%d %d:%d.%d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%d %d:%d.%d %d:%d\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%d %d:%d %d:%d.%d\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%d %d:%d.%d %d %d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%d %d:%d %d:%d\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%d %d:%d %d %d\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%d %d:%d.%d %d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%d %d:%d %d\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%d %d:%d.%d\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%d %d:%d\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Track %d is not that long.\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"The playing time of the disc is not that long.\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"%d:%d.%d%d:%d.%d\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%d:%d.%d%d:%d\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"%d:%d%d:%d.%d\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%d:%d.%d\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%d:%d%d:%d\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%d.%d%d.%d\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%d.%d%d\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%d%d.%d\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"invalid command arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ioc_toc_header, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %24 = load i32, i32* @fd, align 4
  %25 = load i32, i32* @CDIOREADTOCHEADER, align 4
  %26 = call i32 @ioctl(i32 %24, i32 %25, %struct.ioc_toc_header* %4)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %721

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.ioc_toc_header, %struct.ioc_toc_header* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ioc_toc_header, %struct.ioc_toc_header* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @read_toc_entrys(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %721

48:                                               ; preds = %31
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %95, label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* @msf, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i8, i8* %73, align 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i8, i8* %81, align 2
  %83 = call i32 @msf2lba(i8 zeroext %66, i8 zeroext %74, i8 zeroext %82)
  %84 = call i32 @play_blocks(i32 0, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %721

85:                                               ; preds = %55
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ntohl(i32 %92)
  %94 = call i32 @play_blocks(i32 0, i32 %93)
  store i32 %94, i32* %2, align 4
  br label %721

95:                                               ; preds = %51
  %96 = load i8*, i8** %3, align 8
  %97 = call i64 @strchr(i8* %96, i8 signext 35)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %158

99:                                               ; preds = %95
  store i32 0, i32* %12, align 4
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 (i8*, i8*, ...) @sscanf(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  %102 = icmp ne i32 2, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 (i8*, i8*, ...) @sscanf(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %106 = icmp ne i32 1, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %719

108:                                              ; preds = %103, %99
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %154

111:                                              ; preds = %108
  %112 = load i64, i64* @msf, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %111
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i8, i8* %129, align 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i8, i8* %137, align 2
  %139 = call i32 @msf2lba(i8 zeroext %122, i8 zeroext %130, i8 zeroext %138)
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %12, align 4
  br label %153

142:                                              ; preds = %111
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ntohl(i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %142, %114
  br label %154

154:                                              ; preds = %153, %108
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @play_blocks(i32 %155, i32 %156)
  store i32 %157, i32* %2, align 4
  br label %721

158:                                              ; preds = %95
  %159 = load i8*, i8** %3, align 8
  %160 = call i64 @strchr(i8* %159, i8 signext 58)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %683

162:                                              ; preds = %158
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 (i8*, i8*, ...) @sscanf(i8* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19, i32* %14, i32* %16, i32* %18, i32* %20)
  %165 = icmp eq i32 8, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %228

167:                                              ; preds = %162
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 (i8*, i8*, ...) @sscanf(i8* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %14, i32* %16, i32* %18, i32* %20)
  %170 = icmp eq i32 7, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %228

172:                                              ; preds = %167
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = call i32 (i8*, i8*, ...) @sscanf(i8* %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19, i32* %14, i32* %16, i32* %18)
  %175 = icmp eq i32 7, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %228

177:                                              ; preds = %172
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %178 = load i8*, i8** %3, align 8
  %179 = call i32 (i8*, i8*, ...) @sscanf(i8* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19, i32* %16, i32* %18, i32* %20)
  %180 = icmp eq i32 7, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %228

182:                                              ; preds = %177
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %183 = load i8*, i8** %3, align 8
  %184 = call i32 (i8*, i8*, ...) @sscanf(i8* %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19, i32* %16, i32* %18)
  %185 = icmp eq i32 6, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %228

187:                                              ; preds = %182
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %188 = load i8*, i8** %3, align 8
  %189 = call i32 (i8*, i8*, ...) @sscanf(i8* %188, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %16, i32* %18, i32* %20)
  %190 = icmp eq i32 6, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %228

192:                                              ; preds = %187
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %193 = load i8*, i8** %3, align 8
  %194 = call i32 (i8*, i8*, ...) @sscanf(i8* %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19, i32* %14, i32* %16)
  %195 = icmp eq i32 6, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %228

197:                                              ; preds = %192
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %198 = load i8*, i8** %3, align 8
  %199 = call i32 (i8*, i8*, ...) @sscanf(i8* %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %16, i32* %18)
  %200 = icmp eq i32 5, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %228

202:                                              ; preds = %197
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %203 = load i8*, i8** %3, align 8
  %204 = call i32 (i8*, i8*, ...) @sscanf(i8* %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %14, i32* %16)
  %205 = icmp eq i32 5, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %228

207:                                              ; preds = %202
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %208 = load i8*, i8** %3, align 8
  %209 = call i32 (i8*, i8*, ...) @sscanf(i8* %208, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19, i32* %14)
  %210 = icmp eq i32 5, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %228

212:                                              ; preds = %207
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %213 = load i8*, i8** %3, align 8
  %214 = call i32 (i8*, i8*, ...) @sscanf(i8* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %14)
  %215 = icmp eq i32 4, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %228

217:                                              ; preds = %212
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %218 = load i8*, i8** %3, align 8
  %219 = call i32 (i8*, i8*, ...) @sscanf(i8* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %13, i32* %15, i32* %17, i32* %19)
  %220 = icmp eq i32 4, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %228

222:                                              ; preds = %217
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %223 = load i8*, i8** %3, align 8
  %224 = call i32 (i8*, i8*, ...) @sscanf(i8* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* %13, i32* %15, i32* %17)
  %225 = icmp eq i32 3, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %228

227:                                              ; preds = %222
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %599

228:                                              ; preds = %226, %221, %216, %211, %206, %201, %196, %191, %186, %181, %176, %171, %166
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  store i32 1, i32* %13, align 4
  br label %239

232:                                              ; preds = %228
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp ugt i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load i32, i32* %5, align 4
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %236, %232
  br label %239

239:                                              ; preds = %238, %231
  %240 = load i32, i32* %13, align 4
  %241 = add i32 %240, -1
  store i32 %241, i32* %13, align 4
  %242 = load i64, i64* @msf, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %269

244:                                              ; preds = %239
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %246 = load i32, i32* %13, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i8, i8* %251, align 4
  store i8 %252, i8* %21, align 1
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %254 = load i32, i32* %13, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i8, i8* %259, align 1
  store i8 %260, i8* %22, align 1
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %262 = load i32, i32* %13, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  %268 = load i8, i8* %267, align 2
  store i8 %268, i8* %23, align 1
  br label %279

269:                                              ; preds = %239
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %271 = load i32, i32* %13, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ntohl(i32 %276)
  %278 = call i32 @lba2msf(i32 %277, i8* %21, i8* %22, i8* %23)
  br label %279

279:                                              ; preds = %269, %244
  %280 = load i32, i32* %15, align 4
  %281 = load i8, i8* %21, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp ugt i32 %280, %282
  br i1 %283, label %304, label %284

284:                                              ; preds = %279
  %285 = load i32, i32* %15, align 4
  %286 = load i8, i8* %21, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %285, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %284
  %290 = load i32, i32* %17, align 4
  %291 = load i8, i8* %22, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp ugt i32 %290, %292
  br i1 %293, label %304, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* %17, align 4
  %296 = load i8, i8* %22, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load i32, i32* %19, align 4
  %301 = load i8, i8* %23, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp ugt i32 %300, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %299, %289, %279
  %305 = load i32, i32* %13, align 4
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %305)
  store i32 0, i32* %2, align 4
  br label %721

307:                                              ; preds = %299, %294, %284
  %308 = load i8, i8* %23, align 1
  %309 = zext i8 %308 to i32
  %310 = load i32, i32* %19, align 4
  %311 = add i32 %310, %309
  store i32 %311, i32* %19, align 4
  %312 = load i32, i32* %19, align 4
  %313 = icmp uge i32 %312, 75
  br i1 %313, label %314, label %321

314:                                              ; preds = %307
  %315 = load i32, i32* %19, align 4
  %316 = udiv i32 %315, 75
  %317 = load i32, i32* %17, align 4
  %318 = add i32 %317, %316
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %19, align 4
  %320 = urem i32 %319, 75
  store i32 %320, i32* %19, align 4
  br label %321

321:                                              ; preds = %314, %307
  %322 = load i8, i8* %22, align 1
  %323 = zext i8 %322 to i32
  %324 = load i32, i32* %17, align 4
  %325 = add i32 %324, %323
  store i32 %325, i32* %17, align 4
  %326 = load i32, i32* %17, align 4
  %327 = icmp uge i32 %326, 60
  br i1 %327, label %328, label %335

328:                                              ; preds = %321
  %329 = load i32, i32* %17, align 4
  %330 = udiv i32 %329, 60
  %331 = load i32, i32* %15, align 4
  %332 = add i32 %331, %330
  store i32 %332, i32* %15, align 4
  %333 = load i32, i32* %17, align 4
  %334 = urem i32 %333, 60
  store i32 %334, i32* %17, align 4
  br label %335

335:                                              ; preds = %328, %321
  %336 = load i8, i8* %21, align 1
  %337 = zext i8 %336 to i32
  %338 = load i32, i32* %15, align 4
  %339 = add i32 %338, %337
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* %14, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %432, label %342

342:                                              ; preds = %335
  %343 = load i32, i32* %16, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %342
  %346 = load i32, i32* %18, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %345
  %349 = load i32, i32* %20, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %382

351:                                              ; preds = %348, %345, %342
  %352 = load i32, i32* %13, align 4
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %19, align 4
  %354 = load i32, i32* %20, align 4
  %355 = add i32 %354, %353
  store i32 %355, i32* %20, align 4
  %356 = load i32, i32* %20, align 4
  %357 = icmp uge i32 %356, 75
  br i1 %357, label %358, label %365

358:                                              ; preds = %351
  %359 = load i32, i32* %20, align 4
  %360 = udiv i32 %359, 75
  %361 = load i32, i32* %18, align 4
  %362 = add i32 %361, %360
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %20, align 4
  %364 = urem i32 %363, 75
  store i32 %364, i32* %20, align 4
  br label %365

365:                                              ; preds = %358, %351
  %366 = load i32, i32* %17, align 4
  %367 = load i32, i32* %18, align 4
  %368 = add i32 %367, %366
  store i32 %368, i32* %18, align 4
  %369 = load i32, i32* %18, align 4
  %370 = icmp ugt i32 %369, 60
  br i1 %370, label %371, label %378

371:                                              ; preds = %365
  %372 = load i32, i32* %18, align 4
  %373 = udiv i32 %372, 60
  %374 = load i32, i32* %16, align 4
  %375 = add i32 %374, %373
  store i32 %375, i32* %16, align 4
  %376 = load i32, i32* %18, align 4
  %377 = urem i32 %376, 60
  store i32 %377, i32* %18, align 4
  br label %378

378:                                              ; preds = %371, %365
  %379 = load i32, i32* %15, align 4
  %380 = load i32, i32* %16, align 4
  %381 = add i32 %380, %379
  store i32 %381, i32* %16, align 4
  br label %431

382:                                              ; preds = %348
  %383 = load i32, i32* %5, align 4
  store i32 %383, i32* %14, align 4
  %384 = load i64, i64* @msf, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %414

386:                                              ; preds = %382
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %388 = load i32, i32* %5, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = load i8, i8* %393, align 4
  %395 = zext i8 %394 to i32
  store i32 %395, i32* %16, align 4
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %397 = load i32, i32* %5, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 1
  %403 = load i8, i8* %402, align 1
  %404 = zext i8 %403 to i32
  store i32 %404, i32* %18, align 4
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %406 = load i32, i32* %5, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 2
  %412 = load i8, i8* %411, align 2
  %413 = zext i8 %412 to i32
  store i32 %413, i32* %20, align 4
  br label %430

414:                                              ; preds = %382
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %416 = load i32, i32* %5, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @ntohl(i32 %421)
  %423 = call i32 @lba2msf(i32 %422, i8* %21, i8* %22, i8* %23)
  %424 = load i8, i8* %21, align 1
  %425 = zext i8 %424 to i32
  store i32 %425, i32* %16, align 4
  %426 = load i8, i8* %22, align 1
  %427 = zext i8 %426 to i32
  store i32 %427, i32* %18, align 4
  %428 = load i8, i8* %23, align 1
  %429 = zext i8 %428 to i32
  store i32 %429, i32* %20, align 4
  br label %430

430:                                              ; preds = %414, %386
  br label %431

431:                                              ; preds = %430, %378
  br label %522

432:                                              ; preds = %335
  %433 = load i32, i32* %14, align 4
  %434 = load i32, i32* %5, align 4
  %435 = icmp ugt i32 %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %432
  %437 = load i32, i32* %5, align 4
  store i32 %437, i32* %14, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %521

438:                                              ; preds = %432
  %439 = load i32, i32* %16, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %447, label %441

441:                                              ; preds = %438
  %442 = load i32, i32* %18, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* %20, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %444, %441, %438
  %448 = load i32, i32* %14, align 4
  %449 = add i32 %448, -1
  store i32 %449, i32* %14, align 4
  br label %450

450:                                              ; preds = %447, %444
  %451 = load i64, i64* @msf, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %478

453:                                              ; preds = %450
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %455 = load i32, i32* %14, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i32 0, i32 0
  %461 = load i8, i8* %460, align 4
  store i8 %461, i8* %21, align 1
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %463 = load i32, i32* %14, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 1
  %469 = load i8, i8* %468, align 1
  store i8 %469, i8* %22, align 1
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %471 = load i32, i32* %14, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 2
  %477 = load i8, i8* %476, align 2
  store i8 %477, i8* %23, align 1
  br label %488

478:                                              ; preds = %450
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %480 = load i32, i32* %14, align 4
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @ntohl(i32 %485)
  %487 = call i32 @lba2msf(i32 %486, i8* %21, i8* %22, i8* %23)
  br label %488

488:                                              ; preds = %478, %453
  %489 = load i8, i8* %23, align 1
  %490 = zext i8 %489 to i32
  %491 = load i32, i32* %20, align 4
  %492 = add i32 %491, %490
  store i32 %492, i32* %20, align 4
  %493 = load i32, i32* %20, align 4
  %494 = icmp uge i32 %493, 75
  br i1 %494, label %495, label %502

495:                                              ; preds = %488
  %496 = load i32, i32* %20, align 4
  %497 = udiv i32 %496, 75
  %498 = load i32, i32* %18, align 4
  %499 = add i32 %498, %497
  store i32 %499, i32* %18, align 4
  %500 = load i32, i32* %20, align 4
  %501 = urem i32 %500, 75
  store i32 %501, i32* %20, align 4
  br label %502

502:                                              ; preds = %495, %488
  %503 = load i8, i8* %22, align 1
  %504 = zext i8 %503 to i32
  %505 = load i32, i32* %18, align 4
  %506 = add i32 %505, %504
  store i32 %506, i32* %18, align 4
  %507 = load i32, i32* %18, align 4
  %508 = icmp ugt i32 %507, 60
  br i1 %508, label %509, label %516

509:                                              ; preds = %502
  %510 = load i32, i32* %18, align 4
  %511 = udiv i32 %510, 60
  %512 = load i32, i32* %16, align 4
  %513 = add i32 %512, %511
  store i32 %513, i32* %16, align 4
  %514 = load i32, i32* %18, align 4
  %515 = urem i32 %514, 60
  store i32 %515, i32* %18, align 4
  br label %516

516:                                              ; preds = %509, %502
  %517 = load i8, i8* %21, align 1
  %518 = zext i8 %517 to i32
  %519 = load i32, i32* %16, align 4
  %520 = add i32 %519, %518
  store i32 %520, i32* %16, align 4
  br label %521

521:                                              ; preds = %516, %436
  br label %522

522:                                              ; preds = %521, %431
  %523 = load i64, i64* @msf, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %550

525:                                              ; preds = %522
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %527 = load i32, i32* %5, align 4
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 0
  %533 = load i8, i8* %532, align 4
  store i8 %533, i8* %21, align 1
  %534 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %535 = load i32, i32* %5, align 4
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %539, i32 0, i32 1
  %541 = load i8, i8* %540, align 1
  store i8 %541, i8* %22, align 1
  %542 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %543 = load i32, i32* %5, align 4
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %547, i32 0, i32 2
  %549 = load i8, i8* %548, align 2
  store i8 %549, i8* %23, align 1
  br label %560

550:                                              ; preds = %522
  %551 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %552 = load i32, i32* %5, align 4
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @ntohl(i32 %557)
  %559 = call i32 @lba2msf(i32 %558, i8* %21, i8* %22, i8* %23)
  br label %560

560:                                              ; preds = %550, %525
  %561 = load i32, i32* %14, align 4
  %562 = load i32, i32* %5, align 4
  %563 = icmp ult i32 %561, %562
  br i1 %563, label %564, label %591

564:                                              ; preds = %560
  %565 = load i32, i32* %16, align 4
  %566 = load i8, i8* %21, align 1
  %567 = zext i8 %566 to i32
  %568 = icmp ugt i32 %565, %567
  br i1 %568, label %589, label %569

569:                                              ; preds = %564
  %570 = load i32, i32* %16, align 4
  %571 = load i8, i8* %21, align 1
  %572 = zext i8 %571 to i32
  %573 = icmp eq i32 %570, %572
  br i1 %573, label %574, label %591

574:                                              ; preds = %569
  %575 = load i32, i32* %18, align 4
  %576 = load i8, i8* %22, align 1
  %577 = zext i8 %576 to i32
  %578 = icmp ugt i32 %575, %577
  br i1 %578, label %589, label %579

579:                                              ; preds = %574
  %580 = load i32, i32* %18, align 4
  %581 = load i8, i8* %22, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp eq i32 %580, %582
  br i1 %583, label %584, label %591

584:                                              ; preds = %579
  %585 = load i32, i32* %20, align 4
  %586 = load i8, i8* %23, align 1
  %587 = zext i8 %586 to i32
  %588 = icmp ugt i32 %585, %587
  br i1 %588, label %589, label %591

589:                                              ; preds = %584, %574, %564
  %590 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %721

591:                                              ; preds = %584, %579, %569, %560
  %592 = load i32, i32* %15, align 4
  %593 = load i32, i32* %17, align 4
  %594 = load i32, i32* %19, align 4
  %595 = load i32, i32* %16, align 4
  %596 = load i32, i32* %18, align 4
  %597 = load i32, i32* %20, align 4
  %598 = call i32 @play_msf(i32 %592, i32 %593, i32 %594, i32 %595, i32 %596, i32 %597)
  store i32 %598, i32* %2, align 4
  br label %721

599:                                              ; preds = %227
  %600 = load i8*, i8** %3, align 8
  %601 = call i32 (i8*, i8*, ...) @sscanf(i8* %600, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32* %15, i32* %17, i32* %19, i32* %16, i32* %18, i32* %20)
  %602 = icmp ne i32 6, %601
  br i1 %602, label %603, label %624

603:                                              ; preds = %599
  %604 = load i8*, i8** %3, align 8
  %605 = call i32 (i8*, i8*, ...) @sscanf(i8* %604, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32* %15, i32* %17, i32* %19, i32* %16, i32* %18)
  %606 = icmp ne i32 5, %605
  br i1 %606, label %607, label %624

607:                                              ; preds = %603
  %608 = load i8*, i8** %3, align 8
  %609 = call i32 (i8*, i8*, ...) @sscanf(i8* %608, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32* %15, i32* %17, i32* %16, i32* %18, i32* %20)
  %610 = icmp ne i32 5, %609
  br i1 %610, label %611, label %624

611:                                              ; preds = %607
  %612 = load i8*, i8** %3, align 8
  %613 = call i32 (i8*, i8*, ...) @sscanf(i8* %612, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32* %15, i32* %17, i32* %19)
  %614 = icmp ne i32 3, %613
  br i1 %614, label %615, label %624

615:                                              ; preds = %611
  %616 = load i8*, i8** %3, align 8
  %617 = call i32 (i8*, i8*, ...) @sscanf(i8* %616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32* %15, i32* %17, i32* %16, i32* %18)
  %618 = icmp ne i32 4, %617
  br i1 %618, label %619, label %624

619:                                              ; preds = %615
  %620 = load i8*, i8** %3, align 8
  %621 = call i32 (i8*, i8*, ...) @sscanf(i8* %620, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32* %15, i32* %17)
  %622 = icmp ne i32 2, %621
  br i1 %622, label %623, label %624

623:                                              ; preds = %619
  br label %719

624:                                              ; preds = %619, %615, %611, %607, %603, %599
  %625 = load i32, i32* %16, align 4
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %675

627:                                              ; preds = %624
  %628 = load i64, i64* @msf, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %658

630:                                              ; preds = %627
  %631 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %632 = load i32, i32* %5, align 4
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %631, i64 %633
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %636, i32 0, i32 0
  %638 = load i8, i8* %637, align 4
  %639 = zext i8 %638 to i32
  store i32 %639, i32* %16, align 4
  %640 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %641 = load i32, i32* %5, align 4
  %642 = zext i32 %641 to i64
  %643 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i64 %642
  %644 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %645, i32 0, i32 1
  %647 = load i8, i8* %646, align 1
  %648 = zext i8 %647 to i32
  store i32 %648, i32* %18, align 4
  %649 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %650 = load i32, i32* %5, align 4
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %649, i64 %651
  %653 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %654, i32 0, i32 2
  %656 = load i8, i8* %655, align 2
  %657 = zext i8 %656 to i32
  store i32 %657, i32* %20, align 4
  br label %674

658:                                              ; preds = %627
  %659 = load %struct.TYPE_6__*, %struct.TYPE_6__** @toc_buffer, align 8
  %660 = load i32, i32* %5, align 4
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %659, i64 %661
  %663 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  %666 = call i32 @ntohl(i32 %665)
  %667 = call i32 @lba2msf(i32 %666, i8* %21, i8* %22, i8* %23)
  %668 = load i8, i8* %21, align 1
  %669 = zext i8 %668 to i32
  store i32 %669, i32* %16, align 4
  %670 = load i8, i8* %22, align 1
  %671 = zext i8 %670 to i32
  store i32 %671, i32* %18, align 4
  %672 = load i8, i8* %23, align 1
  %673 = zext i8 %672 to i32
  store i32 %673, i32* %20, align 4
  br label %674

674:                                              ; preds = %658, %630
  br label %675

675:                                              ; preds = %674, %624
  %676 = load i32, i32* %15, align 4
  %677 = load i32, i32* %17, align 4
  %678 = load i32, i32* %19, align 4
  %679 = load i32, i32* %16, align 4
  %680 = load i32, i32* %18, align 4
  %681 = load i32, i32* %20, align 4
  %682 = call i32 @play_msf(i32 %676, i32 %677, i32 %678, i32 %679, i32 %680, i32 %681)
  store i32 %682, i32* %2, align 4
  br label %721

683:                                              ; preds = %158
  %684 = load i8*, i8** %3, align 8
  %685 = call i32 (i8*, i8*, ...) @sscanf(i8* %684, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32* %7, i32* %9, i32* %8, i32* %10)
  %686 = icmp ne i32 4, %685
  br i1 %686, label %687, label %708

687:                                              ; preds = %683
  %688 = load i8*, i8** %3, align 8
  %689 = call i32 (i8*, i8*, ...) @sscanf(i8* %688, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32* %7, i32* %9, i32* %8)
  %690 = icmp ne i32 3, %689
  br i1 %690, label %691, label %708

691:                                              ; preds = %687
  %692 = load i8*, i8** %3, align 8
  %693 = call i32 (i8*, i8*, ...) @sscanf(i8* %692, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32* %7, i32* %8, i32* %10)
  %694 = icmp ne i32 3, %693
  br i1 %694, label %695, label %708

695:                                              ; preds = %691
  %696 = load i8*, i8** %3, align 8
  %697 = call i32 (i8*, i8*, ...) @sscanf(i8* %696, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32* %7, i32* %9)
  %698 = icmp ne i32 2, %697
  br i1 %698, label %699, label %708

699:                                              ; preds = %695
  %700 = load i8*, i8** %3, align 8
  %701 = call i32 (i8*, i8*, ...) @sscanf(i8* %700, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32* %7, i32* %8)
  %702 = icmp ne i32 2, %701
  br i1 %702, label %703, label %708

703:                                              ; preds = %699
  %704 = load i8*, i8** %3, align 8
  %705 = call i32 (i8*, i8*, ...) @sscanf(i8* %704, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32* %7)
  %706 = icmp ne i32 1, %705
  br i1 %706, label %707, label %708

707:                                              ; preds = %703
  br label %719

708:                                              ; preds = %703, %699, %695, %691, %687, %683
  %709 = load i32, i32* %8, align 4
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %713

711:                                              ; preds = %708
  %712 = load i32, i32* %5, align 4
  store i32 %712, i32* %8, align 4
  br label %713

713:                                              ; preds = %711, %708
  %714 = load i32, i32* %7, align 4
  %715 = load i32, i32* %9, align 4
  %716 = load i32, i32* %8, align 4
  %717 = load i32, i32* %10, align 4
  %718 = call i32 @play_track(i32 %714, i32 %715, i32 %716, i32 %717)
  store i32 %718, i32* %2, align 4
  br label %721

719:                                              ; preds = %707, %623, %107
  %720 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %721

721:                                              ; preds = %719, %713, %675, %591, %589, %304, %154, %85, %58, %46, %29
  %722 = load i32, i32* %2, align 4
  ret i32 %722
}

declare dso_local i32 @ioctl(i32, i32, %struct.ioc_toc_header*) #1

declare dso_local i32 @read_toc_entrys(i32) #1

declare dso_local i32 @play_blocks(i32, i32) #1

declare dso_local i32 @msf2lba(i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @lba2msf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @play_msf(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @play_track(i32, i32, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
