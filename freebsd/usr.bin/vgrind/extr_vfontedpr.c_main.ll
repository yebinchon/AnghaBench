; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BUFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"'ds =H\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"'ds =H %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@filter = common dso_local global i32 0, align 4
@minus = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@idx = common dso_local global i32 0, align 4
@minusn = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@nokeyw = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"'ps %d\0A'vs %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@language = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@defsfile = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"'ta 4i 4.25i 5.5iR\0A'in .5i\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"no entry for language %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"cannot find vgrindefs file %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"potential reference loop detected in vgrindefs file %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"kw\00", align 1
@l_keywds = common dso_local global i8** null, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@l_prcbeg = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@l_combeg = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@l_comend = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@l_acmbeg = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@l_acmend = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@l_strbeg = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@l_strend = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@l_blkbeg = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@l_blkend = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [3 x i8] c"lb\00", align 1
@l_chrbeg = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@l_chrend = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@l_nocom = common dso_local global i8* null, align 8
@l_escape = common dso_local global i8 0, align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"oc\00", align 1
@l_onecase = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@l_toplex = common dso_local global i32 0, align 4
@incomm = common dso_local global i32 0, align 4
@instr = common dso_local global i32 0, align 4
@inchr = common dso_local global i32 0, align 4
@_escaped = common dso_local global i32 0, align 4
@blklevel = common dso_local global i64 0, align 8
@psptr = common dso_local global i64 0, align 8
@PSMAX = common dso_local global i64 0, align 8
@pstack = common dso_local global i8** null, align 8
@plstack = common dso_local global i64* null, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"'-F\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c".ds =F %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"'wh 0 vH\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"'wh -1i vF\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c".()\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c".bp\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c".ds =M %s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"vS\00", align 1
@pass = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [3 x i8] c"vE\00", align 1
@prccont = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [5 x i8] c"'FC \00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@margin = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  br label %23

23:                                               ; preds = %454, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %196

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %197

37:                                               ; preds = %32
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %454

53:                                               ; preds = %37
  br label %197

54:                                               ; preds = %26
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  store i32 1, i32* @filter, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @minus, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  store i8* %69, i8** %74, align 8
  br label %454

75:                                               ; preds = %54
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %197

82:                                               ; preds = %75
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  store i32 1, i32* @idx, align 4
  %89 = load i8*, i8** @minusn, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  store i32 1, i32* @nokeyw, align 4
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %5, align 8
  br label %454

103:                                              ; preds = %92
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** %12, align 8
  br label %114

114:                                              ; preds = %118, %109
  %115 = load i8*, i8** %12, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  %120 = mul nsw i32 %119, 10
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %12, align 8
  %123 = load i8, i8* %121, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  %126 = add nsw i32 %120, %125
  store i32 %126, i32* %13, align 4
  br label %114

127:                                              ; preds = %114
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %128, i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %4, align 4
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %5, align 8
  br label %454

136:                                              ; preds = %103
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strncmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %136
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %146, i8** @language, align 8
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %4, align 4
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i32 1
  store i8** %150, i8*** %5, align 8
  br label %454

151:                                              ; preds = %136
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strncmp(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %151
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i8**, i8*** @defsfile, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %4, align 4
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %5, align 8
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %4, align 4
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %5, align 8
  br label %454

171:                                              ; preds = %151
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @stdin, align 4
  %176 = call i32* @freopen(i8* %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %175)
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %171
  %179 = load i8**, i8*** %5, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %178, %171
  %184 = load i32, i32* @idx, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %183
  %189 = load i8**, i8*** %5, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 0
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %6, align 8
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %4, align 4
  %194 = load i8**, i8*** %5, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i32 1
  store i8** %195, i8*** %5, align 8
  br label %196

196:                                              ; preds = %188, %23
  br label %197

197:                                              ; preds = %196, %81, %53, %35
  %198 = load i8**, i8*** @defsfile, align 8
  %199 = load i8*, i8** @language, align 8
  %200 = call i32 @cgetent(i8** %10, i8** %198, i8* %199)
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load i32, i32* @stderr, align 4
  %205 = load i8*, i8** @language, align 8
  %206 = call i32 @fprintf(i32 %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* %205)
  %207 = call i32 @exit(i32 0) #4
  unreachable

208:                                              ; preds = %197
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, -2
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* @stderr, align 4
  %213 = load i8**, i8*** @defsfile, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @fprintf(i32 %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i8* %215)
  %217 = call i32 @exit(i32 0) #4
  unreachable

218:                                              ; preds = %208
  %219 = load i32, i32* %13, align 4
  %220 = icmp eq i32 %219, -3
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i32, i32* @stderr, align 4
  %223 = load i8**, i8*** @defsfile, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @fprintf(i32 %222, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i8* %225)
  %227 = call i32 @exit(i32 0) #4
  unreachable

228:                                              ; preds = %218
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  %231 = load i8*, i8** %10, align 8
  %232 = call i32 @cgetustr(i8* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8** %12)
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 1, i32* @nokeyw, align 4
  br label %289

235:                                              ; preds = %230
  %236 = load i8**, i8*** @l_keywds, align 8
  store i8** %236, i8*** %14, align 8
  br label %237

237:                                              ; preds = %286, %235
  %238 = load i8*, i8** %12, align 8
  %239 = load i8, i8* %238, align 1
  %240 = icmp ne i8 %239, 0
  br i1 %240, label %241, label %287

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %254, %241
  %243 = load i8*, i8** %12, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 32
  br i1 %246, label %252, label %247

247:                                              ; preds = %242
  %248 = load i8*, i8** %12, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 9
  br label %252

252:                                              ; preds = %247, %242
  %253 = phi i1 [ true, %242 ], [ %251, %247 ]
  br i1 %253, label %254, label %257

254:                                              ; preds = %252
  %255 = load i8*, i8** %12, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %12, align 8
  store i8 0, i8* %255, align 1
  br label %242

257:                                              ; preds = %252
  %258 = load i8*, i8** %12, align 8
  %259 = load i8, i8* %258, align 1
  %260 = icmp ne i8 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load i8*, i8** %12, align 8
  %263 = load i8**, i8*** %14, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i32 1
  store i8** %264, i8*** %14, align 8
  store i8* %262, i8** %263, align 8
  br label %265

265:                                              ; preds = %261, %257
  br label %266

266:                                              ; preds = %283, %265
  %267 = load i8*, i8** %12, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 32
  br i1 %270, label %271, label %281

271:                                              ; preds = %266
  %272 = load i8*, i8** %12, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 9
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load i8*, i8** %12, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 0
  br label %281

281:                                              ; preds = %276, %271, %266
  %282 = phi i1 [ false, %271 ], [ false, %266 ], [ %280, %276 ]
  br i1 %282, label %283, label %286

283:                                              ; preds = %281
  %284 = load i8*, i8** %12, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %12, align 8
  br label %266

286:                                              ; preds = %281
  br label %237

287:                                              ; preds = %237
  %288 = load i8**, i8*** %14, align 8
  store i8* null, i8** %288, align 8
  br label %289

289:                                              ; preds = %287, %234
  %290 = load i8*, i8** %10, align 8
  %291 = call i32 @cgetustr(i8* %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %12)
  %292 = load i8*, i8** %12, align 8
  %293 = call i8* @convexp(i8* %292)
  store i8* %293, i8** @l_prcbeg, align 8
  %294 = load i8*, i8** %10, align 8
  %295 = call i32 @cgetustr(i8* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %12)
  %296 = load i8*, i8** %12, align 8
  %297 = call i8* @convexp(i8* %296)
  store i8* %297, i8** @l_combeg, align 8
  %298 = load i8*, i8** %10, align 8
  %299 = call i32 @cgetustr(i8* %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %12)
  %300 = load i8*, i8** %12, align 8
  %301 = call i8* @convexp(i8* %300)
  store i8* %301, i8** @l_comend, align 8
  %302 = load i8*, i8** %10, align 8
  %303 = call i32 @cgetustr(i8* %302, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %12)
  %304 = load i8*, i8** %12, align 8
  %305 = call i8* @convexp(i8* %304)
  store i8* %305, i8** @l_acmbeg, align 8
  %306 = load i8*, i8** %10, align 8
  %307 = call i32 @cgetustr(i8* %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %12)
  %308 = load i8*, i8** %12, align 8
  %309 = call i8* @convexp(i8* %308)
  store i8* %309, i8** @l_acmend, align 8
  %310 = load i8*, i8** %10, align 8
  %311 = call i32 @cgetustr(i8* %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8** %12)
  %312 = load i8*, i8** %12, align 8
  %313 = call i8* @convexp(i8* %312)
  store i8* %313, i8** @l_strbeg, align 8
  %314 = load i8*, i8** %10, align 8
  %315 = call i32 @cgetustr(i8* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8** %12)
  %316 = load i8*, i8** %12, align 8
  %317 = call i8* @convexp(i8* %316)
  store i8* %317, i8** @l_strend, align 8
  %318 = load i8*, i8** %10, align 8
  %319 = call i32 @cgetustr(i8* %318, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8** %12)
  %320 = load i8*, i8** %12, align 8
  %321 = call i8* @convexp(i8* %320)
  store i8* %321, i8** @l_blkbeg, align 8
  %322 = load i8*, i8** %10, align 8
  %323 = call i32 @cgetustr(i8* %322, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8** %12)
  %324 = load i8*, i8** %12, align 8
  %325 = call i8* @convexp(i8* %324)
  store i8* %325, i8** @l_blkend, align 8
  %326 = load i8*, i8** %10, align 8
  %327 = call i32 @cgetustr(i8* %326, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8** %12)
  %328 = load i8*, i8** %12, align 8
  %329 = call i8* @convexp(i8* %328)
  store i8* %329, i8** @l_chrbeg, align 8
  %330 = load i8*, i8** %10, align 8
  %331 = call i32 @cgetustr(i8* %330, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8** %12)
  %332 = load i8*, i8** %12, align 8
  %333 = call i8* @convexp(i8* %332)
  store i8* %333, i8** @l_chrend, align 8
  %334 = load i8*, i8** %10, align 8
  %335 = call i32 @cgetustr(i8* %334, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8** %12)
  %336 = icmp sge i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %289
  %338 = load i8*, i8** %12, align 8
  %339 = call i8* @convexp(i8* %338)
  store i8* %339, i8** @l_nocom, align 8
  br label %340

340:                                              ; preds = %337, %289
  store i8 92, i8* @l_escape, align 1
  %341 = load i8*, i8** %10, align 8
  %342 = call i32* @cgetcap(i8* %341, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8 signext 58)
  %343 = icmp ne i32* %342, null
  %344 = zext i1 %343 to i32
  store i32 %344, i32* @l_onecase, align 4
  %345 = load i8*, i8** %10, align 8
  %346 = call i32* @cgetcap(i8* %345, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8 signext 58)
  %347 = icmp ne i32* %346, null
  %348 = zext i1 %347 to i32
  store i32 %348, i32* @l_toplex, align 4
  store i32 0, i32* @incomm, align 4
  store i32 0, i32* @instr, align 4
  store i32 0, i32* @inchr, align 4
  store i32 0, i32* @_escaped, align 4
  store i64 0, i64* @blklevel, align 8
  store i64 0, i64* @psptr, align 8
  br label %349

349:                                              ; preds = %362, %340
  %350 = load i64, i64* @psptr, align 8
  %351 = load i64, i64* @PSMAX, align 8
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %353, label %365

353:                                              ; preds = %349
  %354 = load i8**, i8*** @pstack, align 8
  %355 = load i64, i64* @psptr, align 8
  %356 = getelementptr inbounds i8*, i8** %354, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 0
  store i8 0, i8* %358, align 1
  %359 = load i64*, i64** @plstack, align 8
  %360 = load i64, i64* @psptr, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  store i64 0, i64* %361, align 8
  br label %362

362:                                              ; preds = %353
  %363 = load i64, i64* @psptr, align 8
  %364 = add i64 %363, 1
  store i64 %364, i64* @psptr, align 8
  br label %349

365:                                              ; preds = %349
  store i64 -1, i64* @psptr, align 8
  %366 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %367 = load i32, i32* @filter, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %365
  %370 = load i8*, i8** %6, align 8
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* %370)
  %372 = call i32 @ps(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  %373 = call i32 @ps(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  br label %374

374:                                              ; preds = %369, %365
  %375 = load i32, i32* %11, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  store i32 0, i32* %11, align 4
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %380

380:                                              ; preds = %377, %374
  %381 = load i32, i32* @filter, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %398, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* @stdin, align 4
  %385 = call i32 @fileno(i32 %384)
  %386 = call i32 @fstat(i32 %385, %struct.stat* %7)
  %387 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %388 = call i8* @ctime(i32* %387)
  store i8* %388, i8** %12, align 8
  %389 = load i8*, i8** %12, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 16
  store i8 0, i8* %390, align 1
  %391 = load i8*, i8** %12, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 24
  store i8 0, i8* %392, align 1
  %393 = load i8*, i8** %12, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 4
  %395 = load i8*, i8** %12, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 20
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* %394, i8* %396)
  br label %398

398:                                              ; preds = %383, %380
  br label %399

399:                                              ; preds = %452, %427, %398
  %400 = trunc i64 %16 to i32
  %401 = load i32, i32* @stdin, align 4
  %402 = call i32* @fgets(i8* %18, i32 %400, i32 %401)
  %403 = icmp ne i32* %402, null
  br i1 %403, label %404, label %453

404:                                              ; preds = %399
  %405 = getelementptr inbounds i8, i8* %18, i64 0
  %406 = load i8, i8* %405, align 16
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 %407, 12
  br i1 %408, label %409, label %411

409:                                              ; preds = %404
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %411

411:                                              ; preds = %409, %404
  %412 = getelementptr inbounds i8, i8* %18, i64 0
  %413 = load i8, i8* %412, align 16
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %414, 46
  br i1 %415, label %416, label %428

416:                                              ; preds = %411
  %417 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %18)
  %418 = getelementptr inbounds i8, i8* %18, i64 1
  %419 = call i32 @strncmp(i8* %418, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32 2)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %416
  store i32 1, i32* @pass, align 4
  br label %422

422:                                              ; preds = %421, %416
  %423 = getelementptr inbounds i8, i8* %18, i64 1
  %424 = call i32 @strncmp(i8* %423, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 2)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %422
  store i32 0, i32* @pass, align 4
  br label %427

427:                                              ; preds = %426, %422
  br label %399

428:                                              ; preds = %411
  store i32 0, i32* @prccont, align 4
  %429 = load i32, i32* @filter, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %428
  %432 = load i32, i32* @pass, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %431, %428
  %435 = call i32 @putScp(i8* %18)
  br label %438

436:                                              ; preds = %431
  %437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %18)
  br label %438

438:                                              ; preds = %436, %434
  %439 = load i32, i32* @prccont, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %438
  %442 = load i64, i64* @psptr, align 8
  %443 = icmp uge i64 %442, 0
  br i1 %443, label %444, label %452

444:                                              ; preds = %441
  %445 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %446 = load i8**, i8*** @pstack, align 8
  %447 = load i64, i64* @psptr, align 8
  %448 = getelementptr inbounds i8*, i8** %446, i64 %447
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @ps(i8* %449)
  %451 = call i32 @ps(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  br label %452

452:                                              ; preds = %444, %441, %438
  store i64 0, i64* @margin, align 8
  br label %399

453:                                              ; preds = %399
  store i32 1, i32* %11, align 4
  br label %454

454:                                              ; preds = %453, %157, %142, %127, %98, %60, %52
  %455 = load i32, i32* %4, align 4
  %456 = icmp sgt i32 %455, 0
  br i1 %456, label %23, label %457

457:                                              ; preds = %454
  %458 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32* @freopen(i8*, i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @cgetent(i8**, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @cgetustr(i8*, i8*, i8**) #2

declare dso_local i8* @convexp(i8*) #2

declare dso_local i32* @cgetcap(i8*, i8*, i8 signext) #2

declare dso_local i32 @ps(i8*) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local i8* @ctime(i32*) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i32 @putScp(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
