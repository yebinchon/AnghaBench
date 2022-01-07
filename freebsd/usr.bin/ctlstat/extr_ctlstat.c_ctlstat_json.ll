; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_ctlstat_json.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_ctlstat_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlstat_context = type { i32, i32, i32, %struct.ctl_io_stats* }
%struct.ctl_io_stats = type { i32, i32*, i32*, i64*, i64*, i64* }

@.str = private unnamed_addr constant [8 x i8] c"{\22%s\22:[\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"luns\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"{\22num\22:%d,\22io\22:[\00", align 1
@CTL_STATS_NUM_TYPES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"{\22type\22:\22%s\22,\00", align 1
@iotypes = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"\22bytes\22:%ju,\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\22operations\22:%ju,\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\22dmas\22:%ju,\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\22io time\22:\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c",\22dma time\22:\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"]}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlstat_context*)* @ctlstat_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctlstat_json(%struct.ctlstat_context* %0) #0 {
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
  %10 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %11 = call i64 @F_PORTS(%struct.ctlstat_context* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %148, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %19 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %151

22:                                               ; preds = %16
  %23 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %24 = call i64 @F_MASK(%struct.ctlstat_context* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %28 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %30, i64 %32
  %34 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @bit_test(i32 %29, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %148

39:                                               ; preds = %26, %22
  %40 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %40, i64 %42
  %44 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %126, %39
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CTL_STATS_NUM_TYPES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %129

51:                                               ; preds = %47
  %52 = load i8**, i8*** @iotypes, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %56)
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
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %68)
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
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %80)
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
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
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
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
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
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @CTL_STATS_NUM_TYPES, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %51
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %51
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %47

129:                                              ; preds = %47
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  %133 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %134 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %151

138:                                              ; preds = %129
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.ctlstat_context*, %struct.ctlstat_context** %2, align 8
  %141 = getelementptr inbounds %struct.ctlstat_context, %struct.ctlstat_context* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %138
  br label %148

148:                                              ; preds = %147, %38
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %16

151:                                              ; preds = %137, %16
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @F_PORTS(%struct.ctlstat_context*) #1

declare dso_local i64 @F_MASK(%struct.ctlstat_context*) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @PRINT_BINTIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
