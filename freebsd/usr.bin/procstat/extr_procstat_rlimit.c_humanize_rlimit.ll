; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rlimit.c_humanize_rlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rlimit.c_humanize_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@humanize_rlimit.buf = internal global [14 x i8] zeroinitializer, align 1
@RLIM_INFINITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"infinity     \00", align 1
@rlimit_param = common dso_local global %struct.TYPE_2__* null, align 8
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_GETSCALE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64)* @humanize_rlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @humanize_rlimit(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @RLIM_INFINITY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %44

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rlimit_param, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HN_AUTOSCALE, align 4
  %21 = load i32, i32* @HN_GETSCALE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HN_DECIMAL, align 4
  %24 = call i32 @humanize_number(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @humanize_rlimit.buf, i64 0, i64 0), i32 13, i32 %13, i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rlimit_param, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HN_AUTOSCALE, align 4
  %34 = load i32, i32* @HN_DECIMAL, align 4
  %35 = call i32 @humanize_number(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @humanize_rlimit.buf, i64 0, i64 0), i32 13, i32 %26, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %11
  %39 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @humanize_rlimit.buf, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @humanize_rlimit.buf, i64 0, i64 0), i64 %40
  %42 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %11
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @humanize_rlimit.buf, i64 0, i64 0), i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @humanize_number(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
