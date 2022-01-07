; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jls/extr_jls.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jls/extr_jls.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@JLS_XO_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"adj:hNnqsv\00", align 1
@JAIL_DYING = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@PRINT_SKIP = common dso_local global i32 0, align 4
@PRINT_VERBOSE = common dso_local global i32 0, align 4
@PRINT_HEADER = common dso_local global i32 0, align 4
@PRINT_JAIL_NAME = common dso_local global i32 0, align 4
@PRINT_NAMEVAL = common dso_local global i32 0, align 4
@PRINT_QUOTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"usage: jls [-dhNnqv] [-j jail] [param ...]\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@JP_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"jid\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"host.hostname\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"dying\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"cpuset.id\00", align 1
@PRINT_DEFAULT = common dso_local global i32 0, align 4
@nparams = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_2__* null, align 8
@JP_OPT = common dso_local global i32 0, align 4
@param_parent = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"lastjid\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"{T:/%3s}{T:JID}{P:  }{T:Hostname}{Pd:/%22s}{T:Path}\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"{P:/%8s}{T:Name}{Pd:/%26s}{T:State}\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"{P:/%8s}{T:CPUSetID}\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"{P:/%8s}{T:IP Address(es)}\0A\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"{P: }{T:JID/%-15s}{P: }{T:IP Address/%-15s}{P: }{T:Hostname/%-29s}{P: }{T:Path}\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"{T:JID/%6s}{P:  }{T:IP Address}{P:/%6s}{T:Hostname}{P:/%22s}{T:Path}\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"{P: }\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"{P:\0A}\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"jail-information\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"jail\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jail_errmsg = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ip4_ok = common dso_local global i8* null, align 8
@ip6_ok = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @xo_parse_args(i32 %17, i8** %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %2
  %25 = load i32, i32* @JLS_XO_VERSION, align 4
  %26 = call i32 @xo_set_version(i32 %25)
  store i8* null, i8** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %101, %24
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %10, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %102

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %99 [
    i32 97, label %34
    i32 100, label %34
    i32 106, label %38
    i32 104, label %51
    i32 78, label %60
    i32 110, label %64
    i32 113, label %71
    i32 115, label %75
    i32 118, label %88
  ]

34:                                               ; preds = %32, %32
  %35 = load i32, i32* @JAIL_DYING, align 4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %101

38:                                               ; preds = %32
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @strtoul(i8* %39, i8** %7, i32 10)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %38
  store i32 0, i32* %13, align 4
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %48, %43
  br label %101

51:                                               ; preds = %32
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @PRINT_SKIP, align 4
  %54 = load i32, i32* @PRINT_VERBOSE, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = load i32, i32* @PRINT_HEADER, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %15, align 4
  br label %101

60:                                               ; preds = %32
  %61 = load i32, i32* @PRINT_JAIL_NAME, align 4
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %15, align 4
  br label %101

64:                                               ; preds = %32
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @PRINT_VERBOSE, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = load i32, i32* @PRINT_NAMEVAL, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %15, align 4
  br label %101

71:                                               ; preds = %32
  %72 = load i32, i32* @PRINT_QUOTED, align 4
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %101

75:                                               ; preds = %32
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @PRINT_HEADER, align 4
  %78 = load i32, i32* @PRINT_VERBOSE, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %76, %80
  %82 = load i32, i32* @PRINT_NAMEVAL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PRINT_QUOTED, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PRINT_SKIP, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %15, align 4
  br label %101

88:                                               ; preds = %32
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @PRINT_HEADER, align 4
  %91 = load i32, i32* @PRINT_NAMEVAL, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PRINT_SKIP, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %89, %95
  %97 = load i32, i32* @PRINT_VERBOSE, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %15, align 4
  br label %101

99:                                               ; preds = %32
  %100 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %88, %75, %71, %64, %60, %51, %50, %34
  br label %27

102:                                              ; preds = %27
  %103 = load i32, i32* @optind, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %155

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @PRINT_HEADER, align 4
  %109 = load i32, i32* @PRINT_NAMEVAL, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @JP_USER, align 4
  %115 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %114)
  br label %154

116:                                              ; preds = %106
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @PRINT_VERBOSE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load i32, i32* @JP_USER, align 4
  %123 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %122)
  %124 = load i32, i32* @JP_USER, align 4
  %125 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %124)
  %126 = load i32, i32* @JP_USER, align 4
  %127 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %126)
  %128 = load i32, i32* @JP_USER, align 4
  %129 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %128)
  %130 = load i32, i32* @JP_USER, align 4
  %131 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %130)
  %132 = load i32, i32* @JP_USER, align 4
  %133 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %132)
  br label %153

134:                                              ; preds = %116
  %135 = load i32, i32* @PRINT_DEFAULT, align 4
  %136 = load i32, i32* %15, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @PRINT_JAIL_NAME, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @JP_USER, align 4
  %144 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %143)
  br label %148

145:                                              ; preds = %134
  %146 = load i32, i32* @JP_USER, align 4
  %147 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* @JP_USER, align 4
  %150 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %149)
  %151 = load i32, i32* @JP_USER, align 4
  %152 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0, i8* null, i32 %151)
  br label %153

153:                                              ; preds = %148, %121
  br label %154

154:                                              ; preds = %153, %113
  br label %174

155:                                              ; preds = %102
  %156 = load i32, i32* @PRINT_VERBOSE, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %15, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %164, %155
  %161 = load i32, i32* @optind, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* @optind, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @optind, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* @JP_USER, align 4
  %172 = call i32 (i8*, ...) @add_param(i8* %170, i8* null, i64 0, i8* null, i32 %171)
  br label %160

173:                                              ; preds = %160
  br label %174

174:                                              ; preds = %173, %154
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @PRINT_SKIP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %249

179:                                              ; preds = %174
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %245, %179
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @nparams, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %248

184:                                              ; preds = %180
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @JP_USER, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %244

194:                                              ; preds = %184
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @strchr(i8* %200, i8 signext 46)
  store i8* %201, i8** %6, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %244

203:                                              ; preds = %194
  %204 = load i8*, i8** %6, align 8
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %204 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = add nsw i64 %213, 1
  %215 = trunc i64 %214 to i32
  %216 = call i8* @alloca(i32 %215)
  store i8* %216, i8** %9, align 8
  %217 = load i8*, i8** %9, align 8
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = ptrtoint i8* %224 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = add nsw i64 %233, 1
  %235 = trunc i64 %234 to i32
  %236 = call i32 @strlcpy(i8* %217, i8* %223, i32 %235)
  %237 = load i8*, i8** %9, align 8
  %238 = load i32, i32* @JP_OPT, align 4
  %239 = call i32 (i8*, ...) @add_param(i8* %237, i8* null, i64 0, i8* null, i32 %238)
  %240 = load i32*, i32** @param_parent, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %239, i32* %243, align 4
  br label %244

244:                                              ; preds = %203, %194, %184
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %180

248:                                              ; preds = %180
  br label %249

249:                                              ; preds = %248, %174
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %13, i64 4, i8* null, i32 0)
  br label %265

254:                                              ; preds = %249
  %255 = load i8*, i8** %8, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i8*, i8** %8, align 8
  %259 = load i8*, i8** %8, align 8
  %260 = call i32 @strlen(i8* %259)
  %261 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %258, i32 %260, i8* null, i32 0)
  br label %264

262:                                              ; preds = %254
  %263 = call i32 (i8*, ...) @add_param(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %14, i64 4, i8* null, i32 0)
  br label %264

264:                                              ; preds = %262, %257
  br label %265

265:                                              ; preds = %264, %252
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* @PRINT_VERBOSE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %272 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %273 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %274 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  br label %332

275:                                              ; preds = %265
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* @PRINT_DEFAULT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %275
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* @PRINT_JAIL_NAME, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.15, i64 0, i64 0))
  br label %289

287:                                              ; preds = %280
  %288 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %285
  br label %331

290:                                              ; preds = %275
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* @PRINT_HEADER, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %330

295:                                              ; preds = %290
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %296

296:                                              ; preds = %325, %295
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @nparams, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %328

300:                                              ; preds = %296
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @JP_USER, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %324

310:                                              ; preds = %300
  %311 = load i32, i32* %16, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %316

315:                                              ; preds = %310
  store i32 1, i32* %16, align 4
  br label %316

316:                                              ; preds = %315, %313
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 (i8*, ...) @xo_emit(i8* %322)
  br label %324

324:                                              ; preds = %316, %300
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %11, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %11, align 4
  br label %296

328:                                              ; preds = %296
  %329 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %290
  br label %331

331:                                              ; preds = %330, %289
  br label %332

332:                                              ; preds = %331, %270
  %333 = call i32 @xo_open_container(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %334 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %335 = load i32, i32* %13, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %332
  %338 = load i8*, i8** %8, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %349

340:                                              ; preds = %337, %332
  %341 = load i32, i32* %15, align 4
  %342 = load i32, i32* %12, align 4
  %343 = call i32 @print_jail(i32 %341, i32 %342)
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load i32, i32* @jail_errmsg, align 4
  %347 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %345, %340
  br label %367

349:                                              ; preds = %337
  store i32 0, i32* %14, align 4
  br label %350

350:                                              ; preds = %355, %349
  %351 = load i32, i32* %15, align 4
  %352 = load i32, i32* %12, align 4
  %353 = call i32 @print_jail(i32 %351, i32 %352)
  store i32 %353, i32* %14, align 4
  %354 = icmp sge i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  br label %350

356:                                              ; preds = %350
  %357 = load i64, i64* @errno, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %356
  %360 = load i64, i64* @errno, align 8
  %361 = load i64, i64* @ENOENT, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %359
  %364 = load i32, i32* @jail_errmsg, align 4
  %365 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %364)
  br label %366

366:                                              ; preds = %363, %359, %356
  br label %367

367:                                              ; preds = %366, %348
  %368 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %369 = call i32 @xo_close_container(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %370 = call i32 (...) @xo_finish()
  ret i32 0
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @xo_set_version(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @xo_errx(i32, i8*, ...) #1

declare dso_local i32 @add_param(i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @print_jail(i32, i32) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
