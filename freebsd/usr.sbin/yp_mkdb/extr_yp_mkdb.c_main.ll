; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yp_mkdb/extr_yp_mkdb.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yp_mkdb/extr_yp_mkdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_8__ = type { i8*, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"uhcbsfd:i:o:m:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"gethostname() failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"open_db(%s) failed\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"YP_INTERDOMAIN\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"YP_SECURE\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"YP_MASTER_NAME\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"YP_LAST_MODIFIED\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"YP_INPUT_FILE\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"YP_OUTPUT_FILE\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"YP_DOMAIN_NAME\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"bad input -- no white space: %s\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"bad character at start of line: %s\00", align 1
@YPMAXRECORD = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"key too long: %s\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"no key -- check source file for blank lines\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"data too long: %s\00", align 1
@YP_TRUE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"duplicate key '%s' - skipping\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"failed to write new record - exiting\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@YPPROC_CLEAR = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [43 x i8] c"failed to send 'clear' to local ypserv: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca %struct.TYPE_8__, align 8
  %21 = alloca [10240 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8, align 1
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %33 = add nsw i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %25, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  br label %37

37:                                               ; preds = %70, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = call i32 @getopt(i32 %38, i8** %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %68 [
    i32 102, label %44
    i32 117, label %47
    i32 99, label %50
    i32 98, label %53
    i32 115, label %56
    i32 100, label %59
    i32 105, label %61
    i32 111, label %63
    i32 109, label %65
    i32 104, label %67
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %70

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %70

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %70

53:                                               ; preds = %42
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %70

56:                                               ; preds = %42
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %70

59:                                               ; preds = %42
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** %12, align 8
  br label %70

61:                                               ; preds = %42
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** %13, align 8
  br label %70

63:                                               ; preds = %42
  %64 = load i8*, i8** @optarg, align 8
  store i8* %64, i8** %14, align 8
  br label %70

65:                                               ; preds = %42
  %66 = load i8*, i8** @optarg, align 8
  store i8* %66, i8** %15, align 8
  br label %70

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %42, %67
  %69 = call i32 (...) @usage()
  br label %70

70:                                               ; preds = %68, %65, %63, %61, %59, %56, %53, %50, %47, %44
  br label %37

71:                                               ; preds = %37
  %72 = load i64, i64* @optind, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  %77 = load i64, i64* @optind, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 %77
  store i8** %79, i8*** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %71
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 (...) @usage()
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @unwind(i8* %91)
  %93 = call i32 @exit(i32 0) #4
  unreachable

94:                                               ; preds = %71
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %10, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = load i8*, i8** %11, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103, %94
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %379

110:                                              ; preds = %106
  %111 = call i32 (...) @usage()
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i8*, i8** %15, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = trunc i64 %34 to i32
  %117 = call i32 @gethostname(i8* %36, i32 %116)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115
  store i8* %36, i8** %15, align 8
  br label %122

122:                                              ; preds = %121, %112
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i32*, i32** @stdin, align 8
  store i32* %127, i32** %24, align 8
  br label %136

128:                                              ; preds = %122
  %129 = load i8*, i8** %10, align 8
  %130 = call i32* @fopen(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %130, i32** %24, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %128
  br label %136

136:                                              ; preds = %135, %126
  %137 = load i8*, i8** %11, align 8
  %138 = load i32, i32* @O_RDWR, align 4
  %139 = load i32, i32* @O_EXLOCK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @O_EXCL, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @O_CREAT, align 4
  %144 = or i32 %142, %143
  %145 = call %struct.TYPE_9__* @open_db(i8* %137, i32 %144)
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %18, align 8
  %146 = icmp eq %struct.TYPE_9__* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %147, %136
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 14, i32* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 0, i32* %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %159 = call i32 @yp_put_record(%struct.TYPE_9__* %158, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  br label %160

160:                                              ; preds = %153, %150
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 9, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %169 = call i32 @yp_put_record(%struct.TYPE_9__* %168, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  br label %170

170:                                              ; preds = %163, %160
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 14, i32* %172, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* %173, i8** %174, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call i32 @strlen(i8* %175)
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %176, i32* %177, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %179 = call i32 @yp_put_record(%struct.TYPE_9__* %178, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 16, i32* %181, align 8
  %182 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %183 = call i64 @time(i32* null)
  %184 = trunc i64 %183 to i32
  %185 = call i32 @snprintf(i8* %182, i32 10240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %184)
  %186 = bitcast [10240 x i8]* %21 to i8*
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %189 = call i32 @strlen(i8* %188)
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %189, i32* %190, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %192 = call i32 @yp_put_record(%struct.TYPE_9__* %191, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  %193 = load i8*, i8** %13, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %170
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 13, i32* %197, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* %198, i8** %199, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = call i32 @strlen(i8* %200)
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %201, i32* %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %204 = call i32 @yp_put_record(%struct.TYPE_9__* %203, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  br label %205

205:                                              ; preds = %195, %170
  %206 = load i8*, i8** %14, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 14, i32* %210, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* %211, i8** %212, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = call i32 @strlen(i8* %213)
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %214, i32* %215, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %217 = call i32 @yp_put_record(%struct.TYPE_9__* %216, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  br label %218

218:                                              ; preds = %208, %205
  %219 = load i8*, i8** %12, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %222, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 14, i32* %223, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* %224, i8** %225, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = call i32 @strlen(i8* %226)
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %227, i32* %228, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %230 = call i32 @yp_put_record(%struct.TYPE_9__* %229, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  br label %231

231:                                              ; preds = %221, %218
  br label %232

232:                                              ; preds = %372, %345, %338, %331, %322, %276, %231
  %233 = bitcast [10240 x i8]* %21 to i8*
  %234 = load i32*, i32** %24, align 8
  %235 = call i64 @fgets(i8* %233, i32 10240, i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %373

237:                                              ; preds = %232
  store i8* null, i8** %27, align 8
  %238 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %239 = call i8* @strchr(i8* %238, i8 signext 10)
  store i8* %239, i8** %27, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = load i8*, i8** %27, align 8
  store i8 0, i8* %242, align 1
  br label %243

243:                                              ; preds = %241, %237
  br label %244

244:                                              ; preds = %271, %243
  %245 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %246 = call i32 @strlen(i8* %245)
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 92
  br i1 %252, label %253, label %272

253:                                              ; preds = %244
  %254 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %255 = call i32 @strlen(i8* %254)
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 %257
  %259 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %260 = call i32 @strlen(i8* %259)
  %261 = sext i32 %260 to i64
  %262 = sub i64 10240, %261
  %263 = trunc i64 %262 to i32
  %264 = load i32*, i32** %24, align 8
  %265 = call i64 @fgets(i8* %258, i32 %263, i32* %264)
  %266 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %267 = call i8* @strchr(i8* %266, i8 signext 10)
  store i8* %267, i8** %27, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %271

269:                                              ; preds = %253
  %270 = load i8*, i8** %27, align 8
  store i8 0, i8* %270, align 1
  br label %271

271:                                              ; preds = %269, %253
  br label %244

272:                                              ; preds = %244
  %273 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %274 = call i8* @strpbrk(i8* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i8* %274, i8** %27, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %278 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* %277)
  br label %232

279:                                              ; preds = %272
  %280 = bitcast [10240 x i8]* %21 to i8*
  store i8* %280, i8** %22, align 8
  %281 = load i8*, i8** %27, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  store i8* %282, i8** %23, align 8
  %283 = load i8*, i8** %27, align 8
  store i8 0, i8* %283, align 1
  br label %284

284:                                              ; preds = %296, %279
  %285 = load i8*, i8** %23, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 32
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = load i8*, i8** %23, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 9
  br label %294

294:                                              ; preds = %289, %284
  %295 = phi i1 [ true, %284 ], [ %293, %289 ]
  br i1 %295, label %296, label %299

296:                                              ; preds = %294
  %297 = load i8*, i8** %23, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %23, align 8
  br label %284

299:                                              ; preds = %294
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %326

302:                                              ; preds = %299
  %303 = load i8*, i8** %22, align 8
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 43
  br i1 %306, label %322, label %307

307:                                              ; preds = %302
  %308 = load i8*, i8** %22, align 8
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 45
  br i1 %311, label %322, label %312

312:                                              ; preds = %307
  %313 = load i8*, i8** %23, align 8
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 43
  br i1 %316, label %322, label %317

317:                                              ; preds = %312
  %318 = load i8*, i8** %23, align 8
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp eq i32 %320, 45
  br i1 %321, label %322, label %325

322:                                              ; preds = %317, %312, %307, %302
  %323 = getelementptr inbounds [10240 x i8], [10240 x i8]* %21, i64 0, i64 0
  %324 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* %323)
  br label %232

325:                                              ; preds = %317
  br label %326

326:                                              ; preds = %325, %299
  %327 = load i8*, i8** %22, align 8
  %328 = call i32 @strlen(i8* %327)
  %329 = load i32, i32* @YPMAXRECORD, align 4
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = load i8*, i8** %22, align 8
  %333 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %332)
  br label %232

334:                                              ; preds = %326
  %335 = load i8*, i8** %22, align 8
  %336 = call i32 @strlen(i8* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %334
  %339 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0))
  br label %232

340:                                              ; preds = %334
  %341 = load i8*, i8** %23, align 8
  %342 = call i32 @strlen(i8* %341)
  %343 = load i32, i32* @YPMAXRECORD, align 4
  %344 = icmp sgt i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load i8*, i8** %23, align 8
  %347 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* %346)
  br label %232

348:                                              ; preds = %340
  %349 = load i8*, i8** %22, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i8* %349, i8** %350, align 8
  %351 = load i8*, i8** %22, align 8
  %352 = call i32 @strlen(i8* %351)
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 %352, i32* %353, align 8
  %354 = load i8*, i8** %23, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8* %354, i8** %355, align 8
  %356 = load i8*, i8** %23, align 8
  %357 = call i32 @strlen(i8* %356)
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %357, i32* %358, align 8
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %360 = call i32 @yp_put_record(%struct.TYPE_9__* %359, %struct.TYPE_8__* %19, %struct.TYPE_8__* %20, i32 0)
  store i32 %360, i32* %28, align 4
  %361 = load i32, i32* @YP_TRUE, align 4
  %362 = icmp ne i32 %360, %361
  br i1 %362, label %363, label %372

363:                                              ; preds = %348
  %364 = load i32, i32* %28, align 4
  switch i32 %364, label %369 [
    i32 128, label %365
    i32 129, label %368
  ]

365:                                              ; preds = %363
  %366 = load i8*, i8** %22, align 8
  %367 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i8* %366)
  br label %371

368:                                              ; preds = %363
  br label %369

369:                                              ; preds = %363, %368
  %370 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  br label %371

371:                                              ; preds = %369, %365
  br label %372

372:                                              ; preds = %371, %348
  br label %232

373:                                              ; preds = %232
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %375, align 8
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %378 = call i32 %376(%struct.TYPE_9__* %377)
  br label %379

379:                                              ; preds = %373, %109
  %380 = load i32, i32* %8, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %399

382:                                              ; preds = %379
  store i8 0, i8* %29, align 1
  store i8* null, i8** %30, align 8
  %383 = load i32, i32* @YPPROG, align 4
  %384 = load i32, i32* @YPVERS, align 4
  %385 = load i32, i32* @YPPROC_CLEAR, align 4
  %386 = load i64, i64* @xdr_void, align 8
  %387 = trunc i64 %386 to i32
  %388 = load i64, i64* @xdr_void, align 8
  %389 = trunc i64 %388 to i32
  %390 = load i8*, i8** %30, align 8
  %391 = call i32 @callrpc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %383, i32 %384, i32 %385, i32 %387, i8* %29, i32 %389, i8* %390)
  store i32 %391, i32* %31, align 4
  %392 = load i32, i32* @RPC_SUCCESS, align 4
  %393 = icmp ne i32 %391, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %382
  %395 = load i32, i32* %31, align 4
  %396 = call i8* @clnt_sperrno(i32 %395)
  %397 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i8* %396)
  br label %398

398:                                              ; preds = %394, %382
  br label %399

399:                                              ; preds = %398, %379
  %400 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @unwind(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local %struct.TYPE_9__* @open_db(i8*, i32) #2

declare dso_local i32 @yp_put_record(%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @callrpc(i8*, i32, i32, i32, i32, i8*, i32, i8*) #2

declare dso_local i8* @clnt_sperrno(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
