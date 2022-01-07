; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_ndiscvt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_ndiscvt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"i:s:o:n:f:O\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"opening .SYS file '%s' failed\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"reading .SYS file '%s' failed\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"section relocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"opening output file '%s' failed\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A/*\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c" * Generated from %s and %s (%d bytes)\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"<notused>\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" */\0A\0A\00", align 1
@IFNAMSIZ = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [54 x i8] c"selected device name '%s' is too long (max chars: %d)\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"#define NDIS_DEVNAME \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"#define NDIS_MODNAME %s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"#ifdef NDIS_REGVALS\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"ndis_cfg ndis_regvals[] = {\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"\09{ NULL, NULL, { 0 }, 0 }\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"#endif /* NDIS_REGVALS */\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"opening .INF file '%s' failed\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"creating .INF file - no entries created, are you using the correct files?\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"\0A#ifdef NDIS_IMAGE\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"\0Aextern unsigned char ndis_%s_drv_data_start[];\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"static unsigned char *drv_data = ndis_%s_drv_data_start;\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"\0Aextern unsigned char drv_data[];\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"__asm__(\22.data\22);\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"__asm__(\22.globl  drv_data\22);\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"__asm__(\22.type   drv_data, @object\22);\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"__asm__(\22.size   drv_data, %d\22);\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"__asm__(\22drv_data:\22);\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"__asm__(\22.byte \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"0x%.2X\22);\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"0x%.2X, \00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"#endif /* NDIS_IMAGE */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  br label %21

21:                                               ; preds = %41, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %20, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i32, i32* %20, align 4
  switch i32 %27, label %39 [
    i32 102, label %28
    i32 105, label %30
    i32 115, label %32
    i32 111, label %34
    i32 110, label %36
    i32 79, label %38
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %18, align 8
  br label %41

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %15, align 8
  br label %41

32:                                               ; preds = %26
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** %16, align 8
  br label %41

34:                                               ; preds = %26
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %17, align 8
  br label %41

36:                                               ; preds = %26
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %19, align 8
  br label %41

38:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %41

39:                                               ; preds = %26
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %38, %36, %34, %32, %30, %28
  br label %21

42:                                               ; preds = %21
  %43 = load i8*, i8** %18, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %18, align 8
  %47 = call i32 @firmcvt(i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %16, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i8*, i8** %16, align 8
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @SEEK_END, align 4
  %64 = call i32 @fseek(i32* %62, i64 0, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ftell(i32* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @rewind(i32* %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i8* @calloc(i32 %69, i32 1)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fread(i8* %71, i32 %72, i32 1, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %61
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = call i64 @insert_padding(i8** %10, i32* %12)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32*, i32** @stderr, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @exit(i32 1) #3
  unreachable

89:                                               ; preds = %80
  %90 = load i8*, i8** %17, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %17, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %89
  %97 = load i32*, i32** @stdout, align 8
  store i32* %97, i32** %7, align 8
  br label %107

98:                                               ; preds = %92
  %99 = load i8*, i8** %17, align 8
  %100 = call i32* @fopen(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %100, i32** %7, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %17, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32*, i32** %7, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %116

114:                                              ; preds = %107
  %115 = load i8*, i8** %15, align 8
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), %113 ], [ %115, %114 ]
  %118 = load i8*, i8** %16, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %117, i8* %118, i32 %119)
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %123 = load i8*, i8** %19, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %116
  %126 = load i8*, i8** %19, align 8
  %127 = call i64 @strlen(i8* %126)
  %128 = load i64, i64* @IFNAMSIZ, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i8*, i8** %19, align 8
  %132 = load i64, i64* @IFNAMSIZ, align 8
  %133 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i8* %131, i64 %132)
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32*, i32** %7, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %136)
  %138 = load i32*, i32** %7, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %134, %116
  %142 = load i8*, i8** %15, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %173

155:                                              ; preds = %141
  %156 = load i8*, i8** %15, align 8
  %157 = call i32* @fopen(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %157, i32** %6, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i8*, i8** %15, align 8
  %162 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32*, i32** %6, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = call i64 @inf_parse(i32* %164, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 @errx(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %163
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @fclose(i32* %171)
  br label %173

173:                                              ; preds = %170, %144
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %209

178:                                              ; preds = %173
  %179 = load i8*, i8** %16, align 8
  %180 = call i32 @basename(i8* %179)
  %181 = call i8* @strdup(i32 %180)
  store i8* %181, i8** %16, align 8
  %182 = load i8*, i8** %16, align 8
  store i8* %182, i8** %14, align 8
  br label %183

183:                                              ; preds = %194, %178
  %184 = load i8*, i8** %14, align 8
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %183
  %188 = load i8*, i8** %14, align 8
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 46
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i8*, i8** %14, align 8
  store i8 95, i8* %193, align 1
  br label %194

194:                                              ; preds = %192, %187
  %195 = load i8*, i8** %14, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %14, align 8
  br label %183

197:                                              ; preds = %183
  %198 = load i32*, i32** %7, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0), i8* %199)
  %201 = load i32*, i32** %7, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0), i8* %202)
  %204 = load i8*, i8** %16, align 8
  %205 = load i8*, i8** %17, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @bincvt(i8* %204, i8* %205, i8* %206, i32 %207)
  br label %279

209:                                              ; preds = %173
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 (i32*, i8*, ...) @fprintf(i32* %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  %216 = load i32*, i32** %7, align 8
  %217 = call i32 (i32*, i8*, ...) @fprintf(i32* %216, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 %219)
  %221 = load i32*, i32** %7, align 8
  %222 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  %223 = load i8*, i8** %10, align 8
  store i8* %223, i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %275, %209
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %278

228:                                              ; preds = %224
  %229 = load i32*, i32** %7, align 8
  %230 = call i32 (i32*, i8*, ...) @fprintf(i32* %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %231

231:                                              ; preds = %272, %228
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 10
  br i1 %233, label %234, label %275

234:                                              ; preds = %231
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %234
  %241 = load i32*, i32** %7, align 8
  %242 = load i8*, i8** %14, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = call i32 (i32*, i8*, ...) @fprintf(i32* %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %247)
  br label %279

249:                                              ; preds = %234
  %250 = load i32, i32* %8, align 4
  %251 = icmp eq i32 %250, 9
  br i1 %251, label %252, label %261

252:                                              ; preds = %249
  %253 = load i32*, i32** %7, align 8
  %254 = load i8*, i8** %14, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = call i32 (i32*, i8*, ...) @fprintf(i32* %253, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %259)
  br label %270

261:                                              ; preds = %249
  %262 = load i32*, i32** %7, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %261, %252
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %231

275:                                              ; preds = %231
  %276 = load i8*, i8** %14, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 10
  store i8* %277, i8** %14, align 8
  br label %224

278:                                              ; preds = %224
  br label %279

279:                                              ; preds = %278, %240, %197
  %280 = load i32*, i32** %7, align 8
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %280, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0))
  %282 = load i32*, i32** %6, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = load i32*, i32** %6, align 8
  %286 = call i32 @fclose(i32* %285)
  br label %287

287:                                              ; preds = %284, %279
  %288 = load i32*, i32** %7, align 8
  %289 = call i32 @fclose(i32* %288)
  %290 = load i8*, i8** %10, align 8
  %291 = call i32 @free(i8* %290)
  %292 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @firmcvt(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @insert_padding(i8**, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @inf_parse(i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @bincvt(i8*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
