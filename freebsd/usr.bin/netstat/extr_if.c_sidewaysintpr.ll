; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_if.c_sidewaysintpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_if.c_sidewaysintpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iftot = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.itimerval = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SIGALRM = common dso_local global i32 0, align 4
@catchalarm = common dso_local global i32 0, align 4
@signalled = common dso_local global i32 0, align 4
@interval = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"interface-statistics\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"{T:/%17s} {T:/%14s} {T:/%16s}\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@interface = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"(Total)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"{T:/%10s} {T:/%5s} {T:/%5s} {T:/%10s} {T:/%10s} {T:/%5s} {T:/%10s} {T:/%5s}\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"packets\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"errs\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"idrops\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"colls\00", align 1
@dflag = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c" {T:/%5.5s}\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"drops\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@noutputs = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"received-packets\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"received-errors\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"dropped-packets\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"received-bytes\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"sent-packets\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"send-errors\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"sent-bytes\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"NRSlu\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"collisions\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"LSlu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sidewaysintpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sidewaysintpr() #0 {
  %1 = alloca [2 x %struct.iftot], align 16
  %2 = alloca %struct.iftot*, align 8
  %3 = alloca %struct.iftot*, align 8
  %4 = alloca %struct.itimerval, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 0
  store %struct.iftot* %7, %struct.iftot** %2, align 8
  %8 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 1
  store %struct.iftot* %8, %struct.iftot** %3, align 8
  %9 = load %struct.iftot*, %struct.iftot** %3, align 8
  %10 = call i32 @fill_iftot(%struct.iftot* %9)
  %11 = load i32, i32* @SIGALRM, align 4
  %12 = load i32, i32* @catchalarm, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  store i32 0, i32* @signalled, align 4
  %14 = load i32, i32* @interval, align 4
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %21 = bitcast %struct.TYPE_2__* %19 to i8*
  %22 = bitcast %struct.TYPE_2__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = load i32, i32* @ITIMER_REAL, align 4
  %24 = call i32 @setitimer(i32 %23, %struct.itimerval* %4, i32* null)
  %25 = call i32 @xo_open_list(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %161, %0
  %27 = load i8*, i8** @interface, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** @interface, align 8
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %31 ]
  %34 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %36 = load i64, i64* @dflag, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %32
  %41 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %42 = call i32 (...) @xo_flush()
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %162, %40
  %44 = load i64, i64* @noutputs, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* @noutputs, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* @noutputs, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @xo_close_list(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void

52:                                               ; preds = %46, %43
  %53 = load i32, i32* @SIGALRM, align 4
  %54 = call i32 @sigmask(i32 %53)
  %55 = call i32 @sigblock(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %60, %52
  %57 = load i32, i32* @signalled, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @sigpause(i32 0)
  br label %56

62:                                               ; preds = %56
  store i32 0, i32* @signalled, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @sigsetmask(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load %struct.iftot*, %struct.iftot** %2, align 8
  %68 = call i32 @fill_iftot(%struct.iftot* %67)
  %69 = call i32 @xo_open_instance(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %70 = load %struct.iftot*, %struct.iftot** %2, align 8
  %71 = getelementptr inbounds %struct.iftot, %struct.iftot* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iftot*, %struct.iftot** %3, align 8
  %74 = getelementptr inbounds %struct.iftot, %struct.iftot* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i64 %76, i32 1, i32 1)
  %78 = load %struct.iftot*, %struct.iftot** %2, align 8
  %79 = getelementptr inbounds %struct.iftot, %struct.iftot* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.iftot*, %struct.iftot** %3, align 8
  %82 = getelementptr inbounds %struct.iftot, %struct.iftot* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i64 %84, i32 1, i32 1)
  %86 = load %struct.iftot*, %struct.iftot** %2, align 8
  %87 = getelementptr inbounds %struct.iftot, %struct.iftot* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.iftot*, %struct.iftot** %3, align 8
  %90 = getelementptr inbounds %struct.iftot, %struct.iftot* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %92, i32 1, i32 1)
  %94 = load %struct.iftot*, %struct.iftot** %2, align 8
  %95 = getelementptr inbounds %struct.iftot, %struct.iftot* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.iftot*, %struct.iftot** %3, align 8
  %98 = getelementptr inbounds %struct.iftot, %struct.iftot* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i64 %100, i32 1, i32 0)
  %102 = load %struct.iftot*, %struct.iftot** %2, align 8
  %103 = getelementptr inbounds %struct.iftot, %struct.iftot* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.iftot*, %struct.iftot** %3, align 8
  %106 = getelementptr inbounds %struct.iftot, %struct.iftot* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i64 %108, i32 1, i32 1)
  %110 = load %struct.iftot*, %struct.iftot** %2, align 8
  %111 = getelementptr inbounds %struct.iftot, %struct.iftot* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.iftot*, %struct.iftot** %3, align 8
  %114 = getelementptr inbounds %struct.iftot, %struct.iftot* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 %116, i32 1, i32 1)
  %118 = load %struct.iftot*, %struct.iftot** %2, align 8
  %119 = getelementptr inbounds %struct.iftot, %struct.iftot* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.iftot*, %struct.iftot** %3, align 8
  %122 = getelementptr inbounds %struct.iftot, %struct.iftot* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = call i32 @show_stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 %124, i32 1, i32 0)
  %126 = load %struct.iftot*, %struct.iftot** %2, align 8
  %127 = getelementptr inbounds %struct.iftot, %struct.iftot* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.iftot*, %struct.iftot** %3, align 8
  %130 = getelementptr inbounds %struct.iftot, %struct.iftot* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = call i32 @show_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i64 %132, i32 1, i32 1)
  %134 = load i64, i64* @dflag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %62
  %137 = load %struct.iftot*, %struct.iftot** %2, align 8
  %138 = getelementptr inbounds %struct.iftot, %struct.iftot* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.iftot*, %struct.iftot** %3, align 8
  %141 = getelementptr inbounds %struct.iftot, %struct.iftot* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = call i32 @show_stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %143, i32 1, i32 1)
  br label %145

145:                                              ; preds = %136, %62
  %146 = call i32 @xo_close_instance(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %147 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %148 = call i32 (...) @xo_flush()
  %149 = load %struct.iftot*, %struct.iftot** %2, align 8
  %150 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 0
  %151 = icmp eq %struct.iftot* %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 1
  store %struct.iftot* %153, %struct.iftot** %2, align 8
  %154 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 0
  store %struct.iftot* %154, %struct.iftot** %3, align 8
  br label %158

155:                                              ; preds = %145
  %156 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 0
  store %struct.iftot* %156, %struct.iftot** %2, align 8
  %157 = getelementptr inbounds [2 x %struct.iftot], [2 x %struct.iftot]* %1, i64 0, i64 1
  store %struct.iftot* %157, %struct.iftot** %3, align 8
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %6, align 4
  %160 = icmp eq i32 %159, 21
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %26

162:                                              ; preds = %158
  br label %43
}

declare dso_local i32 @fill_iftot(%struct.iftot*) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_flush(...) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @sigpause(i32) #1

declare dso_local i32 @sigsetmask(i32) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @show_stat(i8*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @xo_close_instance(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
