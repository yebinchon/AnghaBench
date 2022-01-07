; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_ctlstat_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_ctlstat_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlstat_context = type { i32, i32, i32, %struct.ctl_io_stats* }
%struct.ctl_io_stats = type { i32, i32*, i32*, i64*, i64*, i64* }

@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lun\00", align 1
@CTL_STATS_NUM_TYPES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"  io type %d (%s)\0A\00", align 1
@iotypes = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"   bytes %ju\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"   operations %ju\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"   dmas %ju\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"   io time \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0A   dma time \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlstat_context*)* @ctlstat_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctlstat_dump(%struct.ctlstat_context* %0) #0 {
  %2 = alloca %struct.ctlstat_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_io_stats*, align 8
  store %struct.ctlstat_context* %0, %struct.ctlstat_context** %2, align 8
  %7 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %8 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %7, i32 0, i32 3
  %9 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %8, align 8
  store %struct.ctl_io_stats* %9, %struct.ctl_io_stats** %6, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %131, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %13 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %134

16:                                               ; preds = %10
  %17 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %18 = call i64 @F_MASK(%struct.ctlstat_context* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %22 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %24, i64 %26
  %28 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @bit_test(i32 %23, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %131

33:                                               ; preds = %20, %16
  %34 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %35 = call i64 @F_PORTS(%struct.ctlstat_context* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %39, i64 %41
  %43 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %119, %33
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @CTL_STATS_NUM_TYPES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %122

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i8**, i8*** @iotypes, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %51, i8* %56)
  %58 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %58, i64 %60
  %62 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %61, i32 0, i32 5
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %70, i64 %72
  %74 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %73, i32 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %82, i64 %84
  %86 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %95 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %95, i64 %97
  %99 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PRINT_BINTIME(i32 %104)
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %107 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %107, i64 %109
  %111 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @PRINT_BINTIME(i32 %116)
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %50
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %46

122:                                              ; preds = %46
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  %125 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %126 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %134

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %32
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %10

134:                                              ; preds = %129, %10
  ret void
}

declare dso_local i64 @F_MASK(%struct.ctlstat_context*) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @F_PORTS(%struct.ctlstat_context*) #1

declare dso_local i32 @PRINT_BINTIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
