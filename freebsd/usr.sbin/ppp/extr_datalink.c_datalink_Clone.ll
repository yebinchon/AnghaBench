; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { %struct.datalink*, %struct.TYPE_29__*, i32, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_19__, i32, i32, i64, %struct.TYPE_23__, i32*, i32, %struct.TYPE_22__, i32, %struct.TYPE_19__, i32, %struct.TYPE_21__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_19__ }
%struct.TYPE_28__ = type { %struct.TYPE_19__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { %struct.TYPE_19__ }
%struct.TYPE_25__ = type { %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i8*, i8*, i32*, i32* }
%struct.TYPE_19__ = type { %struct.datalink* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }

@DATALINK_DESCRIPTOR = common dso_local global i32 0, align 4
@datalink_UpdateSet = common dso_local global i32 0, align 4
@datalink_IsSet = common dso_local global i32 0, align 4
@datalink_Read = common dso_local global i32 0, align 4
@datalink_Write = common dso_local global i32 0, align 4
@DATALINK_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@PHYS_INTERACTIVE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Cloned in %s state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.datalink* @datalink_Clone(%struct.datalink* %0, i8* %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.datalink*, align 8
  store %struct.datalink* %0, %struct.datalink** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @malloc(i32 160)
  %8 = inttoptr i64 %7 to %struct.datalink*
  store %struct.datalink* %8, %struct.datalink** %6, align 8
  %9 = load %struct.datalink*, %struct.datalink** %6, align 8
  %10 = icmp eq %struct.datalink* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.datalink*, %struct.datalink** %6, align 8
  store %struct.datalink* %12, %struct.datalink** %3, align 8
  br label %206

13:                                               ; preds = %2
  %14 = load i32, i32* @DATALINK_DESCRIPTOR, align 4
  %15 = load %struct.datalink*, %struct.datalink** %6, align 8
  %16 = getelementptr inbounds %struct.datalink, %struct.datalink* %15, i32 0, i32 17
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @datalink_UpdateSet, align 4
  %19 = load %struct.datalink*, %struct.datalink** %6, align 8
  %20 = getelementptr inbounds %struct.datalink, %struct.datalink* %19, i32 0, i32 17
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @datalink_IsSet, align 4
  %23 = load %struct.datalink*, %struct.datalink** %6, align 8
  %24 = getelementptr inbounds %struct.datalink, %struct.datalink* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @datalink_Read, align 4
  %27 = load %struct.datalink*, %struct.datalink** %6, align 8
  %28 = getelementptr inbounds %struct.datalink, %struct.datalink* %27, i32 0, i32 17
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @datalink_Write, align 4
  %31 = load %struct.datalink*, %struct.datalink** %6, align 8
  %32 = getelementptr inbounds %struct.datalink, %struct.datalink* %31, i32 0, i32 17
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @DATALINK_CLOSED, align 4
  %35 = load %struct.datalink*, %struct.datalink** %6, align 8
  %36 = getelementptr inbounds %struct.datalink, %struct.datalink* %35, i32 0, i32 16
  store i32 %34, i32* %36, align 8
  %37 = load %struct.datalink*, %struct.datalink** %6, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 15
  %39 = load %struct.datalink*, %struct.datalink** %4, align 8
  %40 = getelementptr inbounds %struct.datalink, %struct.datalink* %39, i32 0, i32 15
  %41 = call i32 @memcpy(%struct.TYPE_19__* %38, %struct.TYPE_19__* %40, i32 8)
  %42 = load %struct.datalink*, %struct.datalink** %6, align 8
  %43 = getelementptr inbounds %struct.datalink, %struct.datalink* %42, i32 0, i32 14
  %44 = call i32 @mp_linkInit(i32* %43)
  %45 = load %struct.datalink*, %struct.datalink** %6, align 8
  %46 = getelementptr inbounds %struct.datalink, %struct.datalink* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8 0, i8* %48, align 1
  %49 = load %struct.datalink*, %struct.datalink** %6, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 13
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.datalink*, %struct.datalink** %6, align 8
  %53 = getelementptr inbounds %struct.datalink, %struct.datalink* %52, i32 0, i32 13
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.datalink*, %struct.datalink** %6, align 8
  %56 = getelementptr inbounds %struct.datalink, %struct.datalink* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.datalink*, %struct.datalink** %4, align 8
  %59 = getelementptr inbounds %struct.datalink, %struct.datalink* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.datalink*, %struct.datalink** %6, align 8
  %62 = getelementptr inbounds %struct.datalink, %struct.datalink* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 8
  %63 = load %struct.datalink*, %struct.datalink** %6, align 8
  %64 = getelementptr inbounds %struct.datalink, %struct.datalink* %63, i32 0, i32 11
  store i32* null, i32** %64, align 8
  %65 = load %struct.datalink*, %struct.datalink** %6, align 8
  %66 = getelementptr inbounds %struct.datalink, %struct.datalink* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = call i32 @memset(i32* %67, i8 signext 0, i32 4)
  %69 = load %struct.datalink*, %struct.datalink** %6, align 8
  %70 = getelementptr inbounds %struct.datalink, %struct.datalink* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.datalink*, %struct.datalink** %6, align 8
  %73 = getelementptr inbounds %struct.datalink, %struct.datalink* %72, i32 0, i32 9
  store i64 0, i64* %73, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call %struct.datalink* @strdup(i8* %74)
  %76 = load %struct.datalink*, %struct.datalink** %6, align 8
  %77 = getelementptr inbounds %struct.datalink, %struct.datalink* %76, i32 0, i32 0
  store %struct.datalink* %75, %struct.datalink** %77, align 8
  %78 = load %struct.datalink*, %struct.datalink** %6, align 8
  %79 = getelementptr inbounds %struct.datalink, %struct.datalink* %78, i32 0, i32 8
  %80 = call i32 @peerid_Init(i32* %79)
  %81 = load %struct.datalink*, %struct.datalink** %4, align 8
  %82 = getelementptr inbounds %struct.datalink, %struct.datalink* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.datalink*, %struct.datalink** %6, align 8
  %85 = getelementptr inbounds %struct.datalink, %struct.datalink* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.datalink*, %struct.datalink** %6, align 8
  %87 = getelementptr inbounds %struct.datalink, %struct.datalink* %86, i32 0, i32 6
  %88 = load %struct.datalink*, %struct.datalink** %4, align 8
  %89 = getelementptr inbounds %struct.datalink, %struct.datalink* %88, i32 0, i32 6
  %90 = call i32 @memcpy(%struct.TYPE_19__* %87, %struct.TYPE_19__* %89, i32 8)
  %91 = load %struct.datalink*, %struct.datalink** %6, align 8
  %92 = load %struct.datalink*, %struct.datalink** %6, align 8
  %93 = getelementptr inbounds %struct.datalink, %struct.datalink* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  store %struct.datalink* %91, %struct.datalink** %94, align 8
  %95 = load %struct.datalink*, %struct.datalink** %6, align 8
  %96 = load i32, i32* @PHYS_INTERACTIVE, align 4
  %97 = call %struct.TYPE_29__* @physical_Create(%struct.datalink* %95, i32 %96)
  %98 = load %struct.datalink*, %struct.datalink** %6, align 8
  %99 = getelementptr inbounds %struct.datalink, %struct.datalink* %98, i32 0, i32 1
  store %struct.TYPE_29__* %97, %struct.TYPE_29__** %99, align 8
  %100 = icmp eq %struct.TYPE_29__* %97, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %13
  %102 = load %struct.datalink*, %struct.datalink** %6, align 8
  %103 = getelementptr inbounds %struct.datalink, %struct.datalink* %102, i32 0, i32 0
  %104 = load %struct.datalink*, %struct.datalink** %103, align 8
  %105 = call i32 @free(%struct.datalink* %104)
  %106 = load %struct.datalink*, %struct.datalink** %6, align 8
  %107 = call i32 @free(%struct.datalink* %106)
  store %struct.datalink* null, %struct.datalink** %3, align 8
  br label %206

108:                                              ; preds = %13
  %109 = load %struct.datalink*, %struct.datalink** %6, align 8
  %110 = getelementptr inbounds %struct.datalink, %struct.datalink* %109, i32 0, i32 5
  %111 = load %struct.datalink*, %struct.datalink** %6, align 8
  %112 = getelementptr inbounds %struct.datalink, %struct.datalink* %111, i32 0, i32 1
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  %114 = call i32 @pap_Init(%struct.TYPE_18__* %110, %struct.TYPE_29__* %113)
  %115 = load %struct.datalink*, %struct.datalink** %4, align 8
  %116 = getelementptr inbounds %struct.datalink, %struct.datalink* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.datalink*, %struct.datalink** %6, align 8
  %120 = getelementptr inbounds %struct.datalink, %struct.datalink* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.datalink*, %struct.datalink** %6, align 8
  %123 = getelementptr inbounds %struct.datalink, %struct.datalink* %122, i32 0, i32 4
  %124 = load %struct.datalink*, %struct.datalink** %6, align 8
  %125 = getelementptr inbounds %struct.datalink, %struct.datalink* %124, i32 0, i32 1
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %125, align 8
  %127 = call i32 @chap_Init(%struct.TYPE_20__* %123, %struct.TYPE_29__* %126)
  %128 = load %struct.datalink*, %struct.datalink** %4, align 8
  %129 = getelementptr inbounds %struct.datalink, %struct.datalink* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.datalink*, %struct.datalink** %6, align 8
  %134 = getelementptr inbounds %struct.datalink, %struct.datalink* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  %137 = load %struct.datalink*, %struct.datalink** %6, align 8
  %138 = getelementptr inbounds %struct.datalink, %struct.datalink* %137, i32 0, i32 1
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 2
  %141 = load %struct.datalink*, %struct.datalink** %4, align 8
  %142 = getelementptr inbounds %struct.datalink, %struct.datalink* %141, i32 0, i32 1
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 2
  %145 = call i32 @memcpy(%struct.TYPE_19__* %140, %struct.TYPE_19__* %144, i32 8)
  %146 = load %struct.datalink*, %struct.datalink** %6, align 8
  %147 = getelementptr inbounds %struct.datalink, %struct.datalink* %146, i32 0, i32 1
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load %struct.datalink*, %struct.datalink** %4, align 8
  %153 = getelementptr inbounds %struct.datalink, %struct.datalink* %152, i32 0, i32 1
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = call i32 @memcpy(%struct.TYPE_19__* %151, %struct.TYPE_19__* %157, i32 8)
  %159 = load %struct.datalink*, %struct.datalink** %6, align 8
  %160 = getelementptr inbounds %struct.datalink, %struct.datalink* %159, i32 0, i32 1
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load %struct.datalink*, %struct.datalink** %4, align 8
  %166 = getelementptr inbounds %struct.datalink, %struct.datalink* %165, i32 0, i32 1
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = call i32 @memcpy(%struct.TYPE_19__* %164, %struct.TYPE_19__* %170, i32 8)
  %172 = load %struct.datalink*, %struct.datalink** %6, align 8
  %173 = getelementptr inbounds %struct.datalink, %struct.datalink* %172, i32 0, i32 1
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = load %struct.datalink*, %struct.datalink** %4, align 8
  %178 = getelementptr inbounds %struct.datalink, %struct.datalink* %177, i32 0, i32 1
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = call i32 @memcpy(%struct.TYPE_19__* %176, %struct.TYPE_19__* %181, i32 8)
  %183 = load %struct.datalink*, %struct.datalink** %6, align 8
  %184 = getelementptr inbounds %struct.datalink, %struct.datalink* %183, i32 0, i32 3
  %185 = load %struct.datalink*, %struct.datalink** %6, align 8
  %186 = getelementptr inbounds %struct.datalink, %struct.datalink* %185, i32 0, i32 1
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %186, align 8
  %188 = call i32 @cbcp_Init(i32* %184, %struct.TYPE_29__* %187)
  %189 = load %struct.datalink*, %struct.datalink** %6, align 8
  %190 = getelementptr inbounds %struct.datalink, %struct.datalink* %189, i32 0, i32 2
  %191 = call i32 @memset(i32* %190, i8 signext 0, i32 4)
  %192 = load %struct.datalink*, %struct.datalink** %6, align 8
  %193 = getelementptr inbounds %struct.datalink, %struct.datalink* %192, i32 0, i32 2
  %194 = load %struct.datalink*, %struct.datalink** %6, align 8
  %195 = getelementptr inbounds %struct.datalink, %struct.datalink* %194, i32 0, i32 1
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %195, align 8
  %197 = call i32 @chat_Init(i32* %193, %struct.TYPE_29__* %196)
  %198 = load i32, i32* @LogPHASE, align 4
  %199 = load %struct.datalink*, %struct.datalink** %6, align 8
  %200 = getelementptr inbounds %struct.datalink, %struct.datalink* %199, i32 0, i32 0
  %201 = load %struct.datalink*, %struct.datalink** %200, align 8
  %202 = load %struct.datalink*, %struct.datalink** %6, align 8
  %203 = call i32 @datalink_State(%struct.datalink* %202)
  %204 = call i32 @log_Printf(i32 %198, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.datalink* %201, i32 %203)
  %205 = load %struct.datalink*, %struct.datalink** %6, align 8
  store %struct.datalink* %205, %struct.datalink** %3, align 8
  br label %206

206:                                              ; preds = %108, %101, %11
  %207 = load %struct.datalink*, %struct.datalink** %3, align 8
  ret %struct.datalink* %207
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @mp_linkInit(i32*) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local %struct.datalink* @strdup(i8*) #1

declare dso_local i32 @peerid_Init(i32*) #1

declare dso_local %struct.TYPE_29__* @physical_Create(%struct.datalink*, i32) #1

declare dso_local i32 @free(%struct.datalink*) #1

declare dso_local i32 @pap_Init(%struct.TYPE_18__*, %struct.TYPE_29__*) #1

declare dso_local i32 @chap_Init(%struct.TYPE_20__*, %struct.TYPE_29__*) #1

declare dso_local i32 @cbcp_Init(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @chat_Init(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @log_Printf(i32, i8*, %struct.datalink*, i32) #1

declare dso_local i32 @datalink_State(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
