; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pms/RefTisa/sallsdk/spc/extr_mpi.c_mpiRequirementsGet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pms/RefTisa/sallsdk/spc/extr_mpi.c_mpiRequirementsGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [38 x i8] c"Entering function:mpiRequirementsGet\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"config argument cannot be null\00", align 1
@AGSA_DMA_MEM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"mpiRequirementsGet:eventLogSize region[%d] 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"mpiRequirementsGet:IOPeventLogSize region[%d] 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"mpiRequirementsGet:numInboundQueues region[%d] 0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"mpiRequirementsGet:numOutboundQueues region[%d] 0x%X\0A\00", align 1
@AGSA_CACHED_DMA_MEM = common dso_local global i8* null, align 8
@MAX_QUEUE_EACH_MEM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"mpiRequirementsGet: (inboundQueues) memoryMap->region[%d].elementSize = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"mpiRequirementsGet: (inboundQueues) memoryMap->region[%d].numElements = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"mpiRequirementsGet: (outboundQueues) memoryMap->region[%d].elementSize = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [77 x i8] c"mpiRequirementsGet: (outboundQueues) memoryMap->region[%d].numElements = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpiRequirementsGet(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %12 = call i32 @SA_DBG2(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = icmp ne %struct.TYPE_14__* null, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @SA_ASSERT(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32 %34, i32* %42, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i32 %49, i32* %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store i32 32, i32* %65, align 4
  %66 = load i8*, i8** @AGSA_DMA_MEM, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  store i8* %66, i8** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @SA_DBG2(i8* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @SA_DBG2(i8* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 4, %121
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  store i32 %123, i32* %131, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 4, %136
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  store i32 %138, i32* %146, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  store i32 32, i32* %154, align 4
  %155 = load i8*, i8** @AGSA_DMA_MEM, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 4
  store i8* %155, i8** %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @SA_DBG2(i8* %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = mul i64 8, %194
  %196 = trunc i64 %195 to i32
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  store i32 %196, i32* %204, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = mul i64 8, %208
  %210 = trunc i64 %209 to i32
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  store i32 %210, i32* %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  store i32 4, i32* %226, align 4
  %227 = load i8*, i8** @AGSA_DMA_MEM, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  store i8* %227, i8** %235, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 @SA_DBG2(i8* %249)
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %252, align 8
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = mul i64 8, %266
  %268 = trunc i64 %267 to i32
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  store i32 %268, i32* %276, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = mul i64 8, %280
  %282 = trunc i64 %281 to i32
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  store i32 %282, i32* %290, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 3
  store i32 4, i32* %298, align 4
  %299 = load i8*, i8** @AGSA_DMA_MEM, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 4
  store i8* %299, i8** %307, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %312, align 8
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = inttoptr i64 %320 to i8*
  %322 = call i32 @SA_DBG2(i8* %321)
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %324, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %327

327:                                              ; preds = %497, %2
  %328 = load i64, i64* %5, align 8
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = icmp ult i64 %328, %332
  br i1 %333, label %334, label %500

334:                                              ; preds = %327
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = load i64, i64* %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 0, %341
  br i1 %342, label %343, label %496

343:                                              ; preds = %334
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 3
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %345, align 8
  %347 = load i64, i64* %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = load i64, i64* %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = mul i64 %350, %357
  store i64 %358, i64* %8, align 8
  %359 = load i64, i64* %8, align 8
  %360 = and i64 %359, 127
  store i64 %360, i64* %9, align 8
  %361 = load i64, i64* %9, align 8
  %362 = icmp ugt i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %343
  %364 = load i64, i64* %9, align 8
  %365 = sub i64 128, %364
  %366 = load i64, i64* %8, align 8
  %367 = add i64 %366, %365
  store i64 %367, i64* %8, align 8
  br label %368

368:                                              ; preds = %363, %343
  %369 = load i64, i64* %6, align 8
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %417

371:                                              ; preds = %368
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %373, align 8
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  store i32 1, i32* %379, align 8
  %380 = load i64, i64* %8, align 8
  %381 = trunc i64 %380 to i32
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %383, align 8
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 1
  store i32 %381, i32* %389, align 4
  %390 = load i64, i64* %8, align 8
  %391 = trunc i64 %390 to i32
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %393, align 8
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 2
  store i32 %391, i32* %399, align 8
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %401, align 8
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 3
  store i32 128, i32* %407, align 4
  %408 = load i8*, i8** @AGSA_CACHED_DMA_MEM, align 8
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %410, align 8
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 4
  store i8* %408, i8** %416, align 8
  br label %444

417:                                              ; preds = %368
  %418 = load i64, i64* %8, align 8
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %420, align 8
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = add i64 %428, %418
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %426, align 4
  %431 = load i64, i64* %8, align 8
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %433, align 8
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = sext i32 %440 to i64
  %442 = add i64 %441, %431
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %439, align 8
  br label %444

444:                                              ; preds = %417, %371
  %445 = load i64, i64* %6, align 8
  %446 = add i64 %445, 1
  store i64 %446, i64* %6, align 8
  %447 = load i64, i64* %5, align 8
  %448 = add i64 %447, 1
  %449 = load i64, i64* @MAX_QUEUE_EACH_MEM, align 8
  %450 = urem i64 %448, %449
  %451 = icmp eq i64 0, %450
  br i1 %451, label %460, label %452

452:                                              ; preds = %444
  %453 = load i64, i64* %5, align 8
  %454 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = sub nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = icmp eq i64 %453, %458
  br i1 %459, label %460, label %495

460:                                              ; preds = %452, %444
  %461 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_12__*, %struct.TYPE_12__** %465, align 8
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = inttoptr i64 %473 to i8*
  %475 = call i32 @SA_DBG2(i8* %474)
  %476 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %480, align 8
  %482 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = sext i32 %487 to i64
  %489 = inttoptr i64 %488 to i8*
  %490 = call i32 @SA_DBG2(i8* %489)
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = add i64 %493, 1
  store i64 %494, i64* %492, align 8
  store i64 0, i64* %6, align 8
  br label %495

495:                                              ; preds = %460, %452
  br label %496

496:                                              ; preds = %495, %334
  br label %497

497:                                              ; preds = %496
  %498 = load i64, i64* %5, align 8
  %499 = add i64 %498, 1
  store i64 %499, i64* %5, align 8
  br label %327

500:                                              ; preds = %327
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %501

501:                                              ; preds = %671, %500
  %502 = load i64, i64* %5, align 8
  %503 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  %507 = icmp ult i64 %502, %506
  br i1 %507, label %508, label %674

508:                                              ; preds = %501
  %509 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %509, i32 0, i32 2
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %510, align 8
  %512 = load i64, i64* %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 0, %515
  br i1 %516, label %517, label %670

517:                                              ; preds = %508
  %518 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %518, i32 0, i32 2
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %519, align 8
  %521 = load i64, i64* %5, align 8
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_10__*, %struct.TYPE_10__** %526, align 8
  %528 = load i64, i64* %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = mul i64 %524, %531
  store i64 %532, i64* %10, align 8
  %533 = load i64, i64* %10, align 8
  %534 = and i64 %533, 127
  store i64 %534, i64* %11, align 8
  %535 = load i64, i64* %11, align 8
  %536 = icmp ugt i64 %535, 0
  br i1 %536, label %537, label %542

537:                                              ; preds = %517
  %538 = load i64, i64* %11, align 8
  %539 = sub i64 128, %538
  %540 = load i64, i64* %10, align 8
  %541 = add i64 %540, %539
  store i64 %541, i64* %10, align 8
  br label %542

542:                                              ; preds = %537, %517
  %543 = load i64, i64* %6, align 8
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %591

545:                                              ; preds = %542
  %546 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_12__*, %struct.TYPE_12__** %547, align 8
  %549 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %552, i32 0, i32 0
  store i32 1, i32* %553, align 8
  %554 = load i64, i64* %10, align 8
  %555 = trunc i64 %554 to i32
  %556 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %556, i32 0, i32 1
  %558 = load %struct.TYPE_12__*, %struct.TYPE_12__** %557, align 8
  %559 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %558, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %562, i32 0, i32 1
  store i32 %555, i32* %563, align 4
  %564 = load i64, i64* %10, align 8
  %565 = trunc i64 %564 to i32
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 1
  %568 = load %struct.TYPE_12__*, %struct.TYPE_12__** %567, align 8
  %569 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %572, i32 0, i32 2
  store i32 %565, i32* %573, align 8
  %574 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i32 0, i32 1
  %576 = load %struct.TYPE_12__*, %struct.TYPE_12__** %575, align 8
  %577 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %576, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i32 0, i32 3
  store i32 128, i32* %581, align 4
  %582 = load i8*, i8** @AGSA_CACHED_DMA_MEM, align 8
  %583 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %583, i32 0, i32 1
  %585 = load %struct.TYPE_12__*, %struct.TYPE_12__** %584, align 8
  %586 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %587 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i64 %588
  %590 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %589, i32 0, i32 4
  store i8* %582, i8** %590, align 8
  br label %618

591:                                              ; preds = %542
  %592 = load i64, i64* %10, align 8
  %593 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %593, i32 0, i32 1
  %595 = load %struct.TYPE_12__*, %struct.TYPE_12__** %594, align 8
  %596 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %597 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  %603 = add i64 %602, %592
  %604 = trunc i64 %603 to i32
  store i32 %604, i32* %600, align 4
  %605 = load i64, i64* %10, align 8
  %606 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %607 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %606, i32 0, i32 1
  %608 = load %struct.TYPE_12__*, %struct.TYPE_12__** %607, align 8
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %608, i64 %611
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 8
  %615 = sext i32 %614 to i64
  %616 = add i64 %615, %605
  %617 = trunc i64 %616 to i32
  store i32 %617, i32* %613, align 8
  br label %618

618:                                              ; preds = %591, %545
  %619 = load i64, i64* %6, align 8
  %620 = add i64 %619, 1
  store i64 %620, i64* %6, align 8
  %621 = load i64, i64* %5, align 8
  %622 = add i64 %621, 1
  %623 = load i64, i64* @MAX_QUEUE_EACH_MEM, align 8
  %624 = urem i64 %622, %623
  %625 = icmp eq i64 0, %624
  br i1 %625, label %634, label %626

626:                                              ; preds = %618
  %627 = load i64, i64* %5, align 8
  %628 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %629 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = sub nsw i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = icmp eq i64 %627, %632
  br i1 %633, label %634, label %669

634:                                              ; preds = %626, %618
  %635 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %636 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %635, i32 0, i32 0
  %637 = load i64, i64* %636, align 8
  %638 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %639 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %638, i32 0, i32 1
  %640 = load %struct.TYPE_12__*, %struct.TYPE_12__** %639, align 8
  %641 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %642 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %641, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %640, i64 %643
  %645 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = inttoptr i64 %647 to i8*
  %649 = call i32 @SA_DBG2(i8* %648)
  %650 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %651 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %650, i32 0, i32 0
  %652 = load i64, i64* %651, align 8
  %653 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %654 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %653, i32 0, i32 1
  %655 = load %struct.TYPE_12__*, %struct.TYPE_12__** %654, align 8
  %656 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %657 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %656, i32 0, i32 0
  %658 = load i64, i64* %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %655, i64 %658
  %660 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 8
  %662 = sext i32 %661 to i64
  %663 = inttoptr i64 %662 to i8*
  %664 = call i32 @SA_DBG2(i8* %663)
  %665 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %666 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = add i64 %667, 1
  store i64 %668, i64* %666, align 8
  store i64 0, i64* %6, align 8
  br label %669

669:                                              ; preds = %634, %626
  br label %670

670:                                              ; preds = %669, %508
  br label %671

671:                                              ; preds = %670
  %672 = load i64, i64* %5, align 8
  %673 = add i64 %672, 1
  store i64 %673, i64* %5, align 8
  br label %501

674:                                              ; preds = %501
  ret void
}

declare dso_local i32 @SA_DBG2(i8*) #1

declare dso_local i32 @SA_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
