; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_ctl_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_ctl_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_nop_softc = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.g_provider = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_nop_softc*, %struct.g_class* }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing device(s).\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"count_until_fail\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"rfailprob\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid '%s' argument\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"wfailprob\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"delaymsec\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"rdelayprob\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"wdelayprob\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_nop_ctl_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_nop_ctl_configure(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_nop_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %19 = call i32 (...) @g_topology_assert()
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %20 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %21 = call i32* @gctl_get_paraml(%struct.gctl_req* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %253

27:                                               ; preds = %2
  %28 = load i32*, i32** %18, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %253

34:                                               ; preds = %27
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %44 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %52 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 4)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, -1
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %61, 100
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %55
  %64 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %65 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %253

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %69 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 4)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, -1
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = icmp sgt i32 %78, 100
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %72
  %81 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %82 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %253

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %86 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 4)
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %99 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %253

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %103 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 4)
  store i32* %103, i32** %7, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, -1
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 100
  br i1 %113, label %114, label %117

114:                                              ; preds = %111, %106
  %115 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %116 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %253

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %120 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 4)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, -1
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %129, 100
  br i1 %130, label %131, label %134

131:                                              ; preds = %128, %123
  %132 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %133 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %253

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %118
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %250, %135
  %137 = load i32, i32* %17, align 4
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %253

141:                                              ; preds = %136
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @snprintf(i8* %142, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  %145 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %147 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %145, i8* %146)
  store i8* %147, i8** %15, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %152 = load i32, i32* %17, align 4
  %153 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %152)
  br label %253

154:                                              ; preds = %141
  %155 = load i8*, i8** %15, align 8
  %156 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %157 = call i64 @strncmp(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %161 = load i8*, i8** %15, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %15, align 8
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i8*, i8** %15, align 8
  %166 = call %struct.g_provider* @g_provider_by_name(i8* %165)
  store %struct.g_provider* %166, %struct.g_provider** %6, align 8
  %167 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %168 = icmp eq %struct.g_provider* %167, null
  br i1 %168, label %177, label %169

169:                                              ; preds = %164
  %170 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %171 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load %struct.g_class*, %struct.g_class** %173, align 8
  %175 = load %struct.g_class*, %struct.g_class** %4, align 8
  %176 = icmp ne %struct.g_class* %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %169, %164
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 @G_NOP_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %178)
  %180 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %181)
  br label %253

183:                                              ; preds = %169
  %184 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %185 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load %struct.g_nop_softc*, %struct.g_nop_softc** %187, align 8
  store %struct.g_nop_softc* %188, %struct.g_nop_softc** %5, align 8
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, -1
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %194 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %183
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %202 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %203 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %202, i32 0, i32 6
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %198, %195
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, -1
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  %211 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %212 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %211, i32 0, i32 5
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %207, %204
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, -1
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %221 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %220, i32 0, i32 4
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %216, %213
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, -1
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %230 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  br label %231

231:                                              ; preds = %225, %222
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %239 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %238, i32 0, i32 2
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %234, %231
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, -1
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %248 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %243, %240
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %17, align 4
  br label %136

253:                                              ; preds = %24, %31, %63, %80, %97, %114, %131, %150, %177, %136
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32* @gctl_get_paraml_opt(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_NOP_DEBUG(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
