; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_reselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_reselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i64, i32, i32, i32, i32, %struct.ncr53c9x_ecb*, i32, i32, %struct.ncr53c9x_tinfo* }
%struct.ncr53c9x_ecb = type { i32, i32, i32 }
%struct.ncr53c9x_tinfo = type { i32 }
%struct.ncr53c9x_linfo = type { %struct.ncr53c9x_ecb**, %struct.ncr53c9x_ecb*, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@NCR_VARIANT_FAS366 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"reselect with invalid selid %02x; sending DEVICE RESET\0A\00", align 1
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@NCR_IDENTIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"reselect from target %d lun %d tag %x:%x with no nexus; sending ABORT\0A\00", align 1
@NCR_CONNECTED = common dso_local global i32 0, align 4
@ECB_RESET = common dso_local global i32 0, align 4
@SEND_DEV_RESET = common dso_local global i32 0, align 4
@ECB_ABORT = common dso_local global i32 0, align 4
@SEND_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncr53c9x_softc*, i32, i32, i32)* @ncr53c9x_reselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncr53c9x_reselect(%struct.ncr53c9x_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ncr53c9x_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ncr53c9x_ecb*, align 8
  %11 = alloca %struct.ncr53c9x_linfo*, align 8
  %12 = alloca %struct.ncr53c9x_tinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ncr53c9x_ecb* null, %struct.ncr53c9x_ecb** %10, align 8
  %16 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %16, i32 %17)
  %19 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %20 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NCR_VARIANT_FAS366, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  br label %53

28:                                               ; preds = %4
  %29 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %30 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %33 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %31, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %45 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %156

49:                                               ; preds = %28
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @ffs(i32 %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %49, %24
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 7
  store i32 %55, i32* %13, align 4
  %56 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %57 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %56, i32 0, i32 8
  %58 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %58, i64 %60
  store %struct.ncr53c9x_tinfo* %61, %struct.ncr53c9x_tinfo** %12, align 8
  %62 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call %struct.ncr53c9x_linfo* @TINFO_LUN(%struct.ncr53c9x_tinfo* %62, i32 %63)
  store %struct.ncr53c9x_linfo* %64, %struct.ncr53c9x_linfo** %11, align 8
  %65 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %11, align 8
  %66 = icmp ne %struct.ncr53c9x_linfo* %65, null
  br i1 %66, label %67, label %103

67:                                               ; preds = %53
  %68 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %11, align 8
  %69 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %68, i32 0, i32 1
  %70 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %69, align 8
  %71 = icmp ne %struct.ncr53c9x_ecb* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %11, align 8
  %74 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %11, align 8
  %79 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %78, i32 0, i32 1
  %80 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %79, align 8
  store %struct.ncr53c9x_ecb* %80, %struct.ncr53c9x_ecb** %10, align 8
  br label %102

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @NCR_IDENTIFIED, align 4
  %87 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %88 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %5, align 4
  br label %162

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %11, align 8
  %94 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %93, i32 0, i32 0
  %95 = load %struct.ncr53c9x_ecb**, %struct.ncr53c9x_ecb*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %95, i64 %97
  %99 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %98, align 8
  store %struct.ncr53c9x_ecb* %99, %struct.ncr53c9x_ecb** %10, align 8
  br label %100

100:                                              ; preds = %92, %89
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %77
  br label %103

103:                                              ; preds = %102, %53
  %104 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %10, align 8
  %105 = icmp eq %struct.ncr53c9x_ecb* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %108 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113)
  br label %159

115:                                              ; preds = %103
  %116 = load i32, i32* @NCR_CONNECTED, align 4
  %117 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %118 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %10, align 8
  %120 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %121 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %120, i32 0, i32 5
  store %struct.ncr53c9x_ecb* %119, %struct.ncr53c9x_ecb** %121, align 8
  %122 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %123 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %12, align 8
  %124 = call i32 @ncr53c9x_setsync(%struct.ncr53c9x_softc* %122, %struct.ncr53c9x_tinfo* %123)
  %125 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %10, align 8
  %126 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ECB_RESET, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load i32, i32* @SEND_DEV_RESET, align 4
  %133 = call i32 @ncr53c9x_sched_msgout(i32 %132)
  br label %145

134:                                              ; preds = %115
  %135 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %10, align 8
  %136 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ECB_ABORT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @SEND_ABORT, align 4
  %143 = call i32 @ncr53c9x_sched_msgout(i32 %142)
  br label %144

144:                                              ; preds = %141, %134
  br label %145

145:                                              ; preds = %144, %131
  %146 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %10, align 8
  %147 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %150 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %10, align 8
  %152 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %6, align 8
  %155 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  store i32 0, i32* %5, align 4
  br label %162

156:                                              ; preds = %43
  %157 = load i32, i32* @SEND_DEV_RESET, align 4
  %158 = call i32 @ncr53c9x_sched_msgout(i32 %157)
  store i32 1, i32* %5, align 4
  br label %162

159:                                              ; preds = %106
  %160 = load i32, i32* @SEND_ABORT, align 4
  %161 = call i32 @ncr53c9x_sched_msgout(i32 %160)
  store i32 1, i32* %5, align 4
  br label %162

162:                                              ; preds = %159, %156, %145, %85
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local %struct.ncr53c9x_linfo* @TINFO_LUN(%struct.ncr53c9x_tinfo*, i32) #1

declare dso_local i32 @ncr53c9x_setsync(%struct.ncr53c9x_softc*, %struct.ncr53c9x_tinfo*) #1

declare dso_local i32 @ncr53c9x_sched_msgout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
