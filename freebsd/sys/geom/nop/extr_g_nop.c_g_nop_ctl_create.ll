; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing device(s).\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"rfailprob\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid '%s' argument\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"wfailprob\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"delaymsec\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"rdelayprob\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"wdelayprob\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"count_until_fail\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"secsize\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"stripesize\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"stripeoffset\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"physpath\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_nop_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_nop_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32*, align 8
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
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [16 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %24 = call i32 (...) @g_topology_assert()
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %25 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %26 = call i32* @gctl_get_paraml(%struct.gctl_req* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %26, i32** %23, align 8
  %27 = load i32*, i32** %23, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %31 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %325

32:                                               ; preds = %2
  %33 = load i32*, i32** %23, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %38 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %325

39:                                               ; preds = %32
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %49 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 100
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %52
  %61 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %62 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %325

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %66 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 4)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, -1
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %75, 100
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %69
  %78 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %79 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %325

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %83 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 4)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %325

97:                                               ; preds = %91, %86
  br label %98

98:                                               ; preds = %97, %81
  %99 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %100 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 4)
  store i32* %100, i32** %6, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %106, -1
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %17, align 4
  %110 = icmp sgt i32 %109, 100
  br i1 %110, label %111, label %114

111:                                              ; preds = %108, %103
  %112 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %113 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %325

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %117 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 4)
  store i32* %117, i32** %6, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, -1
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %18, align 4
  %127 = icmp sgt i32 %126, 100
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %120
  %129 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %130 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %325

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %115
  %133 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %134 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 4)
  store i32* %134, i32** %6, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %144 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %325

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %132
  %147 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %148 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 4)
  store i32* %148, i32** %6, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %158 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %325

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %162 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  store i32* %162, i32** %6, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %172 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %325

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %160
  %175 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %176 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 4)
  store i32* %176, i32** %6, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %186 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %325

187:                                              ; preds = %179
  br label %188

188:                                              ; preds = %187, %174
  %189 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %190 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 4)
  store i32* %190, i32** %6, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %200 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %325

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %188
  %203 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %204 = call i32* @gctl_get_paraml_opt(%struct.gctl_req* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 4)
  store i32* %204, i32** %6, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %202
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %214 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %325

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215, %202
  %217 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %218 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i8* %218, i8** %20, align 8
  store i32 0, i32* %22, align 4
  br label %219

219:                                              ; preds = %322, %216
  %220 = load i32, i32* %22, align 4
  %221 = load i32*, i32** %23, align 8
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %325

224:                                              ; preds = %219
  %225 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %226 = load i32, i32* %22, align 4
  %227 = call i32 @snprintf(i8* %225, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %226)
  %228 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %229 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %230 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %228, i8* %229)
  store i8* %230, i8** %19, align 8
  %231 = load i8*, i8** %19, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %224
  %234 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %235 = load i32, i32* %22, align 4
  %236 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %235)
  br label %325

237:                                              ; preds = %224
  %238 = load i8*, i8** %19, align 8
  %239 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %240 = call i64 @strncmp(i8* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %239)
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %244 = load i8*, i8** %19, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8* %246, i8** %19, align 8
  br label %247

247:                                              ; preds = %242, %237
  %248 = load i8*, i8** %19, align 8
  %249 = call %struct.g_provider* @g_provider_by_name(i8* %248)
  store %struct.g_provider* %249, %struct.g_provider** %5, align 8
  %250 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %251 = icmp eq %struct.g_provider* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load i8*, i8** %19, align 8
  %254 = call i32 @G_NOP_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %253)
  %255 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %256 = load i8*, i8** %19, align 8
  %257 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %256)
  br label %325

258:                                              ; preds = %247
  %259 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %260 = load %struct.g_class*, %struct.g_class** %4, align 8
  %261 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %262 = load i32, i32* %7, align 4
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i32, i32* @EIO, align 4
  br label %268

266:                                              ; preds = %258
  %267 = load i32, i32* %7, align 4
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i32 [ %265, %264 ], [ %267, %266 ]
  %270 = load i32, i32* %10, align 4
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  br label %275

273:                                              ; preds = %268
  %274 = load i32, i32* %10, align 4
  br label %275

275:                                              ; preds = %273, %272
  %276 = phi i32 [ 0, %272 ], [ %274, %273 ]
  %277 = load i32, i32* %8, align 4
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %282

280:                                              ; preds = %275
  %281 = load i32, i32* %8, align 4
  br label %282

282:                                              ; preds = %280, %279
  %283 = phi i32 [ 0, %279 ], [ %281, %280 ]
  %284 = load i32, i32* %9, align 4
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  br label %289

287:                                              ; preds = %282
  %288 = load i32, i32* %9, align 4
  br label %289

289:                                              ; preds = %287, %286
  %290 = phi i32 [ 0, %286 ], [ %288, %287 ]
  %291 = load i32, i32* %16, align 4
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  br label %296

294:                                              ; preds = %289
  %295 = load i32, i32* %16, align 4
  br label %296

296:                                              ; preds = %294, %293
  %297 = phi i32 [ 1, %293 ], [ %295, %294 ]
  %298 = load i32, i32* %17, align 4
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %17, align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi i32 [ 0, %300 ], [ %302, %301 ]
  %305 = load i32, i32* %18, align 4
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  br label %310

308:                                              ; preds = %303
  %309 = load i32, i32* %18, align 4
  br label %310

310:                                              ; preds = %308, %307
  %311 = phi i32 [ 0, %307 ], [ %309, %308 ]
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %15, align 4
  %317 = load i8*, i8** %20, align 8
  %318 = call i64 @g_nop_create(%struct.gctl_req* %259, %struct.g_class* %260, %struct.g_provider* %261, i32 %269, i32 %276, i32 %283, i32 %290, i32 %297, i32 %304, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i8* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %310
  br label %325

321:                                              ; preds = %310
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %22, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %22, align 4
  br label %219

325:                                              ; preds = %29, %36, %60, %77, %94, %111, %128, %142, %156, %170, %184, %198, %212, %233, %252, %320, %219
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32* @gctl_get_paraml_opt(%struct.gctl_req*, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_NOP_DEBUG(i32, i8*, i8*) #1

declare dso_local i64 @g_nop_create(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
