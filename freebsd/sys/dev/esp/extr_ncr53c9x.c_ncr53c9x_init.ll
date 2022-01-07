; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i64, i32, i64, i32, %struct.ncr53c9x_tinfo*, i32, i32, i64, i64, i64, i64, i32*, i32 }
%struct.ncr53c9x_tinfo = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i64, i64 }
%struct.TYPE_3__ = type { i8*, i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[NCR_INIT(%d) %d] \00", align 1
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@INVALID_PHASE = common dso_local global i32 0, align 4
@T_SYNCHOFF = common dso_local global i32 0, align 4
@T_RSELECTOFF = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i8* null, align 8
@T_SDTRSENT = common dso_local global i32 0, align 4
@T_WDTRSENT = common dso_local global i32 0, align 4
@NCR_SBR = common dso_local global i64 0, align 8
@NCRCMD_RSTSCSI = common dso_local global i32 0, align 4
@NCR_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncr53c9x_softc*, i32)* @ncr53c9x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_init(%struct.ncr53c9x_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncr53c9x_tinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @NCR_MISC(i8* %14)
  %16 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %2
  %21 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %21, i32 0, i32 12
  %23 = call i32 @TAILQ_INIT(i32* %22)
  %24 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %24, i32 0, i32 11
  store i32* null, i32** %25, align 8
  %26 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %26, i32 0, i32 4
  %28 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %27, align 8
  %29 = call i32 @memset(%struct.ncr53c9x_tinfo* %28, i32 0, i32 64)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %45, %20
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %37, i32 0, i32 4
  %39 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %39, i64 %41
  %43 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %42, i32 0, i32 3
  %44 = call i32 @LIST_INIT(i32* %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %30

48:                                               ; preds = %30
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %51 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %52 = call i32 @ncr53c9x_clear(%struct.ncr53c9x_softc* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %55 = call i32 @ncr53c9x_reset(%struct.ncr53c9x_softc* %54)
  %56 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %60, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %62, i32 0, i32 9
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @INVALID_PHASE, align 4
  %65 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %67, i32 0, i32 6
  store i32 %64, i32* %68, align 4
  %69 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %145

73:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %141, %73
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %144

80:                                               ; preds = %74
  %81 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %81, i32 0, i32 4
  %83 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %83, i64 %85
  store %struct.ncr53c9x_tinfo* %86, %struct.ncr53c9x_tinfo** %5, align 8
  %87 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %80
  %92 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 7
  %97 = add nsw i32 %96, 8
  %98 = shl i32 1, %97
  %99 = and i32 %94, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %104

102:                                              ; preds = %91, %80
  %103 = load i32, i32* @T_SYNCHOFF, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  %106 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 7
  %111 = shl i32 1, %110
  %112 = and i32 %108, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %117

115:                                              ; preds = %104
  %116 = load i32, i32* @T_RSELECTOFF, align 4
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ 0, %114 ], [ %116, %115 ]
  %119 = or i32 %105, %118
  %120 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %121 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %123 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %126 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %129 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %132 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load i8*, i8** @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %135 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %136 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  %138 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %139 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i8* %134, i8** %140, align 8
  br label %141

141:                                              ; preds = %117
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %74

144:                                              ; preds = %74
  br label %181

145:                                              ; preds = %53
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %177, %145
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %180

152:                                              ; preds = %146
  %153 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %153, i32 0, i32 4
  %155 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %155, i64 %157
  store %struct.ncr53c9x_tinfo* %158, %struct.ncr53c9x_tinfo** %5, align 8
  %159 = load i32, i32* @T_SDTRSENT, align 4
  %160 = load i32, i32* @T_WDTRSENT, align 4
  %161 = or i32 %159, %160
  %162 = xor i32 %161, -1
  %163 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %164 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %168 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  %170 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %171 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load i8*, i8** @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %174 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %5, align 8
  %175 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  store i8* %173, i8** %176, align 8
  br label %177

177:                                              ; preds = %152
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %146

180:                                              ; preds = %146
  br label %181

181:                                              ; preds = %180, %144
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i64, i64* @NCR_SBR, align 8
  %186 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %187 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %189 = load i32, i32* @NCRCMD_RSTSCSI, align 4
  %190 = call i32 @NCRCMD(%struct.ncr53c9x_softc* %188, i32 %189)
  %191 = call i32 @DELAY(i32 250000)
  br label %198

192:                                              ; preds = %181
  %193 = load i64, i64* @NCR_IDLE, align 8
  %194 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %197 = call i32 @ncr53c9x_sched(%struct.ncr53c9x_softc* %196)
  br label %198

198:                                              ; preds = %192, %184
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @NCR_MISC(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @memset(%struct.ncr53c9x_tinfo*, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @ncr53c9x_clear(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @ncr53c9x_reset(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @NCRCMD(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ncr53c9x_sched(%struct.ncr53c9x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
