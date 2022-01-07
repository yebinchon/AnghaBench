; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Tau-PCI-L\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Tau-PCI4\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Tau-PCI\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Tau-PCI4-E1/X\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Tau-PCI-E1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Tau-PCI4-G703/X\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Tau-PCI-G703\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Tau-PCI4-2E1/X\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Tau-PCI-2E1\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Tau-PCI-4E1\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Tau-PCI-E3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Tau-PCI-HSSI\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Tau-PCI-T3\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Tau-PCI-STS-1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @cp_init(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = trunc i32 %14 to i8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8 %15, i8* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 11
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = bitcast i8* %25 to i64*
  store volatile i64 262144, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1032
  %31 = bitcast i8* %30 to i16*
  store volatile i16 -1, i16* %31, align 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1024
  %36 = bitcast i8* %35 to i16*
  store volatile i16 0, i16* %36, align 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 4, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 9
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i32 192, i32* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i32 38, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = call i32 @l529(%struct.TYPE_8__* %45)
  switch i32 %46, label %81 [
    i32 0, label %47
    i32 1, label %61
    i32 2, label %80
    i32 3, label %80
  ]

47:                                               ; preds = %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 32
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call zeroext i16 @l521(%struct.TYPE_8__* %52)
  store i16 %53, i16* %9, align 2
  %54 = icmp ne i16 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %58

56:                                               ; preds = %47
  %57 = load i16, i16* %9, align 2
  store i16 %57, i16* %4, align 2
  br label %294

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i32 30, i32* %60, align 4
  br label %82

61:                                               ; preds = %3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = call i32 @u(%struct.TYPE_8__* %62, i32 0)
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %8, align 1
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 56
  %68 = icmp ne i32 %67, 40
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 128
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = call i32 @u(%struct.TYPE_8__* %73, i32 0)
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %69, %61
  br label %79

78:                                               ; preds = %69
  store i16 -1, i16* %4, align 2
  br label %294

79:                                               ; preds = %77
  br label %82

80:                                               ; preds = %3, %3
  br label %81

81:                                               ; preds = %3, %80
  store i16 -1, i16* %4, align 2
  br label %294

82:                                               ; preds = %79, %58
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = call i32 @u(%struct.TYPE_8__* %83, i32 0)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %8, align 1
  %86 = load i8, i8* %8, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 56
  switch i32 %88, label %89 [
    i32 56, label %96
    i32 8, label %134
    i32 16, label %155
    i32 24, label %176
    i32 32, label %197
    i32 40, label %204
    i32 48, label %211
  ]

89:                                               ; preds = %82
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  store i32 0, i32* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @strcpy(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %218

96:                                               ; preds = %82
  %97 = load i8, i8* %8, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 64
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = call i32 @u(%struct.TYPE_8__* %100, i32 0)
  %102 = and i32 %101, 64
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %112

105:                                              ; preds = %96
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  store i32 12, i32* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strcpy(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %133

112:                                              ; preds = %104
  %113 = load i8, i8* %8, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 64
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %125

118:                                              ; preds = %112
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 5
  store i32 6, i32* %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @strcpy(i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %132

125:                                              ; preds = %117
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 5
  store i32 1, i32* %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @strcpy(i32 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %125, %118
  br label %133

133:                                              ; preds = %132, %105
  br label %218

134:                                              ; preds = %82
  %135 = load i8, i8* %8, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 64
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %147

140:                                              ; preds = %134
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 5
  store i32 10, i32* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @strcpy(i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %154

147:                                              ; preds = %139
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  store i32 5, i32* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @strcpy(i32 %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %154

154:                                              ; preds = %147, %140
  br label %218

155:                                              ; preds = %82
  %156 = load i8, i8* %8, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 64
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  br label %168

161:                                              ; preds = %155
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  store i32 7, i32* %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @strcpy(i32 %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %175

168:                                              ; preds = %160
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 5
  store i32 4, i32* %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @strcpy(i32 %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %175

175:                                              ; preds = %168, %161
  br label %218

176:                                              ; preds = %82
  %177 = load i8, i8* %8, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 64
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  br label %189

182:                                              ; preds = %176
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  store i32 10, i32* %184, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @strcpy(i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %196

189:                                              ; preds = %181
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 5
  store i32 9, i32* %191, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @strcpy(i32 %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %196

196:                                              ; preds = %189, %182
  br label %218

197:                                              ; preds = %82
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 5
  store i32 11, i32* %199, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @strcpy(i32 %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %218

204:                                              ; preds = %82
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 5
  store i32 2, i32* %206, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @strcpy(i32 %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %218

211:                                              ; preds = %82
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 5
  store i32 3, i32* %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @strcpy(i32 %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %218

218:                                              ; preds = %211, %204, %197, %196, %175, %154, %133, %89
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  br label %259

224:                                              ; preds = %218
  %225 = load i8, i8* %8, align 1
  %226 = zext i8 %225 to i32
  %227 = and i32 %226, 6
  switch i32 %227, label %228 [
    i32 6, label %229
    i32 4, label %236
    i32 2, label %247
  ]

228:                                              ; preds = %224
  br label %258

229:                                              ; preds = %224
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 7
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  store i32 4, i32* %233, align 8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 6
  store i32 34368000, i32* %235, align 4
  br label %258

236:                                              ; preds = %224
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @strcpy(i32 %239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 7
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  store i32 7, i32* %244, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 6
  store i32 44736000, i32* %246, align 4
  br label %258

247:                                              ; preds = %224
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @strcpy(i32 %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 7
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  store i32 8, i32* %255, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 6
  store i32 51840000, i32* %257, align 4
  br label %258

258:                                              ; preds = %247, %236, %229, %228
  br label %271

259:                                              ; preds = %223
  %260 = load i8, i8* %8, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %261, 6
  switch i32 %262, label %263 [
    i32 6, label %264
    i32 4, label %267
  ]

263:                                              ; preds = %259
  br label %270

264:                                              ; preds = %259
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 6
  store i32 32768000, i32* %266, align 4
  br label %270

267:                                              ; preds = %259
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 6
  store i32 16384000, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %264, %263
  br label %271

271:                                              ; preds = %270, %258
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 7
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  store %struct.TYPE_9__* %274, %struct.TYPE_9__** %10, align 8
  br label %275

275:                                              ; preds = %284, %271
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 7
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i64 4
  %281 = icmp ult %struct.TYPE_9__* %276, %280
  br i1 %281, label %283, label %282

282:                                              ; preds = %275
  br label %293

283:                                              ; preds = %275
  br label %287

284:                                              ; preds = %287
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 1
  store %struct.TYPE_9__* %286, %struct.TYPE_9__** %10, align 8
  br label %275

287:                                              ; preds = %283
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  store %struct.TYPE_8__* %288, %struct.TYPE_8__** %290, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %292 = call i32 @l189(%struct.TYPE_9__* %291)
  br label %284

293:                                              ; preds = %282
  store i16 0, i16* %4, align 2
  br label %294

294:                                              ; preds = %293, %81, %78, %56
  %295 = load i16, i16* %4, align 2
  ret i16 %295
}

declare dso_local i32 @l529(%struct.TYPE_8__*) #1

declare dso_local zeroext i16 @l521(%struct.TYPE_8__*) #1

declare dso_local i32 @u(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @l189(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
