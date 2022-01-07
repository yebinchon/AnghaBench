; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_UpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_UpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.datalink = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_20__, %struct.TYPE_27__, %struct.TYPE_17__, %struct.TYPE_19__, %struct.TYPE_25__, %struct.TYPE_18__*, %struct.TYPE_23__, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { i32*, i32*, i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@PHYS_DIRECT = common dso_local global i32 0, align 4
@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_BACKGROUND = common dso_local global i32 0, align 4
@PHYS_FOREGROUND = common dso_local global i32 0, align 4
@PHYS_DDIAL = common dso_local global i32 0, align 4
@TIMER_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: Entering terminal mode on %s\0D\0AType `~?' for help\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid dial script\0A\00", align 1
@LogCHAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Dial attempt %u of %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to open device (attempt %u of %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to open device\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@EX_REDIAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to open %s, pause %d seconds\0A\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Waiting for carrier\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Invalid login script\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Invalid hangup script\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Chat script failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*, i32*, i32*, i32*)* @datalink_UpdateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datalink_UpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdescriptor*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.datalink*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %16 = call %struct.datalink* @descriptor2datalink(%struct.fdescriptor* %15)
  store %struct.datalink* %16, %struct.datalink** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.datalink*, %struct.datalink** %12, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %489 [
    i32 136, label %20
    i32 129, label %49
    i32 138, label %289
    i32 134, label %365
    i32 135, label %365
    i32 131, label %365
    i32 132, label %365
    i32 128, label %470
    i32 133, label %470
    i32 139, label %470
    i32 137, label %470
    i32 130, label %470
  ]

20:                                               ; preds = %5
  %21 = load %struct.datalink*, %struct.datalink** %12, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PHYS_DIRECT, align 4
  %27 = load i32, i32* @PHYS_DEDICATED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PHYS_BACKGROUND, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PHYS_FOREGROUND, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PHYS_DDIAL, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %25, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %20
  %38 = load %struct.datalink*, %struct.datalink** %12, align 8
  %39 = getelementptr inbounds %struct.datalink, %struct.datalink* %38, i32 0, i32 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.datalink*, %struct.datalink** %12, align 8
  %46 = call i32 @datalink_Up(%struct.datalink* %45, i32 1, i32 1)
  br label %48

47:                                               ; preds = %37, %20
  br label %489

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %5, %48
  %50 = load %struct.datalink*, %struct.datalink** %12, align 8
  %51 = getelementptr inbounds %struct.datalink, %struct.datalink* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TIMER_RUNNING, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %288

57:                                               ; preds = %49
  %58 = load %struct.datalink*, %struct.datalink** %12, align 8
  %59 = getelementptr inbounds %struct.datalink, %struct.datalink* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.datalink*, %struct.datalink** %12, align 8
  %66 = getelementptr inbounds %struct.datalink, %struct.datalink* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.datalink*, %struct.datalink** %12, align 8
  %70 = getelementptr inbounds %struct.datalink, %struct.datalink* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = call i32 @physical_Open(%struct.TYPE_16__* %71)
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %169

74:                                               ; preds = %68
  %75 = load %struct.datalink*, %struct.datalink** %12, align 8
  %76 = load %struct.datalink*, %struct.datalink** %12, align 8
  %77 = getelementptr inbounds %struct.datalink, %struct.datalink* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.datalink*, %struct.datalink** %12, align 8
  %80 = getelementptr inbounds %struct.datalink, %struct.datalink* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.datalink*, i8*, i32, ...) @log_WritePrompts(%struct.datalink* %75, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load %struct.datalink*, %struct.datalink** %12, align 8
  %87 = getelementptr inbounds %struct.datalink, %struct.datalink* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %159

91:                                               ; preds = %74
  %92 = load %struct.datalink*, %struct.datalink** %12, align 8
  %93 = call i32 @datalink_NewState(%struct.datalink* %92, i32 135)
  %94 = load %struct.datalink*, %struct.datalink** %12, align 8
  %95 = getelementptr inbounds %struct.datalink, %struct.datalink* %94, i32 0, i32 5
  %96 = load %struct.datalink*, %struct.datalink** %12, align 8
  %97 = getelementptr inbounds %struct.datalink, %struct.datalink* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.datalink*, %struct.datalink** %12, align 8
  %102 = getelementptr inbounds %struct.datalink, %struct.datalink* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load %struct.datalink*, %struct.datalink** %12, align 8
  %110 = call i8* @datalink_ChoosePhoneNumber(%struct.datalink* %109)
  br label %112

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i8* [ %110, %108 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %111 ]
  %114 = call i32 @chat_Setup(%struct.TYPE_17__* %95, i32* %100, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @LogWARN, align 4
  %118 = call i32 (i32, i8*, ...) @log_Printf(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.datalink*, %struct.datalink** %12, align 8
  %121 = getelementptr inbounds %struct.datalink, %struct.datalink* %120, i32 0, i32 2
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PHYS_DDIAL, align 4
  %126 = load i32, i32* @PHYS_DEDICATED, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %158, label %130

130:                                              ; preds = %119
  %131 = load %struct.datalink*, %struct.datalink** %12, align 8
  %132 = getelementptr inbounds %struct.datalink, %struct.datalink* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %130
  %138 = load i32, i32* @LogCHAT, align 4
  %139 = load %struct.datalink*, %struct.datalink** %12, align 8
  %140 = getelementptr inbounds %struct.datalink, %struct.datalink* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.datalink*, %struct.datalink** %12, align 8
  %143 = getelementptr inbounds %struct.datalink, %struct.datalink* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.datalink*, %struct.datalink** %12, align 8
  %148 = getelementptr inbounds %struct.datalink, %struct.datalink* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %146, %150
  %152 = load %struct.datalink*, %struct.datalink** %12, align 8
  %153 = getelementptr inbounds %struct.datalink, %struct.datalink* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @log_Printf(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %151, i32 %156)
  br label %158

158:                                              ; preds = %137, %130, %119
  br label %162

159:                                              ; preds = %74
  %160 = load %struct.datalink*, %struct.datalink** %12, align 8
  %161 = call i32 @datalink_NewState(%struct.datalink* %160, i32 138)
  br label %162

162:                                              ; preds = %159, %158
  %163 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %163, i32* %164, i32* %165, i32* %166, i32* %167)
  store i32 %168, i32* %6, align 4
  br label %491

169:                                              ; preds = %68
  %170 = load %struct.datalink*, %struct.datalink** %12, align 8
  %171 = getelementptr inbounds %struct.datalink, %struct.datalink* %170, i32 0, i32 2
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PHYS_DDIAL, align 4
  %176 = load i32, i32* @PHYS_DEDICATED, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %205, label %180

180:                                              ; preds = %169
  %181 = load %struct.datalink*, %struct.datalink** %12, align 8
  %182 = getelementptr inbounds %struct.datalink, %struct.datalink* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %180
  %188 = load i32, i32* @LogCHAT, align 4
  %189 = load %struct.datalink*, %struct.datalink** %12, align 8
  %190 = getelementptr inbounds %struct.datalink, %struct.datalink* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.datalink*, %struct.datalink** %12, align 8
  %195 = getelementptr inbounds %struct.datalink, %struct.datalink* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %193, %197
  %199 = load %struct.datalink*, %struct.datalink** %12, align 8
  %200 = getelementptr inbounds %struct.datalink, %struct.datalink* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i32, i8*, ...) @log_Printf(i32 %188, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %203)
  br label %208

205:                                              ; preds = %180, %169
  %206 = load i32, i32* @LogCHAT, align 4
  %207 = call i32 (i32, i8*, ...) @log_Printf(i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %187
  %209 = load %struct.datalink*, %struct.datalink** %12, align 8
  %210 = getelementptr inbounds %struct.datalink, %struct.datalink* %209, i32 0, i32 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %239, label %215

215:                                              ; preds = %208
  %216 = load %struct.datalink*, %struct.datalink** %12, align 8
  %217 = getelementptr inbounds %struct.datalink, %struct.datalink* %216, i32 0, i32 2
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @PHYS_DDIAL, align 4
  %222 = load i32, i32* @PHYS_DEDICATED, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %220, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %260, label %226

226:                                              ; preds = %215
  %227 = load %struct.datalink*, %struct.datalink** %12, align 8
  %228 = getelementptr inbounds %struct.datalink, %struct.datalink* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %260

233:                                              ; preds = %226
  %234 = load %struct.datalink*, %struct.datalink** %12, align 8
  %235 = getelementptr inbounds %struct.datalink, %struct.datalink* %234, i32 0, i32 9
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %260

239:                                              ; preds = %233, %208
  %240 = load %struct.datalink*, %struct.datalink** %12, align 8
  %241 = call i32 @datalink_NewState(%struct.datalink* %240, i32 136)
  %242 = load %struct.datalink*, %struct.datalink** %12, align 8
  %243 = getelementptr inbounds %struct.datalink, %struct.datalink* %242, i32 0, i32 10
  store i32 0, i32* %243, align 8
  %244 = load %struct.datalink*, %struct.datalink** %12, align 8
  %245 = getelementptr inbounds %struct.datalink, %struct.datalink* %244, i32 0, i32 9
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  store i32 -1, i32* %246, align 8
  %247 = load %struct.datalink*, %struct.datalink** %12, align 8
  %248 = load %struct.datalink*, %struct.datalink** %12, align 8
  %249 = getelementptr inbounds %struct.datalink, %struct.datalink* %248, i32 0, i32 2
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (%struct.datalink*, i8*, i32, ...) @log_WritePrompts(%struct.datalink* %247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %253)
  %255 = load %struct.datalink*, %struct.datalink** %12, align 8
  %256 = getelementptr inbounds %struct.datalink, %struct.datalink* %255, i32 0, i32 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  %258 = load %struct.datalink*, %struct.datalink** %12, align 8
  %259 = call i32 @bundle_LinkClosed(%struct.TYPE_18__* %257, %struct.datalink* %258)
  br label %260

260:                                              ; preds = %239, %233, %226, %215
  %261 = load %struct.datalink*, %struct.datalink** %12, align 8
  %262 = getelementptr inbounds %struct.datalink, %struct.datalink* %261, i32 0, i32 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %286, label %267

267:                                              ; preds = %260
  %268 = load %struct.datalink*, %struct.datalink** %12, align 8
  %269 = load %struct.datalink*, %struct.datalink** %12, align 8
  %270 = call i32 @datalink_GetDialTimeout(%struct.datalink* %269)
  %271 = call i32 @datalink_StartDialTimer(%struct.datalink* %268, i32 %270)
  store i32 %271, i32* %14, align 4
  %272 = load %struct.datalink*, %struct.datalink** %12, align 8
  %273 = getelementptr inbounds %struct.datalink, %struct.datalink* %272, i32 0, i32 8
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %273, align 8
  %275 = load i32, i32* @EX_REDIAL, align 4
  %276 = call i32 @bundle_Notify(%struct.TYPE_18__* %274, i32 %275)
  %277 = load %struct.datalink*, %struct.datalink** %12, align 8
  %278 = load %struct.datalink*, %struct.datalink** %12, align 8
  %279 = getelementptr inbounds %struct.datalink, %struct.datalink* %278, i32 0, i32 2
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %14, align 4
  %285 = call i32 (%struct.datalink*, i8*, i32, ...) @log_WritePrompts(%struct.datalink* %277, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %267, %260
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287, %49
  br label %489

289:                                              ; preds = %5
  %290 = load %struct.datalink*, %struct.datalink** %12, align 8
  %291 = getelementptr inbounds %struct.datalink, %struct.datalink* %290, i32 0, i32 2
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = call i32 @physical_AwaitCarrier(%struct.TYPE_16__* %292)
  switch i32 %293, label %364 [
    i32 142, label %294
    i32 143, label %297
    i32 144, label %329
  ]

294:                                              ; preds = %289
  %295 = load i32, i32* @LogDEBUG, align 4
  %296 = call i32 (i32, i8*, ...) @log_Printf(i32 %295, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %491

297:                                              ; preds = %289
  %298 = load %struct.datalink*, %struct.datalink** %12, align 8
  %299 = getelementptr inbounds %struct.datalink, %struct.datalink* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %319

303:                                              ; preds = %297
  %304 = load %struct.datalink*, %struct.datalink** %12, align 8
  %305 = call i32 @datalink_NewState(%struct.datalink* %304, i32 132)
  %306 = load %struct.datalink*, %struct.datalink** %12, align 8
  %307 = getelementptr inbounds %struct.datalink, %struct.datalink* %306, i32 0, i32 5
  %308 = load %struct.datalink*, %struct.datalink** %12, align 8
  %309 = getelementptr inbounds %struct.datalink, %struct.datalink* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @chat_Setup(%struct.TYPE_17__* %307, i32* %312, i8* null)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %303
  %316 = load i32, i32* @LogWARN, align 4
  %317 = call i32 (i32, i8*, ...) @log_Printf(i32 %316, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %318

318:                                              ; preds = %315, %303
  br label %322

319:                                              ; preds = %297
  %320 = load %struct.datalink*, %struct.datalink** %12, align 8
  %321 = call i32 @datalink_LoginDone(%struct.datalink* %320)
  br label %322

322:                                              ; preds = %319, %318
  %323 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %324 = load i32*, i32** %8, align 8
  %325 = load i32*, i32** %9, align 8
  %326 = load i32*, i32** %10, align 8
  %327 = load i32*, i32** %11, align 8
  %328 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %323, i32* %324, i32* %325, i32* %326, i32* %327)
  store i32 %328, i32* %6, align 4
  br label %491

329:                                              ; preds = %289
  %330 = load %struct.datalink*, %struct.datalink** %12, align 8
  %331 = getelementptr inbounds %struct.datalink, %struct.datalink* %330, i32 0, i32 2
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %331, align 8
  %333 = call i32 @physical_Offline(%struct.TYPE_16__* %332)
  %334 = load %struct.datalink*, %struct.datalink** %12, align 8
  %335 = getelementptr inbounds %struct.datalink, %struct.datalink* %334, i32 0, i32 7
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %361

339:                                              ; preds = %329
  %340 = load %struct.datalink*, %struct.datalink** %12, align 8
  %341 = call i32 @datalink_NewState(%struct.datalink* %340, i32 134)
  %342 = load %struct.datalink*, %struct.datalink** %12, align 8
  %343 = getelementptr inbounds %struct.datalink, %struct.datalink* %342, i32 0, i32 5
  %344 = load %struct.datalink*, %struct.datalink** %12, align 8
  %345 = getelementptr inbounds %struct.datalink, %struct.datalink* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @chat_Setup(%struct.TYPE_17__* %343, i32* %348, i8* null)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %339
  %352 = load i32, i32* @LogWARN, align 4
  %353 = call i32 (i32, i8*, ...) @log_Printf(i32 %352, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %354

354:                                              ; preds = %351, %339
  %355 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %356 = load i32*, i32** %8, align 8
  %357 = load i32*, i32** %9, align 8
  %358 = load i32*, i32** %10, align 8
  %359 = load i32*, i32** %11, align 8
  %360 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %355, i32* %356, i32* %357, i32* %358, i32* %359)
  store i32 %360, i32* %6, align 4
  br label %491

361:                                              ; preds = %329
  %362 = load %struct.datalink*, %struct.datalink** %12, align 8
  %363 = call i32 @datalink_HangupDone(%struct.datalink* %362)
  store i32 0, i32* %6, align 4
  br label %491

364:                                              ; preds = %289
  br label %365

365:                                              ; preds = %5, %5, %5, %5, %364
  %366 = load %struct.datalink*, %struct.datalink** %12, align 8
  %367 = getelementptr inbounds %struct.datalink, %struct.datalink* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 1
  %369 = load i32*, i32** %8, align 8
  %370 = load i32*, i32** %9, align 8
  %371 = load i32*, i32** %10, align 8
  %372 = load i32*, i32** %11, align 8
  %373 = call i32 @descriptor_UpdateSet(i32* %368, i32* %369, i32* %370, i32* %371, i32* %372)
  store i32 %373, i32* %13, align 4
  %374 = load %struct.datalink*, %struct.datalink** %12, align 8
  %375 = getelementptr inbounds %struct.datalink, %struct.datalink* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  switch i32 %377, label %469 [
    i32 141, label %378
    i32 140, label %433
  ]

378:                                              ; preds = %365
  %379 = load %struct.datalink*, %struct.datalink** %12, align 8
  %380 = getelementptr inbounds %struct.datalink, %struct.datalink* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  switch i32 %381, label %432 [
    i32 134, label %382
    i32 135, label %385
    i32 131, label %394
    i32 132, label %420
  ]

382:                                              ; preds = %378
  %383 = load %struct.datalink*, %struct.datalink** %12, align 8
  %384 = call i32 @datalink_HangupDone(%struct.datalink* %383)
  br label %432

385:                                              ; preds = %378
  %386 = load %struct.datalink*, %struct.datalink** %12, align 8
  %387 = call i32 @datalink_NewState(%struct.datalink* %386, i32 138)
  %388 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %389 = load i32*, i32** %8, align 8
  %390 = load i32*, i32** %9, align 8
  %391 = load i32*, i32** %10, align 8
  %392 = load i32*, i32** %11, align 8
  %393 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %388, i32* %389, i32* %390, i32* %391, i32* %392)
  store i32 %393, i32* %6, align 4
  br label %491

394:                                              ; preds = %378
  %395 = load %struct.datalink*, %struct.datalink** %12, align 8
  %396 = call i32 @datalink_NewState(%struct.datalink* %395, i32 134)
  %397 = load %struct.datalink*, %struct.datalink** %12, align 8
  %398 = getelementptr inbounds %struct.datalink, %struct.datalink* %397, i32 0, i32 2
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %398, align 8
  %400 = call i32 @physical_Offline(%struct.TYPE_16__* %399)
  %401 = load %struct.datalink*, %struct.datalink** %12, align 8
  %402 = getelementptr inbounds %struct.datalink, %struct.datalink* %401, i32 0, i32 5
  %403 = load %struct.datalink*, %struct.datalink** %12, align 8
  %404 = getelementptr inbounds %struct.datalink, %struct.datalink* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = call i32 @chat_Setup(%struct.TYPE_17__* %402, i32* %407, i8* null)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %394
  %411 = load i32, i32* @LogWARN, align 4
  %412 = call i32 (i32, i8*, ...) @log_Printf(i32 %411, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %413

413:                                              ; preds = %410, %394
  %414 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %415 = load i32*, i32** %8, align 8
  %416 = load i32*, i32** %9, align 8
  %417 = load i32*, i32** %10, align 8
  %418 = load i32*, i32** %11, align 8
  %419 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %414, i32* %415, i32* %416, i32* %417, i32* %418)
  store i32 %419, i32* %6, align 4
  br label %491

420:                                              ; preds = %378
  %421 = load %struct.datalink*, %struct.datalink** %12, align 8
  %422 = getelementptr inbounds %struct.datalink, %struct.datalink* %421, i32 0, i32 6
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  store i32* null, i32** %423, align 8
  %424 = load %struct.datalink*, %struct.datalink** %12, align 8
  %425 = call i32 @datalink_LoginDone(%struct.datalink* %424)
  %426 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %427 = load i32*, i32** %8, align 8
  %428 = load i32*, i32** %9, align 8
  %429 = load i32*, i32** %10, align 8
  %430 = load i32*, i32** %11, align 8
  %431 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %426, i32* %427, i32* %428, i32* %429, i32* %430)
  store i32 %431, i32* %6, align 4
  br label %491

432:                                              ; preds = %378, %382
  br label %469

433:                                              ; preds = %365
  %434 = load i32, i32* @LogWARN, align 4
  %435 = call i32 (i32, i8*, ...) @log_Printf(i32 %434, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %436 = load %struct.datalink*, %struct.datalink** %12, align 8
  %437 = getelementptr inbounds %struct.datalink, %struct.datalink* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  switch i32 %438, label %468 [
    i32 134, label %439
    i32 135, label %442
    i32 131, label %442
    i32 132, label %442
  ]

439:                                              ; preds = %433
  %440 = load %struct.datalink*, %struct.datalink** %12, align 8
  %441 = call i32 @datalink_HangupDone(%struct.datalink* %440)
  br label %468

442:                                              ; preds = %433, %433, %433
  %443 = load %struct.datalink*, %struct.datalink** %12, align 8
  %444 = call i32 @datalink_NewState(%struct.datalink* %443, i32 134)
  %445 = load %struct.datalink*, %struct.datalink** %12, align 8
  %446 = getelementptr inbounds %struct.datalink, %struct.datalink* %445, i32 0, i32 2
  %447 = load %struct.TYPE_16__*, %struct.TYPE_16__** %446, align 8
  %448 = call i32 @physical_Offline(%struct.TYPE_16__* %447)
  %449 = load %struct.datalink*, %struct.datalink** %12, align 8
  %450 = getelementptr inbounds %struct.datalink, %struct.datalink* %449, i32 0, i32 5
  %451 = load %struct.datalink*, %struct.datalink** %12, align 8
  %452 = getelementptr inbounds %struct.datalink, %struct.datalink* %451, i32 0, i32 4
  %453 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = call i32 @chat_Setup(%struct.TYPE_17__* %450, i32* %455, i8* null)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %461, label %458

458:                                              ; preds = %442
  %459 = load i32, i32* @LogWARN, align 4
  %460 = call i32 (i32, i8*, ...) @log_Printf(i32 %459, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %461

461:                                              ; preds = %458, %442
  %462 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %463 = load i32*, i32** %8, align 8
  %464 = load i32*, i32** %9, align 8
  %465 = load i32*, i32** %10, align 8
  %466 = load i32*, i32** %11, align 8
  %467 = call i32 @datalink_UpdateSet(%struct.fdescriptor* %462, i32* %463, i32* %464, i32* %465, i32* %466)
  store i32 %467, i32* %6, align 4
  br label %491

468:                                              ; preds = %433, %439
  br label %469

469:                                              ; preds = %365, %468, %432
  br label %489

470:                                              ; preds = %5, %5, %5, %5, %5
  %471 = load %struct.datalink*, %struct.datalink** %12, align 8
  %472 = getelementptr inbounds %struct.datalink, %struct.datalink* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 0
  %474 = load i32*, i32** %8, align 8
  %475 = load i32*, i32** %9, align 8
  %476 = load i32*, i32** %10, align 8
  %477 = load i32*, i32** %11, align 8
  %478 = call i32 @descriptor_UpdateSet(i32* %473, i32* %474, i32* %475, i32* %476, i32* %477)
  %479 = load %struct.datalink*, %struct.datalink** %12, align 8
  %480 = getelementptr inbounds %struct.datalink, %struct.datalink* %479, i32 0, i32 2
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %481, i32 0, i32 1
  %483 = load i32*, i32** %8, align 8
  %484 = load i32*, i32** %9, align 8
  %485 = load i32*, i32** %10, align 8
  %486 = load i32*, i32** %11, align 8
  %487 = call i32 @descriptor_UpdateSet(i32* %482, i32* %483, i32* %484, i32* %485, i32* %486)
  %488 = add nsw i32 %478, %487
  store i32 %488, i32* %13, align 4
  br label %489

489:                                              ; preds = %5, %470, %469, %288, %47
  %490 = load i32, i32* %13, align 4
  store i32 %490, i32* %6, align 4
  br label %491

491:                                              ; preds = %489, %461, %420, %413, %385, %361, %354, %322, %294, %162
  %492 = load i32, i32* %6, align 4
  ret i32 %492
}

declare dso_local %struct.datalink* @descriptor2datalink(%struct.fdescriptor*) #1

declare dso_local i32 @datalink_Up(%struct.datalink*, i32, i32) #1

declare dso_local i32 @physical_Open(%struct.TYPE_16__*) #1

declare dso_local i32 @log_WritePrompts(%struct.datalink*, i8*, i32, ...) #1

declare dso_local i32 @datalink_NewState(%struct.datalink*, i32) #1

declare dso_local i32 @chat_Setup(%struct.TYPE_17__*, i32*, i8*) #1

declare dso_local i8* @datalink_ChoosePhoneNumber(%struct.datalink*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @bundle_LinkClosed(%struct.TYPE_18__*, %struct.datalink*) #1

declare dso_local i32 @datalink_StartDialTimer(%struct.datalink*, i32) #1

declare dso_local i32 @datalink_GetDialTimeout(%struct.datalink*) #1

declare dso_local i32 @bundle_Notify(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @physical_AwaitCarrier(%struct.TYPE_16__*) #1

declare dso_local i32 @datalink_LoginDone(%struct.datalink*) #1

declare dso_local i32 @physical_Offline(%struct.TYPE_16__*) #1

declare dso_local i32 @datalink_HangupDone(%struct.datalink*) #1

declare dso_local i32 @descriptor_UpdateSet(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
