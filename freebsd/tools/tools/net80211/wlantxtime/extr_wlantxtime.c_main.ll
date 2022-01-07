; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate_table = type { i64*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"11g\00", align 1
@LLC_SNAPFRAMELEN = common dso_local global i32 0, align 4
@IEEE80211_CRC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"al:m:r:s\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"unknown mode %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"rate %s not valid for mode %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%u usec to send %u bytes @ %s Mb/s, %s preamble\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@IEEE80211_RATE_BASIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ieee80211_rate_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 (...) @ieee80211_phy_init()
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @LLC_SNAPFRAMELEN, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 1504, %19
  %21 = load i32, i32* @IEEE80211_CRC_LEN, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  store i64 108, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %50, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %45 [
    i32 97, label %32
    i32 108, label %33
    i32 109, label %36
    i32 114, label %38
    i32 115, label %44
  ]

32:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  br label %50

33:                                               ; preds = %30
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 @strtoul(i8* %34, i32* null, i32 0)
  store i32 %35, i32* %8, align 4
  br label %50

36:                                               ; preds = %30
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %7, align 8
  br label %50

38:                                               ; preds = %30
  %39 = load i8*, i8** @optarg, align 8
  %40 = call float @atof(i8* %39)
  store float %40, float* %16, align 4
  %41 = load float, float* %16, align 4
  %42 = fmul float 2.000000e+00, %41
  %43 = fptoui float %42 to i64
  store i64 %43, i64* %9, align 8
  br label %50

44:                                               ; preds = %30
  store i32 1, i32* %14, align 4
  br label %50

45:                                               ; preds = %30
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @usage(i8* %48)
  br label %50

50:                                               ; preds = %45, %44, %38, %36, %33, %32
  br label %25

51:                                               ; preds = %25
  %52 = load i8*, i8** %7, align 8
  %53 = call %struct.ieee80211_rate_table* @mode2table(i8* %52)
  store %struct.ieee80211_rate_table* %53, %struct.ieee80211_rate_table** %6, align 8
  %54 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %55 = icmp eq %struct.ieee80211_rate_table* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %95, label %62

62:                                               ; preds = %59
  %63 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rate_table, %struct.ieee80211_rate_table* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = call i8* @srate(i64 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 (i32, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %71, %62
  %77 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @checkpreamble(%struct.ieee80211_rate_table* %77, i64 %78, i32 %79, i32 1)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i64 @ieee80211_compute_duration(%struct.ieee80211_rate_table* %81, i32 %82, i64 %83, i32 %84)
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i64, i64* %9, align 8
  %89 = call i8* @srate(i64 %88)
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %94 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %86, i32 %87, i8* %89, i8* %93)
  br label %135

95:                                               ; preds = %59
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %131, %95
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rate_table, %struct.ieee80211_rate_table* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rate_table, %struct.ieee80211_rate_table* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IEEE80211_RATE_BASIC, align 8
  %111 = xor i64 %110, -1
  %112 = and i64 %109, %111
  store i64 %112, i64* %9, align 8
  %113 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @checkpreamble(%struct.ieee80211_rate_table* %113, i64 %114, i32 %115, i32 0)
  store i32 %116, i32* %15, align 4
  %117 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i64, i64* %9, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i64 @ieee80211_compute_duration(%struct.ieee80211_rate_table* %117, i32 %118, i64 %119, i32 %120)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i8* @srate(i64 %124)
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %130 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %122, i32 %123, i8* %125, i8* %129)
  br label %131

131:                                              ; preds = %102
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %11, align 8
  br label %96

134:                                              ; preds = %96
  br label %135

135:                                              ; preds = %134, %76
  ret i32 0
}

declare dso_local i32 @ieee80211_phy_init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local float @atof(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local %struct.ieee80211_rate_table* @mode2table(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i8* @srate(i64) #1

declare dso_local i32 @checkpreamble(%struct.ieee80211_rate_table*, i64, i32, i32) #1

declare dso_local i64 @ieee80211_compute_duration(%struct.ieee80211_rate_table*, i32, i64, i32) #1

declare dso_local i32 @printf(i8*, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
