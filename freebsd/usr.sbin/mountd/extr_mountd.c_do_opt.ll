; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_do_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_do_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exportlist = type { i32 }
%struct.grouplist = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xucred = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@MNT_EXRDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"maproot\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mapall\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MNT_EXPORTANON = common dso_local global i32 0, align 4
@OP_MAPALL = common dso_local global i32 0, align 4
@opt_flags = common dso_local global i32 0, align 4
@OP_MAPROOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"bad mask: %s\00", align 1
@OP_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"setting OP_MASKLEN\0A\00", align 1
@OP_MASKLEN = common dso_local global i32 0, align 4
@GT_NULL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"network/host conflict\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"bad net: %s\00", align 1
@GT_NET = common dso_local global i64 0, align 8
@OP_NET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"alldirs\00", align 1
@OP_ALLDIRS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@MNT_EXPUBLIC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"webnfs\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@OP_QUIET = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@OP_SEC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"bad opt %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, %struct.exportlist*, %struct.grouplist*, i32*, i32*, %struct.xucred*)* @do_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_opt(i8** %0, i8** %1, %struct.exportlist* %2, %struct.grouplist* %3, i32* %4, i32* %5, %struct.xucred* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.exportlist*, align 8
  %12 = alloca %struct.grouplist*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.xucred*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store %struct.exportlist* %2, %struct.exportlist** %11, align 8
  store %struct.grouplist* %3, %struct.grouplist** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.xucred* %6, %struct.xucred** %15, align 8
  store i8 0, i8* %22, align 1
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %20, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %20, align 8
  %29 = load i8**, i8*** %10, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %18, align 8
  %31 = load i8*, i8** %18, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %21, align 1
  %33 = load i8*, i8** %18, align 8
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %325, %7
  %35 = load i8*, i8** %20, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %20, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %327

44:                                               ; preds = %42
  store i32 1, i32* %23, align 4
  store i32 -2, i32* %24, align 4
  %45 = load i8*, i8** %20, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 44)
  store i8* %46, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i8*, i8** %17, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %17, align 8
  store i8 0, i8* %49, align 1
  %51 = load i8*, i8** %20, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %16, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %16, align 8
  store i8 0, i8* %55, align 1
  br label %57

57:                                               ; preds = %54, %48
  br label %86

58:                                               ; preds = %44
  %59 = load i8*, i8** %20, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 61)
  store i8* %60, i8** %16, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %16, align 8
  store i8 0, i8* %63, align 1
  br label %85

65:                                               ; preds = %58
  %66 = load i8, i8* %21, align 1
  %67 = load i8*, i8** %18, align 8
  store i8 %66, i8* %67, align 1
  %68 = call i32 @nextfield(i8** %18, i8** %19)
  %69 = load i8**, i8*** %10, align 8
  %70 = load i8*, i8** %69, align 8
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %19, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = icmp ugt i8* %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 45
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %18, align 8
  store i8* %80, i8** %16, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %22, align 1
  %83 = load i8*, i8** %19, align 8
  store i8 0, i8* %83, align 1
  store i32 0, i32* %24, align 4
  br label %84

84:                                               ; preds = %79, %74, %65
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %85, %57
  %87 = load i8*, i8** %20, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8*, i8** %20, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @MNT_EXRDONLY, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %308

99:                                               ; preds = %90
  %100 = load i8*, i8** %16, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %139

102:                                              ; preds = %99
  %103 = load i8*, i8** %20, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i8*, i8** %20, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i8*, i8** %20, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8*, i8** %20, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %114, %110, %106, %102
  %119 = load i32, i32* %24, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %24, align 4
  %121 = load i8*, i8** %16, align 8
  %122 = load %struct.xucred*, %struct.xucred** %15, align 8
  %123 = call i32 @parsecred(i8* %121, %struct.xucred* %122)
  %124 = load i32, i32* %23, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load i32, i32* @MNT_EXPORTANON, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @OP_MAPALL, align 4
  %132 = load i32, i32* @opt_flags, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* @opt_flags, align 4
  br label %138

134:                                              ; preds = %118
  %135 = load i32, i32* @OP_MAPROOT, align 4
  %136 = load i32, i32* @opt_flags, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* @opt_flags, align 4
  br label %138

138:                                              ; preds = %134, %126
  br label %307

139:                                              ; preds = %114, %99
  %140 = load i8*, i8** %16, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %167

142:                                              ; preds = %139
  %143 = load i8*, i8** %20, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i8*, i8** %20, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %167, label %150

150:                                              ; preds = %146, %142
  %151 = load i8*, i8** %16, align 8
  %152 = load %struct.grouplist*, %struct.grouplist** %12, align 8
  %153 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = call i64 @get_net(i8* %151, i32* %154, i32 1)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i32, i32* @LOG_ERR, align 4
  %159 = load i8*, i8** %16, align 8
  %160 = call i32 (i32, i8*, ...) @syslog(i32 %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %159)
  store i32 1, i32* %8, align 4
  br label %331

161:                                              ; preds = %150
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* @OP_MASK, align 4
  %165 = load i32, i32* @opt_flags, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* @opt_flags, align 4
  br label %306

167:                                              ; preds = %146, %139
  %168 = load i8*, i8** %16, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %223

170:                                              ; preds = %167
  %171 = load i8*, i8** %20, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i8*, i8** %20, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %223, label %178

178:                                              ; preds = %174, %170
  %179 = load i8*, i8** %16, align 8
  %180 = call i8* @strchr(i8* %179, i8 signext 47)
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = load i64, i64* @debug, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* @stderr, align 4
  %187 = call i32 @fprintf(i32 %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* @OP_MASKLEN, align 4
  %190 = load i32, i32* @opt_flags, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* @opt_flags, align 4
  br label %192

192:                                              ; preds = %188, %178
  %193 = load %struct.grouplist*, %struct.grouplist** %12, align 8
  %194 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @GT_NULL, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* @LOG_ERR, align 4
  %200 = call i32 (i32, i8*, ...) @syslog(i32 %199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %331

201:                                              ; preds = %192
  %202 = load i8*, i8** %16, align 8
  %203 = load %struct.grouplist*, %struct.grouplist** %12, align 8
  %204 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = call i64 @get_net(i8* %202, i32* %205, i32 0)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load i32, i32* @LOG_ERR, align 4
  %210 = load i8*, i8** %16, align 8
  %211 = call i32 (i32, i8*, ...) @syslog(i32 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %210)
  store i32 1, i32* %8, align 4
  br label %331

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* @GT_NET, align 8
  %215 = load %struct.grouplist*, %struct.grouplist** %12, align 8
  %216 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load i32*, i32** %13, align 8
  store i32 1, i32* %217, align 4
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %24, align 4
  %220 = load i32, i32* @OP_NET, align 4
  %221 = load i32, i32* @opt_flags, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* @opt_flags, align 4
  br label %305

223:                                              ; preds = %174, %167
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* @OP_ALLDIRS, align 4
  %229 = load i32, i32* @opt_flags, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* @opt_flags, align 4
  br label %304

231:                                              ; preds = %223
  %232 = load i8*, i8** %20, align 8
  %233 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* @MNT_EXPUBLIC, align 4
  %237 = load i32*, i32** %14, align 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 4
  br label %303

240:                                              ; preds = %231
  %241 = load i8*, i8** %20, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %240
  %245 = load i32, i32* @MNT_EXPUBLIC, align 4
  %246 = load i32, i32* @MNT_EXRDONLY, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @MNT_EXPORTANON, align 4
  %249 = or i32 %247, %248
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %249
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* @OP_MAPALL, align 4
  %254 = load i32, i32* @opt_flags, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* @opt_flags, align 4
  br label %302

256:                                              ; preds = %240
  %257 = load i8*, i8** %16, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %268

259:                                              ; preds = %256
  %260 = load i8*, i8** %20, align 8
  %261 = call i32 @strcmp(i8* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %259
  %264 = load i8*, i8** %16, align 8
  %265 = call i32 @strdup(i8* %264)
  %266 = load %struct.exportlist*, %struct.exportlist** %11, align 8
  %267 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  br label %301

268:                                              ; preds = %259, %256
  %269 = load i8*, i8** %20, align 8
  %270 = call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* @OP_QUIET, align 4
  %274 = load i32, i32* @opt_flags, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* @opt_flags, align 4
  br label %300

276:                                              ; preds = %268
  %277 = load i8*, i8** %16, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %295

279:                                              ; preds = %276
  %280 = load i8*, i8** %20, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %295, label %283

283:                                              ; preds = %279
  %284 = load i8*, i8** %16, align 8
  %285 = load %struct.exportlist*, %struct.exportlist** %11, align 8
  %286 = call i64 @parsesec(i8* %284, %struct.exportlist* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  store i32 1, i32* %8, align 4
  br label %331

289:                                              ; preds = %283
  %290 = load i32, i32* @OP_SEC, align 4
  %291 = load i32, i32* @opt_flags, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* @opt_flags, align 4
  %293 = load i32, i32* %24, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %24, align 4
  br label %299

295:                                              ; preds = %279, %276
  %296 = load i32, i32* @LOG_ERR, align 4
  %297 = load i8*, i8** %20, align 8
  %298 = call i32 (i32, i8*, ...) @syslog(i32 %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %297)
  store i32 1, i32* %8, align 4
  br label %331

299:                                              ; preds = %289
  br label %300

300:                                              ; preds = %299, %272
  br label %301

301:                                              ; preds = %300, %263
  br label %302

302:                                              ; preds = %301, %244
  br label %303

303:                                              ; preds = %302, %235
  br label %304

304:                                              ; preds = %303, %227
  br label %305

305:                                              ; preds = %304, %213
  br label %306

306:                                              ; preds = %305, %161
  br label %307

307:                                              ; preds = %306, %138
  br label %308

308:                                              ; preds = %307, %94
  %309 = load i32, i32* %24, align 4
  %310 = icmp sge i32 %309, 0
  br i1 %310, label %311, label %325

311:                                              ; preds = %308
  %312 = load i8, i8* %22, align 1
  %313 = load i8*, i8** %19, align 8
  store i8 %312, i8* %313, align 1
  %314 = load i8, i8* %21, align 1
  %315 = load i8**, i8*** %10, align 8
  %316 = load i8*, i8** %315, align 8
  store i8 %314, i8* %316, align 1
  %317 = load i32, i32* %24, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %311
  %320 = load i8*, i8** %18, align 8
  %321 = load i8**, i8*** %9, align 8
  store i8* %320, i8** %321, align 8
  %322 = load i8*, i8** %19, align 8
  %323 = load i8**, i8*** %10, align 8
  store i8* %322, i8** %323, align 8
  br label %324

324:                                              ; preds = %319, %311
  store i32 0, i32* %8, align 4
  br label %331

325:                                              ; preds = %308
  %326 = load i8*, i8** %17, align 8
  store i8* %326, i8** %20, align 8
  br label %34

327:                                              ; preds = %42
  %328 = load i8, i8* %21, align 1
  %329 = load i8**, i8*** %10, align 8
  %330 = load i8*, i8** %329, align 8
  store i8 %328, i8* %330, align 1
  store i32 0, i32* %8, align 4
  br label %331

331:                                              ; preds = %327, %324, %295, %288, %208, %198, %157
  %332 = load i32, i32* %8, align 4
  ret i32 %332
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @nextfield(i8**, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parsecred(i8*, %struct.xucred*) #1

declare dso_local i64 @get_net(i8*, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @parsesec(i8*, %struct.exportlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
