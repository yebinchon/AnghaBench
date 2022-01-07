; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.ipcp }
%struct.ipcp = type { i32, %struct.TYPE_19__, %struct.TYPE_17__, i32, %struct.TYPE_11__, i32, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32, %struct.TYPE_20__, %struct.TYPE_16__, %struct.TYPE_11__, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_11__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s [%s]\0A\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c" His side:        %s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" My side:         %s, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" Queued packets:  %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\0ADefaults:\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c" FSM retry = %us, max %u Config REQ%s, %u Term REQ%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c" My Address:      %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c" Trigger address: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c" VJ compression:  %s (%d slots %s slot compression)\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c" His Address:     %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c" DNS:             %s\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c", %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c" Resolver DNS:    %s\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\0A NetBIOS NS:      %s, \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_Show(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.ipcp*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 1
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store %struct.ipcp* %8, %struct.ipcp** %3, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %13 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %17 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @State2Nam(i64 %19)
  %21 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %23 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ST_OPENED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %1
  %29 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %33 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @inet_ntoa(i64 %35)
  %37 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %38 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vj2asc(i32 %39)
  %41 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %40)
  %42 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %43 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %46 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @inet_ntoa(i64 %48)
  %50 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %51 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vj2asc(i32 %52)
  %54 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32 %53)
  %55 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %56 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %59 = call i64 @ipcp_QueueLen(%struct.ipcp* %58)
  %60 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %28, %1
  %62 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %63 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %70 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %75 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %80 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %87 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %88 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %93 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %100 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %78, i8* %86, i32 %91, i8* %99)
  %101 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %102 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %105 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 6
  %107 = call i8* @ncprange_ntoa(i32* %106)
  %108 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  %109 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %110 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %61
  %115 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %116 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %119 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @inet_ntoa(i64 %122)
  %124 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %114, %61
  %126 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %127 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %130 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @command_ShowNegval(i32 %133)
  %135 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %136 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %141 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)
  %148 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %134, i32 %139, i8* %147)
  %149 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %150 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = call i64 @iplist_isvalid(%struct.TYPE_20__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %125
  %155 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %156 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %159 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %162)
  br label %173

164:                                              ; preds = %125
  %165 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %166 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %169 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = call i8* @ncprange_ntoa(i32* %170)
  %172 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %164, %154
  %174 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %175 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %178 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @INADDR_NONE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %173
  br label %198

188:                                              ; preds = %173
  %189 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %190 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i8* @inet_ntoa(i64 %196)
  br label %198

198:                                              ; preds = %188, %187
  %199 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %187 ], [ %197, %188 ]
  %200 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %199)
  %201 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %202 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @INADDR_NONE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %225

211:                                              ; preds = %198
  %212 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %213 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %216 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 1
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @inet_ntoa(i64 %222)
  %224 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %211, %198
  %226 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %227 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %230 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i8* @command_ShowNegval(i32 %233)
  %235 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %234)
  %236 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %237 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %240 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @INADDR_NONE, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %225
  br label %258

249:                                              ; preds = %225
  %250 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %251 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i8* @inet_ntoa(i64 %256)
  br label %258

258:                                              ; preds = %249, %248
  %259 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %248 ], [ %257, %249 ]
  %260 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %238, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %259)
  %261 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %262 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @INADDR_NONE, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %299

270:                                              ; preds = %258
  %271 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %272 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 1
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %279 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %277, %284
  br i1 %285, label %286, label %299

286:                                              ; preds = %270
  %287 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %288 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %291 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i64 1
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i8* @inet_ntoa(i64 %296)
  %298 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %297)
  br label %299

299:                                              ; preds = %286, %270, %258
  %300 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %301 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %304 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = call i8* @inet_ntoa(i64 %310)
  %312 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %311)
  %313 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %314 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %317 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 1
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = call i8* @inet_ntoa(i64 %323)
  %325 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %324)
  %326 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %327 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %326, i32 0, i32 0
  %328 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %329 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @throughput_disp(i32* %327, i32 %330)
  ret i32 0
}

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i32 @State2Nam(i64) #1

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local i32 @vj2asc(i32) #1

declare dso_local i64 @ipcp_QueueLen(%struct.ipcp*) #1

declare dso_local i8* @ncprange_ntoa(i32*) #1

declare dso_local i8* @command_ShowNegval(i32) #1

declare dso_local i64 @iplist_isvalid(%struct.TYPE_20__*) #1

declare dso_local i32 @throughput_disp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
