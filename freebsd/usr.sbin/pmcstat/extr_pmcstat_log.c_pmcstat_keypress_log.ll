; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_keypress_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_keypress_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*)*, i32*, i32 (...)*, i32*, i32 (i32*)* }

@.str = private unnamed_addr constant [12 x i8] c"Key: %c => \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"enter mode 'd' or 'a' => \00", align 1
@PMCSTAT_TOP_DELTA = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"switching to delta mode\00", align 1
@PMCSTAT_TOP_ACCUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"switching to accumulation mode\00", align 1
@pmcstat_mergepmc = common dso_local global i32 0, align 4
@plugins = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"merge PMC %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"switching to plugin %s\00", align 1
@pmcstat_pmcinfilter = common dso_local global i32 0, align 4
@pmcstat_npmcs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"switching to PMC %s.%d\00", align 1
@pmcstat_pause = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"pause => press space again to continue\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"exiting...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmcstat_keypress_log() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %4 = call i32* @newwin(i32 1, i32 0, i32 1, i32 0)
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @wgetch(i32* %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (i32*, i8*, ...) @wprintw(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %152 [
    i32 99, label %11
    i32 109, label %27
    i32 110, label %68
    i32 112, label %124
    i32 32, label %138
    i32 113, label %149
  ]

11:                                               ; preds = %0
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @wprintw(i32* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @wgetch(i32* %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 100
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @PMCSTAT_TOP_DELTA, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 1), align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @wprintw(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %26

22:                                               ; preds = %11
  %23 = load i32, i32* @PMCSTAT_TOP_ACCUM, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 1), align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @wprintw(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %18
  br label %173

27:                                               ; preds = %0
  %28 = load i32, i32* @pmcstat_mergepmc, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* @pmcstat_mergepmc, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = icmp ne i32 (i32*)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = call i32 %43(i32* null)
  br label %45

45:                                               ; preds = %38, %27
  %46 = call i32 @pmcstat_stats_reset(i32 0)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32 (...)*, i32 (...)** %50, align 8
  %52 = icmp ne i32 (...)* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32 (...)*, i32 (...)** %57, align 8
  %59 = call i32 (...) %58()
  br label %60

60:                                               ; preds = %53, %45
  %61 = call i32 (...) @pmcstat_changefilter()
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @pmcstat_mergepmc, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %67 = call i32 (i32*, i8*, ...) @wprintw(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %173

68:                                               ; preds = %0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32 (i32*)*, i32 (i32*)** %72, align 8
  %74 = icmp ne i32 (i32*)* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32 (i32*)*, i32 (i32*)** %79, align 8
  %81 = call i32 %80(i32* null)
  br label %82

82:                                               ; preds = %75, %68
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  br label %93

93:                                               ; preds = %92, %83
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %83, label %101

101:                                              ; preds = %94
  %102 = call i32 @pmcstat_stats_reset(i32 0)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32 (...)*, i32 (...)** %106, align 8
  %108 = icmp ne i32 (...)* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32 (...)*, i32 (...)** %113, align 8
  %115 = call i32 (...) %114()
  br label %116

116:                                              ; preds = %109, %101
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 (i32*, i8*, ...) @wprintw(i32* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %122)
  br label %173

124:                                              ; preds = %0
  %125 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @pmcstat_pmcinfilter, align 4
  %127 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %128 = load i32, i32* @pmcstat_npmcs, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 0, i32* @pmcstat_pmcinfilter, align 4
  br label %131

131:                                              ; preds = %130, %124
  %132 = call i32 (...) @pmcstat_changefilter()
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %135 = call i32 @pmcstat_pmcindex_to_name(i32 %134)
  %136 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %137 = call i32 (i32*, i8*, ...) @wprintw(i32* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %135, i32 %136)
  br label %173

138:                                              ; preds = %0
  %139 = load i32, i32* @pmcstat_pause, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  store i32 %142, i32* @pmcstat_pause, align 4
  %143 = load i32, i32* @pmcstat_pause, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 (i32*, i8*, ...) @wprintw(i32* %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %138
  br label %173

149:                                              ; preds = %0
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 (i32*, i8*, ...) @wprintw(i32* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %173

152:                                              ; preds = %0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32 (i32, i8*)*, i32 (i32, i8*)** %156, align 8
  %158 = icmp ne i32 (i32, i8*)* %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32 (i32, i8*)*, i32 (i32, i8*)** %163, align 8
  %165 = load i32, i32* %1, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = call i32 %164(i32 %165, i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  store i32 1, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %159
  br label %172

172:                                              ; preds = %171, %152
  br label %173

173:                                              ; preds = %172, %149, %148, %131, %116, %60, %26
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @wrefresh(i32* %174)
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @delwin(i32* %176)
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @wgetch(i32*) #1

declare dso_local i32 @wprintw(i32*, i8*, ...) #1

declare dso_local i32 @pmcstat_stats_reset(i32) #1

declare dso_local i32 @pmcstat_changefilter(...) #1

declare dso_local i32 @pmcstat_pmcindex_to_name(i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @delwin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
