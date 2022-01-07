; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_logical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.ciss_ldrive** }
%struct.ciss_ldrive = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ciss_notify = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"logical drive %d (%s) changed status %s->%s, spare status 0x%b\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\10\01configured\02rebuilding\03failed\04in use\05available\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"logical drive %d (%s) media exchanged, ready to go online\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"rebuild of logical drive %d (%s) failed due to %s error\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"FATAL I/O ERROR on logical drive %d (%s), SCSI port %d ID %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"logical drive %d (%s) completed consistency initialisation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, %struct.ciss_notify*)* @ciss_notify_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_notify_logical(%struct.ciss_softc* %0, %struct.ciss_notify* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_notify*, align 8
  %5 = alloca %struct.ciss_ldrive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_notify* %1, %struct.ciss_notify** %4, align 8
  %9 = call i32 @debug_called(i32 2)
  %10 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %11 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %16 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %20, i32 0, i32 0
  %22 = load %struct.ciss_ldrive**, %struct.ciss_ldrive*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ciss_ldrive*, %struct.ciss_ldrive** %22, i64 %24
  %26 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %26, i64 %28
  store %struct.ciss_ldrive* %29, %struct.ciss_ldrive** %5, align 8
  %30 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %31 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %204 [
    i32 129, label %33
    i32 130, label %160
    i32 128, label %187
  ]

33:                                               ; preds = %2
  %34 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %35 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %159 [
    i32 0, label %37
    i32 1, label %111
    i32 2, label %142
    i32 3, label %142
  ]

37:                                               ; preds = %33
  %38 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ciss_name_device(%struct.ciss_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %43 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %44 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %49 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %52 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ciss_name_ldrive_status(i32 %55)
  %57 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %58 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ciss_name_ldrive_status(i32 %61)
  %63 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %64 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.ciss_softc*, i8*, i32, i32, ...) @ciss_printf(%struct.ciss_softc* %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %56, i32 %62, i32 %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %70 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @ciss_decode_ldrive_status(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %77 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ciss_decode_ldrive_status(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %84 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %86 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %85, i32 0, i32 3
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %37
  %90 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %91 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %96 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %95, i32 0, i32 3
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %89, %37
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %102 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %107 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %109 = call i32 @ciss_notify_rescan_logical(%struct.ciss_softc* %108)
  br label %110

110:                                              ; preds = %105, %99
  br label %159

111:                                              ; preds = %33
  %112 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @ciss_name_device(%struct.ciss_softc* %112, i32 %113, i32 %114)
  %116 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %117 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %118 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %123 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (%struct.ciss_softc*, i8*, i32, i32, ...) @ciss_printf(%struct.ciss_softc* %116, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %127 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %128 = call i32 @ciss_accept_media(%struct.ciss_softc* %126, %struct.ciss_ldrive* %127)
  %129 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %130 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %132 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @ciss_decode_ldrive_status(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %139 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %141 = call i32 @ciss_notify_rescan_logical(%struct.ciss_softc* %140)
  br label %159

142:                                              ; preds = %33, %33
  %143 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %144 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %145 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %150 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %153 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %158 = call i32 (%struct.ciss_softc*, i8*, i32, i32, ...) @ciss_printf(%struct.ciss_softc* %143, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %151, i8* %157)
  br label %159

159:                                              ; preds = %33, %142, %111, %110
  br label %204

160:                                              ; preds = %2
  %161 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %162 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %160
  %166 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %167 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %168 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %173 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %176 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %181 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.ciss_softc*, i8*, i32, i32, ...) @ciss_printf(%struct.ciss_softc* %166, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %174, i32 %179, i32 %184)
  br label %186

186:                                              ; preds = %165, %160
  br label %204

187:                                              ; preds = %2
  %188 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %189 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %194 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %195 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %5, align 8
  %200 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (%struct.ciss_softc*, i8*, i32, i32, ...) @ciss_printf(%struct.ciss_softc* %193, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %192, %187
  br label %204

204:                                              ; preds = %2, %203, %186, %159
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_name_device(%struct.ciss_softc*, i32, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32, i32, ...) #1

declare dso_local i32 @ciss_name_ldrive_status(i32) #1

declare dso_local i8* @ciss_decode_ldrive_status(i32) #1

declare dso_local i32 @ciss_notify_rescan_logical(%struct.ciss_softc*) #1

declare dso_local i32 @ciss_accept_media(%struct.ciss_softc*, %struct.ciss_ldrive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
