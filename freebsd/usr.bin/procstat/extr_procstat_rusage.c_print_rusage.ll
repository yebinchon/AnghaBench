; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_print_rusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_print_rusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.kinfo_proc = type { i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"{d:resource/%-14s} {d:usage/%29s}{P:   }\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"user time\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"system time\00", align 1
@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_PERTHREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory in print_rusage()\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"{e:thread_id/%d}\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"{e:process_id/%d}\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"{e:command/%s}\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"{e:user time/%s}\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"{e:system time/%s}\00", align 1
@rusage_info = common dso_local global %struct.TYPE_5__* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"{e:%s/%%D}\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"{d:resource/%-32s} {d:usage/%14s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kinfo_proc*)* @print_rusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rusage(%struct.kinfo_proc* %0) #0 {
  %2 = alloca %struct.kinfo_proc*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %2, align 8
  %7 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %8 = call i32 @print_prefix(%struct.kinfo_proc* %7)
  %9 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %10 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call i32 @format_time(i32* %11)
  %13 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %15 = call i32 @print_prefix(%struct.kinfo_proc* %14)
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %17 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @format_time(i32* %18)
  %20 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @procstat_opts, align 4
  %22 = load i32, i32* @PS_OPT_PERTHREAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %27 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @xo_errc(i32 1, i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @xo_open_container(i8* %36)
  %38 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %39 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %51

42:                                               ; preds = %1
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %44 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %48 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %42, %35
  %52 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %53 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @format_time(i32* %54)
  %56 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %58 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @format_time(i32* %59)
  %61 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %63 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64* %64, i64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %116, %51
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rusage_info, align 8
  %68 = call i32 @nitems(%struct.TYPE_5__* %67)
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %119

70:                                               ; preds = %65
  %71 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %72 = call i32 @print_prefix(%struct.kinfo_proc* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rusage_info, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %5, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = call i32 @xo_errc(i32 1, i32 %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %70
  %86 = load i8*, i8** %5, align 8
  %87 = load i64*, i64** %3, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, ...) @xo_emit(i8* %86, i64 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rusage_info, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64*, i64** %3, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rusage_info, align 8
  %101 = load i32, i32* %4, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rusage_info, align 8
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @format_value(i64 %99, i32 %105, i32 %111)
  %113 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %97, i32 %112)
  %114 = load i64*, i64** %3, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %3, align 8
  br label %116

116:                                              ; preds = %85
  %117 = load i32, i32* %4, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %65

119:                                              ; preds = %65
  %120 = load i32, i32* @procstat_opts, align 4
  %121 = load i32, i32* @PS_OPT_PERTHREAD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @xo_close_container(i8* %125)
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @free(i8* %127)
  br label %129

129:                                              ; preds = %124, %119
  ret void
}

declare dso_local i32 @print_prefix(%struct.kinfo_proc*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @format_time(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @xo_errc(i32, i32, i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @format_value(i64, i32, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
