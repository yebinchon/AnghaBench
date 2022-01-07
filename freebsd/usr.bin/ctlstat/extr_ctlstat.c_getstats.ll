; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_getstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_getstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_io_stats = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.ctl_io_stats* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.ctl_get_io_stats = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.ctl_get_io_stats* }

@CTL_STAT_NUM_ITEMS = common dso_local global i32 0, align 4
@CTLSTAT_FLAG_PORTS = common dso_local global i32 0, align 4
@CTL_GET_PORT_STATS = common dso_local global i32 0, align 4
@CTL_GET_LUN_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CTL_GET_*_STATS ioctl returned error\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CTL_GET_*_STATS ioctl returned CTL_SS_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"CTL_GET_*_STATS returned NEED_MORE_SPACE again\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"CTL_GET_*_STATS ioctl returned unknown status %d\00", align 1
@CTL_STATS_FLAG_TIME_VALID = common dso_local global i32 0, align 4
@CTLSTAT_FLAG_TIME_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, %struct.ctl_io_stats**, %struct.timespec*, i32*)* @getstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstats(i32 %0, i32* %1, i32* %2, %struct.ctl_io_stats** %3, %struct.timespec* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ctl_io_stats**, align 8
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ctl_get_io_stats, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ctl_io_stats** %3, %struct.ctl_io_stats*** %10, align 8
  store %struct.timespec* %4, %struct.timespec** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @CTL_STAT_NUM_ITEMS, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %6
  br label %22

22:                                               ; preds = %80, %21
  %23 = load %struct.ctl_io_stats**, %struct.ctl_io_stats*** %10, align 8
  %24 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %23, align 8
  %25 = icmp eq %struct.ctl_io_stats* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 40, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.ctl_io_stats* @malloc(i32 %31)
  %33 = load %struct.ctl_io_stats**, %struct.ctl_io_stats*** %10, align 8
  store %struct.ctl_io_stats* %32, %struct.ctl_io_stats** %33, align 8
  br label %34

34:                                               ; preds = %26, %22
  %35 = bitcast %struct.ctl_get_io_stats* %13 to %struct.ctl_io_stats*
  %36 = call i32 @memset(%struct.ctl_io_stats* %35, i32 0, i32 40)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 40
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.ctl_io_stats**, %struct.ctl_io_stats*** %10, align 8
  %44 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %43, align 8
  %45 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memset(%struct.ctl_io_stats* %44, i32 0, i32 %46)
  %48 = load %struct.ctl_io_stats**, %struct.ctl_io_stats*** %10, align 8
  %49 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %48, align 8
  %50 = bitcast %struct.ctl_io_stats* %49 to %struct.ctl_get_io_stats*
  %51 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 6
  store %struct.ctl_get_io_stats* %50, %struct.ctl_get_io_stats** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CTLSTAT_FLAG_PORTS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %34
  %59 = load i32, i32* @CTL_GET_PORT_STATS, align 4
  br label %62

60:                                               ; preds = %34
  %61 = load i32, i32* @CTL_GET_LUN_STATS, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = bitcast %struct.ctl_get_io_stats* %13 to %struct.ctl_io_stats*
  %65 = call i32 @ioctl(i32 %52, i32 %63, %struct.ctl_io_stats* %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %92 [
    i32 128, label %72
    i32 130, label %73
    i32 129, label %75
  ]

72:                                               ; preds = %69
  br label %96

73:                                               ; preds = %69
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %96

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = icmp sge i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 5
  %84 = sdiv i32 %83, 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.ctl_io_stats**, %struct.ctl_io_stats*** %10, align 8
  %87 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %86, align 8
  %88 = call i32 @free(%struct.ctl_io_stats* %87)
  %89 = load %struct.ctl_io_stats**, %struct.ctl_io_stats*** %10, align 8
  store %struct.ctl_io_stats* null, %struct.ctl_io_stats** %89, align 8
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %22

92:                                               ; preds = %69
  %93 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %73, %72
  %97 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 40
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.timespec*, %struct.timespec** %11, align 8
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.timespec*, %struct.timespec** %11, align 8
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds %struct.ctl_get_io_stats, %struct.ctl_get_io_stats* %13, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CTL_STATS_FLAG_TIME_VALID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %96
  %119 = load i32, i32* @CTLSTAT_FLAG_TIME_VALID, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %129

123:                                              ; preds = %96
  %124 = load i32, i32* @CTLSTAT_FLAG_TIME_VALID, align 4
  %125 = xor i32 %124, -1
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %125
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %118
  ret i32 0
}

declare dso_local %struct.ctl_io_stats* @malloc(i32) #1

declare dso_local i32 @memset(%struct.ctl_io_stats*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ctl_io_stats*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.ctl_io_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
