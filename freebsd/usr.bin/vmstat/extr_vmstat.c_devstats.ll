; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_devstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_devstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, x86_fp80, %struct.TYPE_6__*, [8 x i8] }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i64*, x86_fp80, %struct.TYPE_7__*, [8 x i8] }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32, i32, i32* }

@CPUSTATES = common dso_local global i32 0, align 4
@cur = common dso_local global %struct.TYPE_10__ zeroinitializer, align 16
@last = common dso_local global %struct.TYPE_8__ zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@num_devices = common dso_local global i32 0, align 4
@dev_select = common dso_local global %struct.TYPE_9__* null, align 8
@maxshowdevs = common dso_local global i64 0, align 8
@DSM_TRANSFERS_PER_SECOND = common dso_local global i32 0, align 4
@DSM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"{ekq:name/%c%c%d}{:transfers/%3.0Lf} \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @devstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devstats() #0 {
  %1 = alloca x86_fp80, align 16
  %2 = alloca x86_fp80, align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @CPUSTATES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur, i32 0, i32 0), align 16
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last, i32 0, i32 0), align 16
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur, i32 0, i32 0), align 16
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %21
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last, i32 0, i32 0), align 16
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur, i32 0, i32 1), align 16
  %38 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last, i32 0, i32 1), align 16
  %39 = fsub x86_fp80 %37, %38
  store x86_fp80 %39, x86_fp80* %1, align 16
  %40 = call i32 @xo_open_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %117, %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @num_devices, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %120

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @maxshowdevs, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %45
  br label %117

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %4, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur, i32 0, i32 2), align 16
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last, i32 0, i32 2), align 16
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load x86_fp80, x86_fp80* %1, align 16
  %83 = load i32, i32* @DSM_TRANSFERS_PER_SECOND, align 4
  %84 = load i32, i32* @DSM_NONE, align 4
  %85 = call i64 @devstat_compute_statistics(i32* %75, i32* %81, x86_fp80 %82, i32 %83, x86_fp80* %2, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %63
  %88 = load i32, i32* @devstat_errbuf, align 4
  %89 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %63
  %91 = call i32 @xo_open_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load x86_fp80, x86_fp80* %2, align 16
  %115 = call i32 @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %107, i32 %113, x86_fp80 %114)
  %116 = call i32 @xo_close_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %90, %62
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %41

120:                                              ; preds = %41
  %121 = call i32 @xo_close_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i64 @devstat_compute_statistics(i32*, i32*, x86_fp80, i32, x86_fp80*, i32) #1

declare dso_local i32 @xo_errx(i32, i8*, i32) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32, i32, i32, x86_fp80) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
