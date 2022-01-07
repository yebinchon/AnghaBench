; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_remote.c_getremcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_remote.c_getremcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"REMOTE\00", align 1
@db_array = common dso_local global i8** null, align 8
@_PATH_REMOTE = common dso_local global i8* null, align 8
@DV = common dso_local global i8* null, align 8
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@CU = common dso_local global i8* null, align 8
@HO = common dso_local global i8* null, align 8
@HW = common dso_local global i32 0, align 4
@DU = common dso_local global i64 0, align 8
@BR = common dso_local global i32 0, align 4
@DEFBR = common dso_local global i32 0, align 4
@DEFFS = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: unknown host %s\0A\00", align 1
@__progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: can't open host description file\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"%s: possible reference loop in host description file\0A\00", align 1
@capstrings = common dso_local global i8** null, align 8
@caps = common dso_local global i8*** null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@LD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@TTYDISC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"du\00", align 1
@NOSTR = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: missing device spec\0A\00", align 1
@PN = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: missing phone number\0A\00", align 1
@AT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"%s: missing acu type\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"hd\00", align 1
@HD = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"ra\00", align 1
@RAISE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@ECHOCHECK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@BEAUTIFY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@SCRIPT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"tb\00", align 1
@TABEXPAND = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"vb\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"nv\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@TAND = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@RAWFTP = common dso_local global i32 0, align 4
@HALFDUPLEX = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@DC = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"hf\00", align 1
@HARDWAREFLOW = common dso_local global i32 0, align 4
@RE = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"tip.record\00", align 1
@EX = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"\09\0A\08\0C\00", align 1
@ES = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@FO = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [3 x i8] c"fo\00", align 1
@PR = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@RC = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@DL = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@CL = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"et\00", align 1
@ET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getremcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getremcap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 47
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @cgetset(i8* %17)
  br label %26

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  %21 = load i8**, i8*** @db_array, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @_PATH_REMOTE, align 8
  %24 = load i8**, i8*** @db_array, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %19, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i8**, i8*** @db_array, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @cgetent(i8** %5, i8** %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = load i8*, i8** @DV, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i8*, i8** %2, align 8
  store i8* %42, i8** @DV, align 8
  %43 = load i32, i32* @R_OK, align 4
  %44 = load i32, i32* @W_OK, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @access(i8* %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41, %32
  %49 = load i8*, i8** @DV, align 8
  store i8* %49, i8** @CU, align 8
  %50 = load i8*, i8** %2, align 8
  store i8* %50, i8** @HO, align 8
  store i32 1, i32* @HW, align 4
  store i64 0, i64* @DU, align 8
  %51 = load i32, i32* @BR, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @DEFBR, align 4
  store i32 %54, i32* @BR, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* @DEFFS, align 4
  store i32 %56, i32* @FS, align 4
  br label %344

57:                                               ; preds = %41, %35
  %58 = load i32, i32* %7, align 4
  switch i32 %58, label %72 [
    i32 -1, label %59
    i32 -2, label %64
    i32 -3, label %68
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @__progname, align 8
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %62)
  br label %72

64:                                               ; preds = %57
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @__progname, align 8
  %67 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %72

68:                                               ; preds = %57
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** @__progname, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %57, %68, %64, %59
  %73 = call i32 @exit(i32 3) #3
  unreachable

74:                                               ; preds = %27
  %75 = load i8**, i8*** @capstrings, align 8
  store i8** %75, i8*** %3, align 8
  %76 = load i8***, i8**** @caps, align 8
  store i8*** %76, i8**** %4, align 8
  br label %77

77:                                               ; preds = %94, %74
  %78 = load i8**, i8*** %3, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i8***, i8**** %4, align 8
  %83 = load i8**, i8*** %82, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i8*, i8** %5, align 8
  %88 = load i8**, i8*** %3, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i8***, i8**** %4, align 8
  %91 = load i8**, i8*** %90, align 8
  %92 = call i32 @cgetstr(i8* %87, i8* %89, i8** %91)
  br label %93

93:                                               ; preds = %86, %81
  br label %94

94:                                               ; preds = %93
  %95 = load i8**, i8*** %3, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %3, align 8
  %97 = load i8***, i8**** %4, align 8
  %98 = getelementptr inbounds i8**, i8*** %97, i32 1
  store i8*** %98, i8**** %4, align 8
  br label %77

99:                                               ; preds = %77
  %100 = load i32, i32* @BR, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @cgetnum(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* @BR)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @DEFBR, align 4
  store i32 %107, i32* @BR, align 4
  br label %108

108:                                              ; preds = %106, %102, %99
  %109 = load i32, i32* @LD, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @cgetnum(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* @LD)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @TTYDISC, align 4
  store i32 %116, i32* @LD, align 4
  br label %117

117:                                              ; preds = %115, %111, %108
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @cgetnum(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* @FS)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @DEFFS, align 4
  store i32 %122, i32* @FS, align 4
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i64, i64* @DU, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i64 0, i64* @DU, align 8
  br label %129

127:                                              ; preds = %123
  %128 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i64 %128, i64* @DU, align 8
  br label %129

129:                                              ; preds = %127, %126
  %130 = load i8*, i8** @DV, align 8
  %131 = load i8*, i8** @NOSTR, align 8
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32, i32* @stderr, align 4
  %135 = load i8*, i8** %2, align 8
  %136 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %135)
  %137 = call i32 @exit(i32 3) #3
  unreachable

138:                                              ; preds = %129
  %139 = load i64, i64* @DU, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i8*, i8** @CU, align 8
  %143 = load i8*, i8** @NOSTR, align 8
  %144 = icmp eq i8* %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i8*, i8** @DV, align 8
  store i8* %146, i8** @CU, align 8
  br label %147

147:                                              ; preds = %145, %141, %138
  %148 = load i64, i64* @DU, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load i8*, i8** @PN, align 8
  %152 = load i8*, i8** @NOSTR, align 8
  %153 = icmp eq i8* %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32, i32* @stderr, align 4
  %156 = load i8*, i8** %2, align 8
  %157 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %156)
  %158 = call i32 @exit(i32 3) #3
  unreachable

159:                                              ; preds = %150, %147
  %160 = load i64, i64* @DU, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i8*, i8** @AT, align 8
  %164 = load i8*, i8** @NOSTR, align 8
  %165 = icmp eq i8* %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32, i32* @stderr, align 4
  %168 = load i8*, i8** %2, align 8
  %169 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %168)
  %170 = call i32 @exit(i32 3) #3
  unreachable

171:                                              ; preds = %162, %159
  %172 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i64 %172, i64* @HD, align 8
  %173 = load i32, i32* @HW, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %192, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** @CU, align 8
  %177 = load i8*, i8** @NOSTR, align 8
  %178 = icmp eq i8* %176, %177
  br i1 %178, label %189, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* @DU, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i8*, i8** @DV, align 8
  %184 = load i8*, i8** @CU, align 8
  %185 = call i64 @equal(i8* %183, i8* %184)
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %182, %179
  %188 = phi i1 [ false, %179 ], [ %186, %182 ]
  br label %189

189:                                              ; preds = %187, %175
  %190 = phi i1 [ true, %175 ], [ %188, %187 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* @HW, align 4
  br label %192

192:                                              ; preds = %189, %171
  %193 = load i8*, i8** %2, align 8
  store i8* %193, i8** @HO, align 8
  %194 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* @RAISE, align 4
  %198 = call i32 @value(i32 %197)
  %199 = call i32 @setboolean(i32 %198, i32 1)
  br label %200

200:                                              ; preds = %196, %192
  %201 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* @ECHOCHECK, align 4
  %205 = call i32 @value(i32 %204)
  %206 = call i32 @setboolean(i32 %205, i32 1)
  br label %207

207:                                              ; preds = %203, %200
  %208 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @BEAUTIFY, align 4
  %212 = call i32 @value(i32 %211)
  %213 = call i32 @setboolean(i32 %212, i32 1)
  br label %214

214:                                              ; preds = %210, %207
  %215 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32, i32* @BEAUTIFY, align 4
  %219 = call i32 @value(i32 %218)
  %220 = call i32 @setboolean(i32 %219, i32 0)
  br label %221

221:                                              ; preds = %217, %214
  %222 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i32, i32* @SCRIPT, align 4
  %226 = call i32 @value(i32 %225)
  %227 = call i32 @setboolean(i32 %226, i32 1)
  br label %228

228:                                              ; preds = %224, %221
  %229 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i32, i32* @TABEXPAND, align 4
  %233 = call i32 @value(i32 %232)
  %234 = call i32 @setboolean(i32 %233, i32 1)
  br label %235

235:                                              ; preds = %231, %228
  %236 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load i32, i32* @VERBOSE, align 4
  %240 = call i32 @value(i32 %239)
  %241 = call i32 @setboolean(i32 %240, i32 1)
  br label %242

242:                                              ; preds = %238, %235
  %243 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* @VERBOSE, align 4
  %247 = call i32 @value(i32 %246)
  %248 = call i32 @setboolean(i32 %247, i32 0)
  br label %249

249:                                              ; preds = %245, %242
  %250 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, i32* @TAND, align 4
  %254 = call i32 @value(i32 %253)
  %255 = call i32 @setboolean(i32 %254, i32 1)
  br label %256

256:                                              ; preds = %252, %249
  %257 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load i32, i32* @TAND, align 4
  %261 = call i32 @value(i32 %260)
  %262 = call i32 @setboolean(i32 %261, i32 0)
  br label %263

263:                                              ; preds = %259, %256
  %264 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i32, i32* @RAWFTP, align 4
  %268 = call i32 @value(i32 %267)
  %269 = call i32 @setboolean(i32 %268, i32 1)
  br label %270

270:                                              ; preds = %266, %263
  %271 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i32, i32* @HALFDUPLEX, align 4
  %275 = call i32 @value(i32 %274)
  %276 = call i32 @setboolean(i32 %275, i32 1)
  br label %277

277:                                              ; preds = %273, %270
  %278 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load i32, i32* @DC, align 4
  %282 = call i32 @value(i32 %281)
  %283 = call i32 @setboolean(i32 %282, i32 1)
  br label %284

284:                                              ; preds = %280, %277
  %285 = call i64 @cgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* @HARDWAREFLOW, align 4
  %289 = call i32 @value(i32 %288)
  %290 = call i32 @setboolean(i32 %289, i32 1)
  br label %291

291:                                              ; preds = %287, %284
  %292 = load i8*, i8** @RE, align 8
  %293 = load i8*, i8** @NOSTR, align 8
  %294 = icmp eq i8* %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** @RE, align 8
  br label %296

296:                                              ; preds = %295, %291
  %297 = load i8*, i8** @EX, align 8
  %298 = load i8*, i8** @NOSTR, align 8
  %299 = icmp eq i8* %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** @EX, align 8
  br label %301

301:                                              ; preds = %300, %296
  %302 = load i8*, i8** @ES, align 8
  %303 = load i8*, i8** @NOSTR, align 8
  %304 = icmp ne i8* %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i8*, i8** @ES, align 8
  %307 = call i32 @vstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %306)
  br label %308

308:                                              ; preds = %305, %301
  %309 = load i8*, i8** @FO, align 8
  %310 = load i8*, i8** @NOSTR, align 8
  %311 = icmp ne i8* %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i8*, i8** @FO, align 8
  %314 = call i32 @vstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %313)
  br label %315

315:                                              ; preds = %312, %308
  %316 = load i8*, i8** @PR, align 8
  %317 = load i8*, i8** @NOSTR, align 8
  %318 = icmp ne i8* %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load i8*, i8** @PR, align 8
  %321 = call i32 @vstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %320)
  br label %322

322:                                              ; preds = %319, %315
  %323 = load i8*, i8** @RC, align 8
  %324 = load i8*, i8** @NOSTR, align 8
  %325 = icmp ne i8* %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i8*, i8** @RC, align 8
  %328 = call i32 @vstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %327)
  br label %329

329:                                              ; preds = %326, %322
  %330 = load i8*, i8** %5, align 8
  %331 = call i32 @cgetnum(i8* %330, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32* @DL)
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  store i32 0, i32* @DL, align 4
  br label %334

334:                                              ; preds = %333, %329
  %335 = load i8*, i8** %5, align 8
  %336 = call i32 @cgetnum(i8* %335, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32* @CL)
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 0, i32* @CL, align 4
  br label %339

339:                                              ; preds = %338, %334
  %340 = load i8*, i8** %5, align 8
  %341 = call i32 @cgetnum(i8* %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i32* @ET)
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  store i32 10, i32* @ET, align 4
  br label %344

344:                                              ; preds = %55, %343, %339
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @cgetset(i8*) #1

declare dso_local i32 @cgetent(i8**, i8**, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cgetstr(i8*, i8*, i8**) #1

declare dso_local i32 @cgetnum(i8*, i8*, i32*) #1

declare dso_local i64 @cgetflag(i8*) #1

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i32 @setboolean(i32, i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @vstring(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
