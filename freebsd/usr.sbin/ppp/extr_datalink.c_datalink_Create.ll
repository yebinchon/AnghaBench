; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { %struct.datalink*, i32*, i32, i32, i32, i32, %struct.TYPE_15__, i32*, i32, %struct.TYPE_14__, i64, %struct.TYPE_21__, i32*, %struct.bundle*, i32, %struct.TYPE_20__, i64, %struct.TYPE_19__, i32, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.datalink*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i8*, i32, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i8*, i32*, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.bundle = type { i32 }

@DATALINK_DESCRIPTOR = common dso_local global i32 0, align 4
@datalink_UpdateSet = common dso_local global i32 0, align 4
@datalink_IsSet = common dso_local global i32 0, align 4
@datalink_Read = common dso_local global i32 0, align 4
@datalink_Write = common dso_local global i32 0, align 4
@DATALINK_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@DIAL_NEXT_TIMEOUT = common dso_local global i32 0, align 4
@DIAL_TIMEOUT = common dso_local global i32 0, align 4
@RECONNECT_TIMEOUT = common dso_local global i32 0, align 4
@DEF_FSMRETRY = common dso_local global i32 0, align 4
@datalink_LayerStart = common dso_local global i32 0, align 4
@datalink_LayerUp = common dso_local global i32 0, align 4
@datalink_LayerDown = common dso_local global i32 0, align 4
@datalink_LayerFinish = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: Created in %s state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.datalink* @datalink_Create(i8* %0, %struct.bundle* %1, i32 %2) #0 {
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.datalink*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.bundle* %1, %struct.bundle** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i64 @malloc(i32 304)
  %10 = inttoptr i64 %9 to %struct.datalink*
  store %struct.datalink* %10, %struct.datalink** %8, align 8
  %11 = load %struct.datalink*, %struct.datalink** %8, align 8
  %12 = icmp eq %struct.datalink* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.datalink*, %struct.datalink** %8, align 8
  store %struct.datalink* %14, %struct.datalink** %4, align 8
  br label %231

15:                                               ; preds = %3
  %16 = load i32, i32* @DATALINK_DESCRIPTOR, align 4
  %17 = load %struct.datalink*, %struct.datalink** %8, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 19
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @datalink_UpdateSet, align 4
  %21 = load %struct.datalink*, %struct.datalink** %8, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 19
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @datalink_IsSet, align 4
  %25 = load %struct.datalink*, %struct.datalink** %8, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 19
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @datalink_Read, align 4
  %29 = load %struct.datalink*, %struct.datalink** %8, align 8
  %30 = getelementptr inbounds %struct.datalink, %struct.datalink* %29, i32 0, i32 19
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @datalink_Write, align 4
  %33 = load %struct.datalink*, %struct.datalink** %8, align 8
  %34 = getelementptr inbounds %struct.datalink, %struct.datalink* %33, i32 0, i32 19
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @DATALINK_CLOSED, align 4
  %37 = load %struct.datalink*, %struct.datalink** %8, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 8
  %39 = load %struct.datalink*, %struct.datalink** %8, align 8
  %40 = getelementptr inbounds %struct.datalink, %struct.datalink* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8 0, i8* %43, align 1
  %44 = load %struct.datalink*, %struct.datalink** %8, align 8
  %45 = getelementptr inbounds %struct.datalink, %struct.datalink* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8 0, i8* %48, align 1
  %49 = load %struct.datalink*, %struct.datalink** %8, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8 0, i8* %53, align 1
  %54 = load %struct.datalink*, %struct.datalink** %8, align 8
  %55 = getelementptr inbounds %struct.datalink, %struct.datalink* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  store i8 0, i8* %58, align 1
  %59 = load %struct.datalink*, %struct.datalink** %8, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8 0, i8* %63, align 1
  %64 = load %struct.datalink*, %struct.datalink** %8, align 8
  %65 = getelementptr inbounds %struct.datalink, %struct.datalink* %64, i32 0, i32 17
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8 0, i8* %67, align 1
  %68 = load %struct.datalink*, %struct.datalink** %8, align 8
  %69 = getelementptr inbounds %struct.datalink, %struct.datalink* %68, i32 0, i32 17
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.datalink*, %struct.datalink** %8, align 8
  %72 = getelementptr inbounds %struct.datalink, %struct.datalink* %71, i32 0, i32 17
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.datalink*, %struct.datalink** %8, align 8
  %75 = getelementptr inbounds %struct.datalink, %struct.datalink* %74, i32 0, i32 17
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.datalink*, %struct.datalink** %8, align 8
  %78 = getelementptr inbounds %struct.datalink, %struct.datalink* %77, i32 0, i32 16
  store i64 0, i64* %78, align 8
  %79 = load %struct.datalink*, %struct.datalink** %8, align 8
  %80 = getelementptr inbounds %struct.datalink, %struct.datalink* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load %struct.datalink*, %struct.datalink** %8, align 8
  %83 = getelementptr inbounds %struct.datalink, %struct.datalink* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.datalink*, %struct.datalink** %8, align 8
  %86 = getelementptr inbounds %struct.datalink, %struct.datalink* %85, i32 0, i32 14
  %87 = call i32 @mp_linkInit(i32* %86)
  %88 = load %struct.bundle*, %struct.bundle** %6, align 8
  %89 = load %struct.datalink*, %struct.datalink** %8, align 8
  %90 = getelementptr inbounds %struct.datalink, %struct.datalink* %89, i32 0, i32 13
  store %struct.bundle* %88, %struct.bundle** %90, align 8
  %91 = load %struct.datalink*, %struct.datalink** %8, align 8
  %92 = getelementptr inbounds %struct.datalink, %struct.datalink* %91, i32 0, i32 12
  store i32* null, i32** %92, align 8
  %93 = load %struct.datalink*, %struct.datalink** %8, align 8
  %94 = getelementptr inbounds %struct.datalink, %struct.datalink* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = call i32 @memset(i32* %95, i8 signext 0, i32 4)
  %97 = load %struct.datalink*, %struct.datalink** %8, align 8
  %98 = getelementptr inbounds %struct.datalink, %struct.datalink* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.datalink*, %struct.datalink** %8, align 8
  %101 = getelementptr inbounds %struct.datalink, %struct.datalink* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* @DIAL_NEXT_TIMEOUT, align 4
  %105 = load %struct.datalink*, %struct.datalink** %8, align 8
  %106 = getelementptr inbounds %struct.datalink, %struct.datalink* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 4
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* @DIAL_TIMEOUT, align 4
  %110 = load %struct.datalink*, %struct.datalink** %8, align 8
  %111 = getelementptr inbounds %struct.datalink, %struct.datalink* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 8
  %114 = load %struct.datalink*, %struct.datalink** %8, align 8
  %115 = getelementptr inbounds %struct.datalink, %struct.datalink* %114, i32 0, i32 9
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.datalink*, %struct.datalink** %8, align 8
  %119 = getelementptr inbounds %struct.datalink, %struct.datalink* %118, i32 0, i32 9
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  store i32 10, i32* %121, align 4
  %122 = load %struct.datalink*, %struct.datalink** %8, align 8
  %123 = getelementptr inbounds %struct.datalink, %struct.datalink* %122, i32 0, i32 10
  store i64 0, i64* %123, align 8
  %124 = load %struct.datalink*, %struct.datalink** %8, align 8
  %125 = getelementptr inbounds %struct.datalink, %struct.datalink* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @RECONNECT_TIMEOUT, align 4
  %129 = load %struct.datalink*, %struct.datalink** %8, align 8
  %130 = getelementptr inbounds %struct.datalink, %struct.datalink* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  %133 = load %struct.datalink*, %struct.datalink** %8, align 8
  %134 = getelementptr inbounds %struct.datalink, %struct.datalink* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.datalink*, %struct.datalink** %8, align 8
  %138 = getelementptr inbounds %struct.datalink, %struct.datalink* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load %struct.datalink*, %struct.datalink** %8, align 8
  %142 = getelementptr inbounds %struct.datalink, %struct.datalink* %141, i32 0, i32 9
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8 0, i8* %145, align 1
  %146 = load i32, i32* @DEF_FSMRETRY, align 4
  %147 = load %struct.datalink*, %struct.datalink** %8, align 8
  %148 = getelementptr inbounds %struct.datalink, %struct.datalink* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 8
  %151 = load i8*, i8** %5, align 8
  %152 = call %struct.datalink* @strdup(i8* %151)
  %153 = load %struct.datalink*, %struct.datalink** %8, align 8
  %154 = getelementptr inbounds %struct.datalink, %struct.datalink* %153, i32 0, i32 0
  store %struct.datalink* %152, %struct.datalink** %154, align 8
  %155 = load %struct.datalink*, %struct.datalink** %8, align 8
  %156 = getelementptr inbounds %struct.datalink, %struct.datalink* %155, i32 0, i32 8
  %157 = call i32 @peerid_Init(i32* %156)
  %158 = load %struct.bundle*, %struct.bundle** %6, align 8
  %159 = getelementptr inbounds %struct.bundle, %struct.bundle* %158, i32 0, i32 0
  %160 = load %struct.datalink*, %struct.datalink** %8, align 8
  %161 = getelementptr inbounds %struct.datalink, %struct.datalink* %160, i32 0, i32 7
  store i32* %159, i32** %161, align 8
  %162 = load i32, i32* @datalink_LayerStart, align 4
  %163 = load %struct.datalink*, %struct.datalink** %8, align 8
  %164 = getelementptr inbounds %struct.datalink, %struct.datalink* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 4
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @datalink_LayerUp, align 4
  %167 = load %struct.datalink*, %struct.datalink** %8, align 8
  %168 = getelementptr inbounds %struct.datalink, %struct.datalink* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 8
  %170 = load i32, i32* @datalink_LayerDown, align 4
  %171 = load %struct.datalink*, %struct.datalink** %8, align 8
  %172 = getelementptr inbounds %struct.datalink, %struct.datalink* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @datalink_LayerFinish, align 4
  %175 = load %struct.datalink*, %struct.datalink** %8, align 8
  %176 = getelementptr inbounds %struct.datalink, %struct.datalink* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 8
  %178 = load %struct.datalink*, %struct.datalink** %8, align 8
  %179 = load %struct.datalink*, %struct.datalink** %8, align 8
  %180 = getelementptr inbounds %struct.datalink, %struct.datalink* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  store %struct.datalink* %178, %struct.datalink** %181, align 8
  %182 = load %struct.datalink*, %struct.datalink** %8, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32* @physical_Create(%struct.datalink* %182, i32 %183)
  %185 = load %struct.datalink*, %struct.datalink** %8, align 8
  %186 = getelementptr inbounds %struct.datalink, %struct.datalink* %185, i32 0, i32 1
  store i32* %184, i32** %186, align 8
  %187 = icmp eq i32* %184, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %15
  %189 = load %struct.datalink*, %struct.datalink** %8, align 8
  %190 = getelementptr inbounds %struct.datalink, %struct.datalink* %189, i32 0, i32 0
  %191 = load %struct.datalink*, %struct.datalink** %190, align 8
  %192 = call i32 @free(%struct.datalink* %191)
  %193 = load %struct.datalink*, %struct.datalink** %8, align 8
  %194 = call i32 @free(%struct.datalink* %193)
  store %struct.datalink* null, %struct.datalink** %4, align 8
  br label %231

195:                                              ; preds = %15
  %196 = load %struct.datalink*, %struct.datalink** %8, align 8
  %197 = getelementptr inbounds %struct.datalink, %struct.datalink* %196, i32 0, i32 5
  %198 = load %struct.datalink*, %struct.datalink** %8, align 8
  %199 = getelementptr inbounds %struct.datalink, %struct.datalink* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @pap_Init(i32* %197, i32* %200)
  %202 = load %struct.datalink*, %struct.datalink** %8, align 8
  %203 = getelementptr inbounds %struct.datalink, %struct.datalink* %202, i32 0, i32 4
  %204 = load %struct.datalink*, %struct.datalink** %8, align 8
  %205 = getelementptr inbounds %struct.datalink, %struct.datalink* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @chap_Init(i32* %203, i32* %206)
  %208 = load %struct.datalink*, %struct.datalink** %8, align 8
  %209 = getelementptr inbounds %struct.datalink, %struct.datalink* %208, i32 0, i32 3
  %210 = load %struct.datalink*, %struct.datalink** %8, align 8
  %211 = getelementptr inbounds %struct.datalink, %struct.datalink* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @cbcp_Init(i32* %209, i32* %212)
  %214 = load %struct.datalink*, %struct.datalink** %8, align 8
  %215 = getelementptr inbounds %struct.datalink, %struct.datalink* %214, i32 0, i32 2
  %216 = call i32 @memset(i32* %215, i8 signext 0, i32 4)
  %217 = load %struct.datalink*, %struct.datalink** %8, align 8
  %218 = getelementptr inbounds %struct.datalink, %struct.datalink* %217, i32 0, i32 2
  %219 = load %struct.datalink*, %struct.datalink** %8, align 8
  %220 = getelementptr inbounds %struct.datalink, %struct.datalink* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @chat_Init(i32* %218, i32* %221)
  %223 = load i32, i32* @LogPHASE, align 4
  %224 = load %struct.datalink*, %struct.datalink** %8, align 8
  %225 = getelementptr inbounds %struct.datalink, %struct.datalink* %224, i32 0, i32 0
  %226 = load %struct.datalink*, %struct.datalink** %225, align 8
  %227 = load %struct.datalink*, %struct.datalink** %8, align 8
  %228 = call i32 @datalink_State(%struct.datalink* %227)
  %229 = call i32 @log_Printf(i32 %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.datalink* %226, i32 %228)
  %230 = load %struct.datalink*, %struct.datalink** %8, align 8
  store %struct.datalink* %230, %struct.datalink** %4, align 8
  br label %231

231:                                              ; preds = %195, %188, %13
  %232 = load %struct.datalink*, %struct.datalink** %4, align 8
  ret %struct.datalink* %232
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @mp_linkInit(i32*) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local %struct.datalink* @strdup(i8*) #1

declare dso_local i32 @peerid_Init(i32*) #1

declare dso_local i32* @physical_Create(%struct.datalink*, i32) #1

declare dso_local i32 @free(%struct.datalink*) #1

declare dso_local i32 @pap_Init(i32*, i32*) #1

declare dso_local i32 @chap_Init(i32*, i32*) #1

declare dso_local i32 @cbcp_Init(i32*, i32*) #1

declare dso_local i32 @chat_Init(i32*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, %struct.datalink*, i32) #1

declare dso_local i32 @datalink_State(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
