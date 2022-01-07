; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_ReportStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_ReportStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* (i32*)*, i64 }
%struct.cmdargs = type { i32 }
%struct.ccp_opt = type { i32, %struct.ccp_opt* }
%struct.link = type { i32, %struct.ccp }
%struct.ccp = type { %struct.TYPE_20__, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i8*, i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.ccp_opt* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: %s [%s]\0A\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c" My protocol = %s, His protocol = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c" Output: %ld --> %ld,  Input: %ld --> %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A Input Options:  %s\0A\00", align 1
@algorithm = common dso_local global %struct.TYPE_11__** null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c" Output Options: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\0A Defaults: \00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"FSM retry = %us, max %u Config REQ%s, %u Term REQ%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"           deflate windows: \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"incoming = %d, \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"outgoing = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"           MPPE: \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d bits, \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"any bits, \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"stateful\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"stateless\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"any state\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c", required\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"\0A           DEFLATE:    %s\0A\00", align 1
@CCP_NEG_DEFLATE = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [27 x i8] c"           PREDICTOR1: %s\0A\00", align 1
@CCP_NEG_PRED1 = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [27 x i8] c"           DEFLATE24:  %s\0A\00", align 1
@CCP_NEG_DEFLATE24 = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [27 x i8] c"           MPPE:       %s\0A\00", align 1
@CCP_NEG_MPPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_ReportStatus(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.ccp_opt**, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.ccp*, align 8
  %6 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %8 = call %struct.link* @command_ChooseLink(%struct.cmdargs* %7)
  store %struct.link* %8, %struct.link** %4, align 8
  %9 = load %struct.link*, %struct.link** %4, align 8
  %10 = getelementptr inbounds %struct.link, %struct.link* %9, i32 0, i32 1
  store %struct.ccp* %10, %struct.ccp** %5, align 8
  %11 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.link*, %struct.link** %4, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ccp*, %struct.ccp** %5, align 8
  %18 = getelementptr inbounds %struct.ccp, %struct.ccp* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ccp*, %struct.ccp** %5, align 8
  %22 = getelementptr inbounds %struct.ccp, %struct.ccp* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @State2Nam(i64 %24)
  %26 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %25)
  %27 = load %struct.ccp*, %struct.ccp** %5, align 8
  %28 = getelementptr inbounds %struct.ccp, %struct.ccp* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ST_OPENED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %1
  %34 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %35 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccp*, %struct.ccp** %5, align 8
  %38 = getelementptr inbounds %struct.ccp, %struct.ccp* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @protoname(i32 %39)
  %41 = load %struct.ccp*, %struct.ccp** %5, align 8
  %42 = getelementptr inbounds %struct.ccp, %struct.ccp* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @protoname(i32 %43)
  %45 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %47 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ccp*, %struct.ccp** %5, align 8
  %50 = getelementptr inbounds %struct.ccp, %struct.ccp* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ccp*, %struct.ccp** %5, align 8
  %53 = getelementptr inbounds %struct.ccp, %struct.ccp* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ccp*, %struct.ccp** %5, align 8
  %56 = getelementptr inbounds %struct.ccp, %struct.ccp* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ccp*, %struct.ccp** %5, align 8
  %59 = getelementptr inbounds %struct.ccp, %struct.ccp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %33, %1
  %63 = load %struct.ccp*, %struct.ccp** %5, align 8
  %64 = getelementptr inbounds %struct.ccp, %struct.ccp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %70 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %73 = load %struct.ccp*, %struct.ccp** %5, align 8
  %74 = getelementptr inbounds %struct.ccp, %struct.ccp* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %72, i64 %77
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i8* (i32*)*, i8* (i32*)** %80, align 8
  %82 = load %struct.ccp*, %struct.ccp** %5, align 8
  %83 = getelementptr inbounds %struct.ccp, %struct.ccp* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = call i8* %81(i32* %84)
  %86 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %68, %62
  %88 = load %struct.ccp*, %struct.ccp** %5, align 8
  %89 = getelementptr inbounds %struct.ccp, %struct.ccp* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %147

93:                                               ; preds = %87
  %94 = load %struct.ccp*, %struct.ccp** %5, align 8
  %95 = getelementptr inbounds %struct.ccp, %struct.ccp* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store %struct.ccp_opt** %96, %struct.ccp_opt*** %3, align 8
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %125, %93
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.ccp*, %struct.ccp** %5, align 8
  %100 = getelementptr inbounds %struct.ccp, %struct.ccp* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %97
  %105 = load %struct.ccp*, %struct.ccp** %5, align 8
  %106 = getelementptr inbounds %struct.ccp, %struct.ccp* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %109, i64 %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @IsEnabled(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %104
  %121 = load %struct.ccp_opt**, %struct.ccp_opt*** %3, align 8
  %122 = load %struct.ccp_opt*, %struct.ccp_opt** %121, align 8
  %123 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %122, i32 0, i32 1
  store %struct.ccp_opt** %123, %struct.ccp_opt*** %3, align 8
  br label %124

124:                                              ; preds = %120, %104
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %97

128:                                              ; preds = %97
  %129 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %130 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @algorithm, align 8
  %133 = load %struct.ccp*, %struct.ccp** %5, align 8
  %134 = getelementptr inbounds %struct.ccp, %struct.ccp* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %132, i64 %137
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i8* (i32*)*, i8* (i32*)** %140, align 8
  %142 = load %struct.ccp_opt**, %struct.ccp_opt*** %3, align 8
  %143 = load %struct.ccp_opt*, %struct.ccp_opt** %142, align 8
  %144 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %143, i32 0, i32 0
  %145 = call i8* %141(i32* %144)
  %146 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %128, %87
  %148 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %149 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %152 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %153 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ccp*, %struct.ccp** %5, align 8
  %156 = getelementptr inbounds %struct.ccp, %struct.ccp* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ccp*, %struct.ccp** %5, align 8
  %161 = getelementptr inbounds %struct.ccp, %struct.ccp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ccp*, %struct.ccp** %5, align 8
  %166 = getelementptr inbounds %struct.ccp, %struct.ccp* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %173 = load %struct.ccp*, %struct.ccp** %5, align 8
  %174 = getelementptr inbounds %struct.ccp, %struct.ccp* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ccp*, %struct.ccp** %5, align 8
  %179 = getelementptr inbounds %struct.ccp, %struct.ccp* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %186 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %154, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %159, i32 %164, i8* %172, i32 %177, i8* %185)
  %187 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %188 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %191 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %192 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ccp*, %struct.ccp** %5, align 8
  %195 = getelementptr inbounds %struct.ccp, %struct.ccp* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %199)
  %201 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %202 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ccp*, %struct.ccp** %5, align 8
  %205 = getelementptr inbounds %struct.ccp, %struct.ccp* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %209)
  %211 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %212 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %213, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %215 = load %struct.ccp*, %struct.ccp** %5, align 8
  %216 = getelementptr inbounds %struct.ccp, %struct.ccp* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %147
  %222 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %223 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ccp*, %struct.ccp** %5, align 8
  %226 = getelementptr inbounds %struct.ccp, %struct.ccp* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %229)
  br label %236

231:                                              ; preds = %147
  %232 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %233 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %236

236:                                              ; preds = %231, %221
  %237 = load %struct.ccp*, %struct.ccp** %5, align 8
  %238 = getelementptr inbounds %struct.ccp, %struct.ccp* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %257 [
    i32 129, label %242
    i32 128, label %247
    i32 130, label %252
  ]

242:                                              ; preds = %236
  %243 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %244 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %245, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %257

247:                                              ; preds = %236
  %248 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %249 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %257

252:                                              ; preds = %236
  %253 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %254 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %257

257:                                              ; preds = %236, %252, %247, %242
  %258 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %259 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.ccp*, %struct.ccp** %5, align 8
  %262 = getelementptr inbounds %struct.ccp, %struct.ccp* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %269 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %268)
  %270 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %271 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.ccp*, %struct.ccp** %5, align 8
  %274 = getelementptr inbounds %struct.ccp, %struct.ccp* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @CCP_NEG_DEFLATE, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @command_ShowNegval(i32 %279)
  %281 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %272, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* %280)
  %282 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %283 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ccp*, %struct.ccp** %5, align 8
  %286 = getelementptr inbounds %struct.ccp, %struct.ccp* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* @CCP_NEG_PRED1, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @command_ShowNegval(i32 %291)
  %293 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i8* %292)
  %294 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %295 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ccp*, %struct.ccp** %5, align 8
  %298 = getelementptr inbounds %struct.ccp, %struct.ccp* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* @CCP_NEG_DEFLATE24, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @command_ShowNegval(i32 %303)
  %305 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %296, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %304)
  %306 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %307 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.ccp*, %struct.ccp** %5, align 8
  %310 = getelementptr inbounds %struct.ccp, %struct.ccp* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i64, i64* @CCP_NEG_MPPE, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @command_ShowNegval(i32 %315)
  %317 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %308, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %316)
  ret i32 0
}

declare dso_local %struct.link* @command_ChooseLink(%struct.cmdargs*) #1

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i32 @State2Nam(i64) #1

declare dso_local i32 @protoname(i32) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i8* @command_ShowNegval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
