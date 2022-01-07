; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_ShowStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_ShowStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.physical*, %struct.TYPE_9__ }
%struct.physical = type { i64, i64, i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, %struct.cd, i64, i32 }
%struct.cd = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.cd, i32 (%struct.physical*)* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" State:           \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"closed\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"open (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"open (%s, port %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"open (port %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" Device:          %s\00", align 1
@PHYS_DIRECT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c" (session owner: %ld)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\0A Link Type:       %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" Connect Count:   %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" Queued Packets:  %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c" Phone Number:    %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\0ADefaults:\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c" Device List:     \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\0A Characteristics: \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%dbps\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c", cs7\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c", cs8\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c", odd parity\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c", even parity\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c", no parity\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c", CTS/RTS %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c" CD check delay:  \00", align 1
@CD_NOTREQUIRED = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"no cd\00", align 1
@CD_DEFAULT = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"device specific\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"%d second%s\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@CD_REQUIRED = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c" (required!)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@TIOCOUTQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_ShowStatus(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.cd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.physical*, %struct.physical** %11, align 8
  store %struct.physical* %12, %struct.physical** %3, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.physical*, %struct.physical** %3, align 8
  %17 = getelementptr inbounds %struct.physical, %struct.physical* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %22 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.physical*, %struct.physical** %3, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %31 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %93

34:                                               ; preds = %1
  %35 = load %struct.physical*, %struct.physical** %3, align 8
  %36 = call i32 @physical_Slot(%struct.physical* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.physical*, %struct.physical** %3, align 8
  %38 = getelementptr inbounds %struct.physical, %struct.physical* %37, i32 0, i32 5
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %77

41:                                               ; preds = %34
  %42 = load %struct.physical*, %struct.physical** %3, align 8
  %43 = getelementptr inbounds %struct.physical, %struct.physical* %42, i32 0, i32 5
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %45, align 8
  %47 = icmp ne i32 (%struct.physical*)* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %53 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.physical*, %struct.physical** %3, align 8
  %56 = getelementptr inbounds %struct.physical, %struct.physical* %55, i32 0, i32 5
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %58, align 8
  %60 = load %struct.physical*, %struct.physical** %3, align 8
  %61 = call i32 %59(%struct.physical* %60)
  %62 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %76

63:                                               ; preds = %48
  %64 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %65 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.physical*, %struct.physical** %3, align 8
  %68 = getelementptr inbounds %struct.physical, %struct.physical* %67, i32 0, i32 5
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %70, align 8
  %72 = load %struct.physical*, %struct.physical** %3, align 8
  %73 = call i32 %71(%struct.physical* %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %51
  br label %92

77:                                               ; preds = %41, %34
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %91

85:                                               ; preds = %77
  %86 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %87 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %80
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %29
  %94 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %95 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.physical*, %struct.physical** %3, align 8
  %98 = getelementptr inbounds %struct.physical, %struct.physical* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.physical*, %struct.physical** %3, align 8
  %106 = getelementptr inbounds %struct.physical, %struct.physical* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  br label %117

109:                                              ; preds = %93
  %110 = load %struct.physical*, %struct.physical** %3, align 8
  %111 = getelementptr inbounds %struct.physical, %struct.physical* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PHYS_DIRECT, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  br label %117

117:                                              ; preds = %109, %104
  %118 = phi i8* [ %108, %104 ], [ %116, %109 ]
  %119 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  %120 = load %struct.physical*, %struct.physical** %3, align 8
  %121 = getelementptr inbounds %struct.physical, %struct.physical* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, -1
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %126 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.physical*, %struct.physical** %3, align 8
  %129 = getelementptr inbounds %struct.physical, %struct.physical* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %124, %117
  %133 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %134 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.physical*, %struct.physical** %3, align 8
  %137 = getelementptr inbounds %struct.physical, %struct.physical* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @mode2Nam(i64 %138)
  %140 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  %141 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %142 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.physical*, %struct.physical** %3, align 8
  %145 = getelementptr inbounds %struct.physical, %struct.physical* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %146)
  %148 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %149 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.physical*, %struct.physical** %3, align 8
  %152 = getelementptr inbounds %struct.physical, %struct.physical* %151, i32 0, i32 3
  %153 = call i64 @link_QueueLen(%struct.TYPE_14__* %152)
  %154 = trunc i64 %153 to i32
  %155 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %154)
  %156 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %157 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %160 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %159, i32 0, i32 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %164)
  %166 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %167 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %170 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %171 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %174 = load %struct.physical*, %struct.physical** %3, align 8
  %175 = getelementptr inbounds %struct.physical, %struct.physical* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %204, %132
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.physical*, %struct.physical** %3, align 8
  %181 = getelementptr inbounds %struct.physical, %struct.physical* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %207

185:                                              ; preds = %178
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %190 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %193

193:                                              ; preds = %188, %185
  %194 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %195 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %197)
  %199 = load i8*, i8** %5, align 8
  %200 = call i64 @strlen(i8* %199)
  %201 = add nsw i64 %200, 1
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 %201
  store i8* %203, i8** %5, align 8
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %178

207:                                              ; preds = %178
  %208 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %209 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %212 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %213 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.physical*, %struct.physical** %215, align 8
  %217 = call i64 @physical_IsSync(%struct.physical* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %207
  %220 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %221 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %233

224:                                              ; preds = %207
  %225 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %226 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.physical*, %struct.physical** %3, align 8
  %229 = getelementptr inbounds %struct.physical, %struct.physical* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %224, %219
  %234 = load %struct.physical*, %struct.physical** %3, align 8
  %235 = getelementptr inbounds %struct.physical, %struct.physical* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @CSIZE, align 4
  %239 = and i32 %237, %238
  switch i32 %239, label %250 [
    i32 129, label %240
    i32 128, label %245
  ]

240:                                              ; preds = %233
  %241 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %242 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %250

245:                                              ; preds = %233
  %246 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %247 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %250

250:                                              ; preds = %233, %245, %240
  %251 = load %struct.physical*, %struct.physical** %3, align 8
  %252 = getelementptr inbounds %struct.physical, %struct.physical* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @PARENB, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %250
  %259 = load %struct.physical*, %struct.physical** %3, align 8
  %260 = getelementptr inbounds %struct.physical, %struct.physical* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @PARODD, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %258
  %267 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %268 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %269, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  br label %276

271:                                              ; preds = %258
  %272 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %273 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %274, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %276

276:                                              ; preds = %271, %266
  br label %282

277:                                              ; preds = %250
  %278 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %279 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  br label %282

282:                                              ; preds = %277, %276
  %283 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %284 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.physical*, %struct.physical** %3, align 8
  %287 = getelementptr inbounds %struct.physical, %struct.physical* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)
  %293 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %285, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %292)
  %294 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %295 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %298 = load %struct.physical*, %struct.physical** %3, align 8
  %299 = getelementptr inbounds %struct.physical, %struct.physical* %298, i32 0, i32 5
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = icmp ne %struct.TYPE_11__* %300, null
  br i1 %301, label %302, label %307

302:                                              ; preds = %282
  %303 = load %struct.physical*, %struct.physical** %3, align 8
  %304 = getelementptr inbounds %struct.physical, %struct.physical* %303, i32 0, i32 5
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  br label %311

307:                                              ; preds = %282
  %308 = load %struct.physical*, %struct.physical** %3, align 8
  %309 = getelementptr inbounds %struct.physical, %struct.physical* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 3
  br label %311

311:                                              ; preds = %307, %302
  %312 = phi %struct.cd* [ %306, %302 ], [ %310, %307 ]
  store %struct.cd* %312, %struct.cd** %4, align 8
  %313 = load %struct.cd*, %struct.cd** %4, align 8
  %314 = getelementptr inbounds %struct.cd, %struct.cd* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @CD_NOTREQUIRED, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %311
  %319 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %320 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  br label %368

323:                                              ; preds = %311
  %324 = load %struct.physical*, %struct.physical** %3, align 8
  %325 = getelementptr inbounds %struct.physical, %struct.physical* %324, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.cd, %struct.cd* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @CD_DEFAULT, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %323
  %332 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %333 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %334, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  br label %367

336:                                              ; preds = %323
  %337 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %338 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.physical*, %struct.physical** %3, align 8
  %341 = getelementptr inbounds %struct.physical, %struct.physical* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.cd, %struct.cd* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.physical*, %struct.physical** %3, align 8
  %346 = getelementptr inbounds %struct.physical, %struct.physical* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.cd, %struct.cd* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = icmp eq i32 %349, 1
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)
  %353 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 %344, i8* %352)
  %354 = load %struct.physical*, %struct.physical** %3, align 8
  %355 = getelementptr inbounds %struct.physical, %struct.physical* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.cd, %struct.cd* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @CD_REQUIRED, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %336
  %362 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %363 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %364, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  br label %366

366:                                              ; preds = %361, %336
  br label %367

367:                                              ; preds = %366, %331
  br label %368

368:                                              ; preds = %367, %318
  %369 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %370 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %371, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  %373 = load %struct.physical*, %struct.physical** %3, align 8
  %374 = getelementptr inbounds %struct.physical, %struct.physical* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  %377 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %378 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @throughput_disp(i32* %376, i32 %379)
  ret i32 0
}

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i32 @physical_Slot(%struct.physical*) #1

declare dso_local i32 @mode2Nam(i64) #1

declare dso_local i64 @link_QueueLen(%struct.TYPE_14__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @throughput_disp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
