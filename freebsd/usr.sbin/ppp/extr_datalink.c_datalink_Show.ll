; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8*, i64, %struct.TYPE_12__, %struct.TYPE_21__*, %struct.TYPE_17__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8*, i8* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_19__ = type { i8*, i8*, i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" State:              %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c" Peer name:          \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DATALINK_OPEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"None requested\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"N/A\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" Discriminator:      %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\0ADefaults:\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c" Phone List:         %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" Dial tries:         %d, delay \00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c" Dial tries:         infinite, delay \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%ds/\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"random/\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%ds\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"random\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c" Reconnect tries:    %d, delay \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c" Callback %s \00", align 1
@PHYS_DIRECT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"accepted: \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"requested:\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@CALLBACK_NONE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@CALLBACK_AUTH = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"%sauth\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CALLBACK_E164 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"%sE.164\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@CALLBACK_CBCP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"%scbcp\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c" CBCP:               delay: %ds\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"                     phone: \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Caller decides\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Dialback server decides\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"                     timeout: %lds\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c" Dial Script:        %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c" Login Script:       %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c" Logout Script:      %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c" Hangup Script:      %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datalink_Show(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 0
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = call i8* @datalink_State(%struct.TYPE_13__* %18)
  %20 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %22 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %35 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  br label %63

44:                                               ; preds = %1
  %45 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DATALINK_OPEN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %54 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %62

57:                                               ; preds = %44
  %58 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %59 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %65 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %68 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %75 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @mp_Enddisc(i32 %73, i32 %80, i32 %87)
  %89 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %91 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %94 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %95 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %98 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  %105 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %106 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %63
  %114 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %115 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %118 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %123)
  br label %130

125:                                              ; preds = %63
  %126 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %127 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %113
  %131 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %132 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %131, i32 0, i32 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = icmp uge i8* %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %130
  %140 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %141 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %144 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %149)
  br label %156

151:                                              ; preds = %130
  %152 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %153 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %156

156:                                              ; preds = %151, %139
  %157 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %158 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = icmp uge i8* %163, null
  br i1 %164, label %165, label %177

165:                                              ; preds = %156
  %166 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %167 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %170 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %169, i32 0, i32 0
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %175)
  br label %182

177:                                              ; preds = %156
  %178 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %179 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %182

182:                                              ; preds = %177, %165
  %183 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %184 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %187 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %186, i32 0, i32 0
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %192)
  %194 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %195 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %194, i32 0, i32 0
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ugt i8* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %182
  %203 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %204 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %207 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %206, i32 0, i32 0
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %212)
  br label %219

214:                                              ; preds = %182
  %215 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %216 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %219

219:                                              ; preds = %214, %202
  %220 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %221 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %224 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %223, i32 0, i32 0
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @PHYS_DIRECT, align 4
  %231 = icmp eq i32 %229, %230
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0)
  %234 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %233)
  %235 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %236 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %235, i32 0, i32 0
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %219
  %244 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %245 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %426

248:                                              ; preds = %219
  store i32 0, i32* %3, align 4
  %249 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %250 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %249, i32 0, i32 0
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @CALLBACK_NONE, align 4
  %257 = call i32 @CALLBACK_BIT(i32 %256)
  %258 = and i32 %255, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %248
  %261 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %262 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %265

265:                                              ; preds = %260, %248
  %266 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %267 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %266, i32 0, i32 0
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @CALLBACK_AUTH, align 4
  %274 = call i32 @CALLBACK_BIT(i32 %273)
  %275 = and i32 %272, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %265
  %278 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %279 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %3, align 4
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0)
  %285 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %284)
  store i32 1, i32* %3, align 4
  br label %286

286:                                              ; preds = %277, %265
  %287 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %288 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %287, i32 0, i32 0
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @CALLBACK_E164, align 4
  %295 = call i32 @CALLBACK_BIT(i32 %294)
  %296 = and i32 %293, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %329

298:                                              ; preds = %286
  %299 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %300 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %3, align 4
  %303 = icmp ne i32 %302, 0
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0)
  %306 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %305)
  %307 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %308 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %307, i32 0, i32 0
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @PHYS_DIRECT, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %298
  %317 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %318 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %321 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %320, i32 0, i32 0
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 1
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* %326)
  br label %328

328:                                              ; preds = %316, %298
  store i32 1, i32* %3, align 4
  br label %329

329:                                              ; preds = %328, %286
  %330 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %331 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %330, i32 0, i32 0
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @CALLBACK_CBCP, align 4
  %338 = call i32 @CALLBACK_BIT(i32 %337)
  %339 = and i32 %336, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %420

341:                                              ; preds = %329
  %342 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %343 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %3, align 4
  %346 = icmp ne i32 %345, 0
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0)
  %349 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* %348)
  %350 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %351 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %354 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %353, i32 0, i32 0
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %352, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* %359)
  %361 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %362 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %363, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  %365 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %366 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %365, i32 0, i32 0
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %396, label %374

374:                                              ; preds = %341
  %375 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %376 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %375, i32 0, i32 0
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @PHYS_DIRECT, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %374
  %386 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %387 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %388, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  br label %395

390:                                              ; preds = %374
  %391 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %392 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %393, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  br label %395

395:                                              ; preds = %390, %385
  br label %408

396:                                              ; preds = %341
  %397 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %398 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %401 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %400, i32 0, i32 0
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %399, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %406)
  br label %408

408:                                              ; preds = %396, %395
  %409 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %410 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %413 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %412, i32 0, i32 0
  %414 = load %struct.TYPE_13__*, %struct.TYPE_13__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 2
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %411, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0), i8* %418)
  br label %425

420:                                              ; preds = %329
  %421 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %422 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %423, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %425

425:                                              ; preds = %420, %408
  br label %426

426:                                              ; preds = %425, %243
  %427 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %428 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %431 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %430, i32 0, i32 0
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %429, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i8* %436)
  %438 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %439 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %442 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %441, i32 0, i32 0
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %445, i32 0, i32 1
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %440, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %447)
  %449 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %450 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %453 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %452, i32 0, i32 0
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 2
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %451, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* %458)
  %460 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %461 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %464 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %463, i32 0, i32 0
  %465 = load %struct.TYPE_13__*, %struct.TYPE_13__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 3
  %469 = load i8*, i8** %468, align 8
  %470 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %462, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* %469)
  ret i32 0
}

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i8* @datalink_State(%struct.TYPE_13__*) #1

declare dso_local i8* @mp_Enddisc(i32, i32, i32) #1

declare dso_local i32 @CALLBACK_BIT(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
