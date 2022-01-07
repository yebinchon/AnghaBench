; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_sample.c_write_sample_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_sample.c_write_sample_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\0A\0Avoid\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(char *host)\0A{\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09CLIENT *clnt;\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"enum clnt_stat retval_%d;\0A\09\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"result_%d;\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" *result_%d;\0A\00", align 1
@newstyle = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"char * \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"_arg;\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"_%s;\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\0A#ifndef\09DEBUG\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\09clnt = clnt_create(host, %s, %s, \22%s\22);\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"netpath\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\09if (clnt == (CLIENT *) NULL) {\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\09\09clnt_pcreateerror(host);\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\09\09exit(1);\0A\09}\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"#endif\09/* DEBUG */\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"\09retval_%d = \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\09result_%d = \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"(void *)\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"_arg, &result_%d, clnt);\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"_arg, clnt);\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"(&result_%d, clnt);\0A\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"(clnt);\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"_%s, \00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"&result_%d, \00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"clnt);\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"\09if (retval_%d != RPC_SUCCESS) {\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"\09if (result_%d == (\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"*) NULL) {\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"\09\09clnt_perror(clnt, \22call failed\22);\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"#ifndef\09DEBUG\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"\09clnt_destroy(clnt);\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"#endif\09\09/* DEBUG */\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_9__*)* @write_sample_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_sample_client(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32, i32* @fout, align 4
  %9 = call i32 (i32, i8*, ...) @f_print(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pvname(i8* %10, i32 %13)
  %15 = load i32, i32* @fout, align 4
  %16 = call i32 (i32, i8*, ...) @f_print(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @fout, align 4
  %18 = call i32 (i32, i8*, ...) @f_print(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %5, align 8
  br label %22

22:                                               ; preds = %168, %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %172

25:                                               ; preds = %22
  %26 = load i32, i32* @fout, align 4
  %27 = call i32 (i32, i8*, ...) @f_print(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i64, i64* @mtflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, i32* @fout, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @f_print(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ptype(i32 %37, i32 %40, i32 1)
  %42 = load i32, i32* @fout, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, ...) @f_print(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %57

45:                                               ; preds = %25
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ptype(i32 %48, i32 %51, i32 1)
  %53 = load i32, i32* @fout, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @f_print(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %45, %30
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %108

62:                                               ; preds = %57
  %63 = load i32, i32* @newstyle, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %108, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @fout, align 4
  %67 = call i32 (i32, i8*, ...) @f_print(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @streq(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %65
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ptype(i32 %84, i32 %91, i32 1)
  br label %96

93:                                               ; preds = %65
  %94 = load i32, i32* @fout, align 4
  %95 = call i32 (i32, i8*, ...) @f_print(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %77
  %97 = load i32, i32* @fout, align 4
  %98 = call i32 (i32, i8*, ...) @f_print(i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @pvname(i8* %101, i32 %104)
  %106 = load i32, i32* @fout, align 4
  %107 = call i32 (i32, i8*, ...) @f_print(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %167

108:                                              ; preds = %62, %57
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @streq(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %166, label %118

118:                                              ; preds = %108
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %7, align 8
  br label %123

123:                                              ; preds = %161, %118
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = icmp ne %struct.TYPE_11__* %124, null
  br i1 %125, label %126, label %165

126:                                              ; preds = %123
  %127 = load i32, i32* @fout, align 4
  %128 = call i32 (i32, i8*, ...) @f_print(i32 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ptype(i32 %132, i32 %136, i32 1)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @strcmp(i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %143 = icmp sge i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %126
  %145 = load i32, i32* @fout, align 4
  %146 = call i32 (i32, i8*, ...) @f_print(i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %126
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @pvname(i8* %150, i32 %153)
  %155 = load i32, i32* @fout, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @f_print(i32 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %147
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  store %struct.TYPE_11__* %164, %struct.TYPE_11__** %7, align 8
  br label %123

165:                                              ; preds = %123
  br label %166

166:                                              ; preds = %165, %108
  br label %167

167:                                              ; preds = %166, %96
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %5, align 8
  br label %22

172:                                              ; preds = %22
  %173 = load i32, i32* @fout, align 4
  %174 = call i32 (i32, i8*, ...) @f_print(i32 %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %175 = load i32, i32* @fout, align 4
  %176 = load i8*, i8** %3, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* @tirpcflag, align 8
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %184 = call i32 (i32, i8*, ...) @f_print(i32 %175, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* %176, i32 %179, i8* %183)
  %185 = load i32, i32* @fout, align 4
  %186 = call i32 (i32, i8*, ...) @f_print(i32 %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %187 = load i32, i32* @fout, align 4
  %188 = call i32 (i32, i8*, ...) @f_print(i32 %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %189 = load i32, i32* @fout, align 4
  %190 = call i32 (i32, i8*, ...) @f_print(i32 %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %191 = load i32, i32* @fout, align 4
  %192 = call i32 (i32, i8*, ...) @f_print(i32 %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  store %struct.TYPE_10__* %195, %struct.TYPE_10__** %5, align 8
  br label %196

196:                                              ; preds = %347, %172
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = icmp ne %struct.TYPE_10__* %197, null
  br i1 %198, label %199, label %351

199:                                              ; preds = %196
  %200 = load i64, i64* @mtflag, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i32, i32* @fout, align 4
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  %206 = call i32 (i32, i8*, ...) @f_print(i32 %203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %205)
  br label %212

207:                                              ; preds = %199
  %208 = load i32, i32* @fout, align 4
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  %211 = call i32 (i32, i8*, ...) @f_print(i32 %208, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %207, %202
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @pvname(i8* %215, i32 %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %222, 2
  br i1 %223, label %224, label %262

224:                                              ; preds = %212
  %225 = load i32, i32* @newstyle, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %262, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* @fout, align 4
  %229 = call i32 (i32, i8*, ...) @f_print(i32 %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @streq(i32 %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = load i32, i32* @fout, align 4
  %241 = call i32 (i32, i8*, ...) @f_print(i32 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %227
  %243 = load i32, i32* @fout, align 4
  %244 = call i32 (i32, i8*, ...) @f_print(i32 %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @pvname(i8* %247, i32 %250)
  %252 = load i64, i64* @mtflag, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %242
  %255 = load i32, i32* @fout, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 (i32, i8*, ...) @f_print(i32 %255, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %256)
  br label %261

258:                                              ; preds = %242
  %259 = load i32, i32* @fout, align 4
  %260 = call i32 (i32, i8*, ...) @f_print(i32 %259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %254
  br label %322

262:                                              ; preds = %224, %212
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @streq(i32 %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %262
  %273 = load i64, i64* @mtflag, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32, i32* @fout, align 4
  %277 = load i32, i32* %6, align 4
  %278 = call i32 (i32, i8*, ...) @f_print(i32 %276, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %277)
  br label %282

279:                                              ; preds = %272
  %280 = load i32, i32* @fout, align 4
  %281 = call i32 (i32, i8*, ...) @f_print(i32 %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %275
  br label %321

283:                                              ; preds = %262
  %284 = load i32, i32* @fout, align 4
  %285 = call i32 (i32, i8*, ...) @f_print(i32 %284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  store %struct.TYPE_11__* %289, %struct.TYPE_11__** %7, align 8
  br label %290

290:                                              ; preds = %307, %283
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %292 = icmp ne %struct.TYPE_11__* %291, null
  br i1 %292, label %293, label %311

293:                                              ; preds = %290
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @pvname(i8* %296, i32 %299)
  %301 = load i32, i32* @fout, align 4
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 (i32, i8*, ...) @f_print(i32 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %293
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  store %struct.TYPE_11__* %310, %struct.TYPE_11__** %7, align 8
  br label %290

311:                                              ; preds = %290
  %312 = load i64, i64* @mtflag, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load i32, i32* @fout, align 4
  %316 = load i32, i32* %6, align 4
  %317 = call i32 (i32, i8*, ...) @f_print(i32 %315, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 %316)
  br label %318

318:                                              ; preds = %314, %311
  %319 = load i32, i32* @fout, align 4
  %320 = call i32 (i32, i8*, ...) @f_print(i32 %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %282
  br label %322

322:                                              ; preds = %321, %261
  %323 = load i64, i64* @mtflag, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = load i32, i32* @fout, align 4
  %327 = load i32, i32* %6, align 4
  %328 = call i32 (i32, i8*, ...) @f_print(i32 %326, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 %327)
  br label %342

329:                                              ; preds = %322
  %330 = load i32, i32* @fout, align 4
  %331 = load i32, i32* %6, align 4
  %332 = call i32 (i32, i8*, ...) @f_print(i32 %330, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 %331)
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @ptype(i32 %335, i32 %338, i32 1)
  %340 = load i32, i32* @fout, align 4
  %341 = call i32 (i32, i8*, ...) @f_print(i32 %340, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  br label %342

342:                                              ; preds = %329, %325
  %343 = load i32, i32* @fout, align 4
  %344 = call i32 (i32, i8*, ...) @f_print(i32 %343, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0))
  %345 = load i32, i32* @fout, align 4
  %346 = call i32 (i32, i8*, ...) @f_print(i32 %345, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0))
  br label %347

347:                                              ; preds = %342
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 5
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  store %struct.TYPE_10__* %350, %struct.TYPE_10__** %5, align 8
  br label %196

351:                                              ; preds = %196
  %352 = load i32, i32* @fout, align 4
  %353 = call i32 (i32, i8*, ...) @f_print(i32 %352, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  %354 = load i32, i32* @fout, align 4
  %355 = call i32 (i32, i8*, ...) @f_print(i32 %354, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0))
  %356 = load i32, i32* @fout, align 4
  %357 = call i32 (i32, i8*, ...) @f_print(i32 %356, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0))
  %358 = load i32, i32* @fout, align 4
  %359 = call i32 (i32, i8*, ...) @f_print(i32 %358, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @pvname(i8*, i32) #1

declare dso_local i32 @ptype(i32, i32, i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
