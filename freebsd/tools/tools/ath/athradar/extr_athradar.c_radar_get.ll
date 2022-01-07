; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_radar_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_radar_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radarhandler = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DFS_GET_THRESH = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@SIOCGATHPHYERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Radar parameters (raw):\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"    pe_enabled: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"    pe_firpwr: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"    pe_rrssi: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"    pe_height: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    pe_prssi: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"    pe_inband: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"    pe_relpwr: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"    pe_relstep: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"    pe_maxlen: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"    pe_usefir128: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"    pe_blockradar: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"    pe_enmaxrssi: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"    pe_extchannel: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"    pe_enrelpwr: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"    pe_en_relstep_check: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radarhandler*)* @radar_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radar_get(%struct.radarhandler* %0) #0 {
  %2 = alloca %struct.radarhandler*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  store %struct.radarhandler* %0, %struct.radarhandler** %2, align 8
  %4 = load i32, i32* @DFS_GET_THRESH, align 4
  %5 = load i32, i32* @ATH_DIAG_DYN, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %8 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 60)
  %11 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %12 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %15 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = ptrtoint %struct.TYPE_4__* %3 to i64
  %18 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %19 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i64 %17, i64* %20, align 8
  %21 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %22 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 60, i32* %23, align 4
  %24 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %25 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SIOCGATHPHYERR, align 4
  %28 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %29 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %28, i32 0, i32 0
  %30 = call i64 @ioctl(i32 %26, i32 %27, %struct.TYPE_5__* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.radarhandler*, %struct.radarhandler** %2, align 8
  %34 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @err(i32 1, i32 %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 13
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 14
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %83)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
