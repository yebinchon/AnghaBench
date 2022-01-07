; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_zarc.c_getinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_zarc.c_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.devinfo* }
%struct.devinfo = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.devinfo* }
%struct.zarcstats = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@last_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cur_dev = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"kstat.zfs.misc.arcstats.hits\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"kstat.zfs.misc.arcstats.misses\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"kstat.zfs.misc.arcstats.demand_data_hits\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"kstat.zfs.misc.arcstats.demand_data_misses\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"kstat.zfs.misc.arcstats.demand_metadata_hits\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"kstat.zfs.misc.arcstats.demand_metadata_misses\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"kstat.zfs.misc.arcstats.prefetch_data_hits\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"kstat.zfs.misc.arcstats.prefetch_data_misses\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"kstat.zfs.misc.arcstats.prefetch_metadata_hits\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"kstat.zfs.misc.arcstats.prefetch_metadata_misses\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"kstat.zfs.misc.zfetchstats.hits\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"kstat.zfs.misc.zfetchstats.misses\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"kstat.zfs.misc.arcstats.l2_hits\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"kstat.zfs.misc.arcstats.l2_misses\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"kstat.zfs.misc.vdev_cache_stats.hits\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"kstat.zfs.misc.vdev_cache_stats.misses\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zarcstats*)* @getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getinfo(%struct.zarcstats* %0) #0 {
  %2 = alloca %struct.zarcstats*, align 8
  %3 = alloca %struct.devinfo*, align 8
  %4 = alloca i64, align 8
  store %struct.zarcstats* %0, %struct.zarcstats** %2, align 8
  %5 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last_dev, i32 0, i32 1), align 8
  store %struct.devinfo* %5, %struct.devinfo** %3, align 8
  %6 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cur_dev, i32 0, i32 1), align 8
  store %struct.devinfo* %6, %struct.devinfo** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last_dev, i32 0, i32 1), align 8
  %7 = load %struct.devinfo*, %struct.devinfo** %3, align 8
  store %struct.devinfo* %7, %struct.devinfo** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cur_dev, i32 0, i32 1), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cur_dev, i32 0, i32 0), align 8
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last_dev, i32 0, i32 0), align 8
  %9 = call i32 @dsgetinfo(%struct.TYPE_9__* @cur_dev)
  store i64 4, i64* %4, align 8
  %10 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %11 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 7
  %13 = call i64 @sysctlbyname(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %12, i64* %4, i32* null, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %18 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %23 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %28 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %33 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %38 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %43 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %48 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %53 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %58 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %63 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %68 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  %72 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %73 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %75)
  %77 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %78 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %83 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %85)
  %87 = load %struct.zarcstats*, %struct.zarcstats** %2, align 8
  %88 = getelementptr inbounds %struct.zarcstats, %struct.zarcstats* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GETSYSCTL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @dsgetinfo(%struct.TYPE_9__*) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @GETSYSCTL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
