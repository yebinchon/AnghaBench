; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_pluginconfigure_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_pluginconfigure_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*)* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"threshold=\00", align 1
@pmcstat_threshold = common dso_local global i32 0, align 4
@plugins = common dso_local global %struct.TYPE_3__* null, align 8
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ERROR: unknown option <%s>.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_pluginconfigure_log(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strncmp(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 10
  %9 = call i32 @atof(i8* %8)
  store i32 %9, i32* @pmcstat_threshold, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %16 = icmp ne i32 (i8*)* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i8*)*, i32 (i8*)** %21, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 %22(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EX_USAGE, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @err(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %17
  br label %31

31:                                               ; preds = %30, %10
  br label %32

32:                                               ; preds = %31, %6
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
