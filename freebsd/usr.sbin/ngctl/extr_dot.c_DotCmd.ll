; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_dot.c_DotCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_dot.c_DotCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i64 }
%struct.namelist = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i64, i32 }
%struct.hooklist = type { %struct.TYPE_6__*, %struct.nodeinfo }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.nodeinfo = type { i64 }

@stdout = common dso_local global i32* null, align 8
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CMDRTN_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Could not open %s for writing\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTNODES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"send listnodes msg\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"recv listnodes msg\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"graph netgraph {\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\09edge [ weight = 1.0 ];\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\09node [ shape = record, fontsize = 12 ] {\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\09\09\22%jx\22 [ label = \22{%s:|{%s|[%jx]:}}\22 ];\0A\00", align 1
@UNNAMED = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"\09};\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\09subgraph cluster_disconnected {\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\09\09bgcolor = pink;\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\09\09\22%jx\22;\0A\00", align 1
@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"[%jx]:\00", align 1
@NGM_LISTHOOKS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"send listhooks msg\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"recv listhooks msg\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"\09node [ shape = octagon, fontsize = 10 ] {\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"\09\09\22%jx.%s\22 [ label = \22%s\22 ];\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"\09{\0A\09\09edge [ weight = 2.0, style = bold ];\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\09\09\22%jx\22 -- \22%jx.%s\22;\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\09\22%jx.%s\22 -- \22%jx.%s\22;\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@CMDRTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @DotCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DotCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ng_mesg*, align 8
  %7 = alloca %struct.namelist*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ng_mesg*, align 8
  %12 = alloca %struct.hooklist*, align 8
  %13 = alloca %struct.nodeinfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32*, i32** @stdout, align 8
  store i32* %18, i32** %8, align 8
  store i32 1, i32* @optind, align 4
  br label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %27 [
    i32 63, label %26
  ]

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %24, %26
  %28 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %28, i32* %3, align 4
  br label %410

29:                                               ; preds = %19
  %30 = load i32, i32* @optind, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @optind, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %53 [
    i32 1, label %38
    i32 0, label %52
  ]

38:                                               ; preds = %29
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @fopen(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %50, i32* %3, align 4
  br label %410

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %29, %51
  br label %62

53:                                               ; preds = %29
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** @stdout, align 8
  %56 = icmp ne i32* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %61, i32* %3, align 4
  br label %410

62:                                               ; preds = %52
  %63 = load i32, i32* @csock, align 4
  %64 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %65 = load i32, i32* @NGM_LISTNODES, align 4
  %66 = call i64 @NgSendMsg(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i32* null, i32 0)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %401

70:                                               ; preds = %62
  %71 = load i32, i32* @csock, align 4
  %72 = call i64 @NgAllocRecvMsg(i32 %71, %struct.ng_mesg** %6, i32* null)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %401

76:                                               ; preds = %70
  %77 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %78 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.namelist*
  store %struct.namelist* %80, %struct.namelist** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %87

87:                                               ; preds = %142, %76
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.namelist*, %struct.namelist** %7, align 8
  %90 = getelementptr inbounds %struct.namelist, %struct.namelist* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %87
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.namelist*, %struct.namelist** %7, align 8
  %96 = getelementptr inbounds %struct.namelist, %struct.namelist* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.namelist*, %struct.namelist** %7, align 8
  %104 = getelementptr inbounds %struct.namelist, %struct.namelist* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %93
  %115 = load %struct.namelist*, %struct.namelist** %7, align 8
  %116 = getelementptr inbounds %struct.namelist, %struct.namelist* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  br label %124

122:                                              ; preds = %93
  %123 = load i8*, i8** @UNNAMED, align 8
  br label %124

124:                                              ; preds = %122, %114
  %125 = phi i8* [ %121, %114 ], [ %123, %122 ]
  %126 = load %struct.namelist*, %struct.namelist** %7, align 8
  %127 = getelementptr inbounds %struct.namelist, %struct.namelist* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.namelist*, %struct.namelist** %7, align 8
  %134 = getelementptr inbounds %struct.namelist, %struct.namelist* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %102, i8* %125, i32 %132, i32 %140)
  br label %142

142:                                              ; preds = %124
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %10, align 8
  br label %87

145:                                              ; preds = %87
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %152

152:                                              ; preds = %179, %145
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.namelist*, %struct.namelist** %7, align 8
  %155 = getelementptr inbounds %struct.namelist, %struct.namelist* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %153, %156
  br i1 %157, label %158, label %182

158:                                              ; preds = %152
  %159 = load %struct.namelist*, %struct.namelist** %7, align 8
  %160 = getelementptr inbounds %struct.namelist, %struct.namelist* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load i32*, i32** %8, align 8
  %169 = load %struct.namelist*, %struct.namelist** %7, align 8
  %170 = getelementptr inbounds %struct.namelist, %struct.namelist* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %167, %158
  br label %179

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %10, align 8
  br label %152

182:                                              ; preds = %152
  %183 = load i32*, i32** %8, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %185

185:                                              ; preds = %385, %182
  %186 = load i64, i64* %10, align 8
  %187 = load %struct.namelist*, %struct.namelist** %7, align 8
  %188 = getelementptr inbounds %struct.namelist, %struct.namelist* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %388

191:                                              ; preds = %185
  %192 = load i32, i32* @NG_PATHSIZ, align 4
  %193 = zext i32 %192 to i64
  %194 = call i8* @llvm.stacksave()
  store i8* %194, i8** %14, align 8
  %195 = alloca i8, i64 %193, align 16
  store i64 %193, i64* %15, align 8
  %196 = trunc i64 %193 to i32
  %197 = load %struct.namelist*, %struct.namelist** %7, align 8
  %198 = getelementptr inbounds %struct.namelist, %struct.namelist* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @snprintf(i8* %195, i32 %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @csock, align 4
  %207 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %208 = load i32, i32* @NGM_LISTHOOKS, align 4
  %209 = call i64 @NgSendMsg(i32 %206, i8* %195, i32 %207, i32 %208, i32* null, i32 0)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %191
  %212 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %213 = call i32 @free(%struct.ng_mesg* %212)
  %214 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  store i32 6, i32* %17, align 4
  br label %381

215:                                              ; preds = %191
  %216 = load i32, i32* @csock, align 4
  %217 = call i64 @NgAllocRecvMsg(i32 %216, %struct.ng_mesg** %11, i32* null)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %221 = call i32 @free(%struct.ng_mesg* %220)
  %222 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  store i32 6, i32* %17, align 4
  br label %381

223:                                              ; preds = %215
  %224 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %225 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to %struct.hooklist*
  store %struct.hooklist* %227, %struct.hooklist** %12, align 8
  %228 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %229 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %228, i32 0, i32 1
  store %struct.nodeinfo* %229, %struct.nodeinfo** %13, align 8
  %230 = load %struct.nodeinfo*, %struct.nodeinfo** %13, align 8
  %231 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %223
  %235 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %236 = call i32 @free(%struct.ng_mesg* %235)
  store i32 15, i32* %17, align 4
  br label %381

237:                                              ; preds = %223
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %240

240:                                              ; preds = %271, %237
  %241 = load i64, i64* %16, align 8
  %242 = load %struct.nodeinfo*, %struct.nodeinfo** %13, align 8
  %243 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ult i64 %241, %244
  br i1 %245, label %246, label %274

246:                                              ; preds = %240
  %247 = load i32*, i32** %8, align 8
  %248 = load %struct.namelist*, %struct.namelist** %7, align 8
  %249 = getelementptr inbounds %struct.namelist, %struct.namelist* %248, i32 0, i32 1
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = load i64, i64* %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %257 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %256, i32 0, i32 0
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = load i64, i64* %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %264 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %263, i32 0, i32 0
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = load i64, i64* %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i32*, i8*, ...) @fprintf(i32* %247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %255, i32 %262, i32 %269)
  br label %271

271:                                              ; preds = %246
  %272 = load i64, i64* %16, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %16, align 8
  br label %240

274:                                              ; preds = %240
  %275 = load i32*, i32** %8, align 8
  %276 = call i32 (i32*, i8*, ...) @fprintf(i32* %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i32*, i32** %8, align 8
  %278 = call i32 (i32*, i8*, ...) @fprintf(i32* %277, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %279

279:                                              ; preds = %311, %274
  %280 = load i64, i64* %16, align 8
  %281 = load %struct.nodeinfo*, %struct.nodeinfo** %13, align 8
  %282 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ult i64 %280, %283
  br i1 %284, label %285, label %314

285:                                              ; preds = %279
  %286 = load i32*, i32** %8, align 8
  %287 = load %struct.namelist*, %struct.namelist** %7, align 8
  %288 = getelementptr inbounds %struct.namelist, %struct.namelist* %287, i32 0, i32 1
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i64, i64* %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = load %struct.namelist*, %struct.namelist** %7, align 8
  %296 = getelementptr inbounds %struct.namelist, %struct.namelist* %295, i32 0, i32 1
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = load i64, i64* %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = trunc i64 %301 to i32
  %303 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %304 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %303, i32 0, i32 0
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i64, i64* %16, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i32*, i8*, ...) @fprintf(i32* %286, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %294, i32 %302, i32 %309)
  br label %311

311:                                              ; preds = %285
  %312 = load i64, i64* %16, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %16, align 8
  br label %279

314:                                              ; preds = %279
  %315 = load i32*, i32** %8, align 8
  %316 = call i32 (i32*, i8*, ...) @fprintf(i32* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %317

317:                                              ; preds = %375, %314
  %318 = load i64, i64* %16, align 8
  %319 = load %struct.nodeinfo*, %struct.nodeinfo** %13, align 8
  %320 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ult i64 %318, %321
  br i1 %322, label %323, label %378

323:                                              ; preds = %317
  %324 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %325 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %324, i32 0, i32 0
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = load i64, i64* %16, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.namelist*, %struct.namelist** %7, align 8
  %333 = getelementptr inbounds %struct.namelist, %struct.namelist* %332, i32 0, i32 1
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = load i64, i64* %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %331, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %323
  br label %375

341:                                              ; preds = %323
  %342 = load i32*, i32** %8, align 8
  %343 = load %struct.namelist*, %struct.namelist** %7, align 8
  %344 = getelementptr inbounds %struct.namelist, %struct.namelist* %343, i32 0, i32 1
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %344, align 8
  %346 = load i64, i64* %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %352 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %351, i32 0, i32 0
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %352, align 8
  %354 = load i64, i64* %16, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %359 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %358, i32 0, i32 0
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i64, i64* %16, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = load %struct.hooklist*, %struct.hooklist** %12, align 8
  %368 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %367, i32 0, i32 0
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %368, align 8
  %370 = load i64, i64* %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 (i32*, i8*, ...) @fprintf(i32* %342, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %350, i32 %357, i32 %366, i32 %373)
  br label %375

375:                                              ; preds = %341, %340
  %376 = load i64, i64* %16, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %16, align 8
  br label %317

378:                                              ; preds = %317
  %379 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %380 = call i32 @free(%struct.ng_mesg* %379)
  store i32 0, i32* %17, align 4
  br label %381

381:                                              ; preds = %219, %211, %378, %234
  %382 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %382)
  %383 = load i32, i32* %17, align 4
  switch i32 %383, label %412 [
    i32 0, label %384
    i32 15, label %385
    i32 6, label %401
  ]

384:                                              ; preds = %381
  br label %385

385:                                              ; preds = %384, %381
  %386 = load i64, i64* %10, align 8
  %387 = add i64 %386, 1
  store i64 %387, i64* %10, align 8
  br label %185

388:                                              ; preds = %185
  %389 = load i32*, i32** %8, align 8
  %390 = call i32 (i32*, i8*, ...) @fprintf(i32* %389, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %391 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %392 = call i32 @free(%struct.ng_mesg* %391)
  %393 = load i32*, i32** %8, align 8
  %394 = load i32*, i32** @stdout, align 8
  %395 = icmp ne i32* %393, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %388
  %397 = load i32*, i32** %8, align 8
  %398 = call i32 @fclose(i32* %397)
  br label %399

399:                                              ; preds = %396, %388
  %400 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %400, i32* %3, align 4
  br label %410

401:                                              ; preds = %381, %74, %68
  %402 = load i32*, i32** %8, align 8
  %403 = load i32*, i32** @stdout, align 8
  %404 = icmp ne i32* %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %401
  %406 = load i32*, i32** %8, align 8
  %407 = call i32 @fclose(i32* %406)
  br label %408

408:                                              ; preds = %405, %401
  %409 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %409, i32* %3, align 4
  br label %410

410:                                              ; preds = %408, %399, %60, %45, %27
  %411 = load i32, i32* %3, align 4
  ret i32 %411

412:                                              ; preds = %381
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @NgAllocRecvMsg(i32, %struct.ng_mesg**, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
