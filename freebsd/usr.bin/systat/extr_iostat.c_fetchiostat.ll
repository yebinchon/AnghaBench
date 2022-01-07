; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_fetchiostat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_fetchiostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.devinfo*, i32, i32 }
%struct.devinfo = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.devinfo* }

@.str = private unnamed_addr constant [13 x i8] c"kern.cp_time\00", align 1
@cur_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@last_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@num_devices = common dso_local global i32 0, align 4
@generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetchiostat() #0 {
  %1 = alloca %struct.devinfo*, align 8
  %2 = alloca i64, align 8
  store i64 4, i64* %2, align 8
  %3 = call i64 @sysctlbyname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 2), i64* %2, i32* null, i32 0)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %0
  %9 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %5
  %12 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last_dev, i32 0, i32 1), align 8
  store %struct.devinfo* %12, %struct.devinfo** %1, align 8
  %13 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 0), align 8
  store %struct.devinfo* %13, %struct.devinfo** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last_dev, i32 0, i32 1), align 8
  %14 = load %struct.devinfo*, %struct.devinfo** %1, align 8
  store %struct.devinfo* %14, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 1), align 8
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last_dev, i32 0, i32 0), align 8
  %16 = call i32 @devstat_getdevs(i32* null, %struct.TYPE_5__* @cur_dev)
  switch i32 %16, label %22 [
    i32 -1, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %11
  %18 = load i32, i32* @devstat_errbuf, align 4
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %23

20:                                               ; preds = %11
  %21 = call i32 @cmdiostat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %23

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @num_devices, align 4
  %27 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur_dev, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @generation, align 4
  ret void
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @devstat_getdevs(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @cmdiostat(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
