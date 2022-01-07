; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_read_config_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_read_config_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_config_params = type { i32*, i32, i32*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i64, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.mps_command = type { i32, i32, i32 (%struct.mps_softc*, %struct.mps_command*)*, %struct.mps_config_params*, %struct.TYPE_11__, i32*, i32*, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MPS_FLAGS_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i64 0, align 8
@MPS_CM_FLAGS_SGE_SIMPLE = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_DATAIN = common dso_local global i32 0, align 4
@MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE = common dso_local global i32 0, align 4
@CAN_SLEEP = common dso_local global i32 0, align 4
@MPS_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error %d reading config page\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_read_config_page(%struct.mps_softc* %0, %struct.mps_config_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_softc*, align 8
  %5 = alloca %struct.mps_config_params*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.mps_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %4, align 8
  store %struct.mps_config_params* %1, %struct.mps_config_params** %5, align 8
  %11 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MPS_FLAGS_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %3, align 4
  br label %189

19:                                               ; preds = %2
  %20 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %21 = call %struct.mps_command* @mps_alloc_command(%struct.mps_softc* %20)
  store %struct.mps_command* %21, %struct.mps_command** %7, align 8
  %22 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %23 = icmp eq %struct.mps_command* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  store i32 %25, i32* %3, align 4
  br label %189

26:                                               ; preds = %19
  %27 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %28 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %6, align 8
  %31 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %35 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %44 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %49 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %26
  %56 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %57 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %9, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  br label %116

88:                                               ; preds = %26
  %89 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %90 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %10, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %88, %55
  %117 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %118 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %121 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %120, i32 0, i32 6
  store i32* %119, i32** %121, align 8
  %122 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %123 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %126 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  %127 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %128 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %116
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %135 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %134, i32 0, i32 5
  store i32* %133, i32** %135, align 8
  %136 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %137 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %136, i32 0, i32 0
  store i32 4, i32* %137, align 8
  %138 = load i32, i32* @MPS_CM_FLAGS_SGE_SIMPLE, align 4
  %139 = load i32, i32* @MPS_CM_FLAGS_DATAIN, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %142 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %146

143:                                              ; preds = %116
  %144 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %145 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %144, i32 0, i32 5
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %143, %131
  %147 = load i32, i32* @MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE, align 4
  %148 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %149 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 8
  %152 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %153 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %154 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %153, i32 0, i32 3
  store %struct.mps_config_params* %152, %struct.mps_config_params** %154, align 8
  %155 = load %struct.mps_config_params*, %struct.mps_config_params** %5, align 8
  %156 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %146
  %160 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %161 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %160, i32 0, i32 2
  store i32 (%struct.mps_softc*, %struct.mps_command*)* @mps_config_complete, i32 (%struct.mps_softc*, %struct.mps_command*)** %161, align 8
  %162 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %163 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %164 = call i32 @mps_map_command(%struct.mps_softc* %162, %struct.mps_command* %163)
  store i32 %164, i32* %3, align 4
  br label %189

165:                                              ; preds = %146
  %166 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %167 = load i32, i32* @CAN_SLEEP, align 4
  %168 = call i32 @mps_wait_command(%struct.mps_softc* %166, %struct.mps_command** %7, i32 0, i32 %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %165
  %172 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %173 = load i32, i32* @MPS_FAULT, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @mps_dprint(%struct.mps_softc* %172, i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %174)
  %176 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %177 = icmp ne %struct.mps_command* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %180 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %181 = call i32 @mps_free_command(%struct.mps_softc* %179, %struct.mps_command* %180)
  br label %182

182:                                              ; preds = %178, %171
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %3, align 4
  br label %189

184:                                              ; preds = %165
  %185 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %186 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %187 = call i32 @mps_config_complete(%struct.mps_softc* %185, %struct.mps_command* %186)
  br label %188

188:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %188, %182, %159, %24, %17
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.mps_command* @mps_alloc_command(%struct.mps_softc*) #1

declare dso_local i32 @mps_config_complete(%struct.mps_softc*, %struct.mps_command*) #1

declare dso_local i32 @mps_map_command(%struct.mps_softc*, %struct.mps_command*) #1

declare dso_local i32 @mps_wait_command(%struct.mps_softc*, %struct.mps_command**, i32, i32) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, i32) #1

declare dso_local i32 @mps_free_command(%struct.mps_softc*, %struct.mps_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
