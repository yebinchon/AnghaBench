; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_parse_doption.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_parse_doption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.parse_doption.TN = private unnamed_addr constant [4 x i8] c"TN=\00", align 1
@dbg_timenow = common dso_local global i32 0, align 4
@PTM_PARSE_ISO8601 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Non-existent time specified on -D %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Malformed time given on -D %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ats\00", align 1
@dbg_at_times = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"neworder\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"oldorder\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"NOTE: newsyslog always uses 'neworder'.\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unknown -D (debug) option: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_doption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_doption(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.parse_doption.TN, i32 0, i32 0), i64 4, i1 false)
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %9 = call i64 @strncmp(i8* %7, i8* %8, i32 3)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = call i32 @ptime_init(i32* null)
  store i32 %12, i32* @dbg_timenow, align 4
  %13 = load i32, i32* @dbg_timenow, align 4
  %14 = load i32, i32* @PTM_PARSE_ISO8601, align 4
  %15 = call i32 @time(i32* null)
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  %19 = call i32 @ptime_relparse(i32 %13, i32 %14, i32 %15, i8* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -2
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 0, i32* %2, align 4
  br label %53

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 0, i32* %2, align 4
  br label %53

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %53

33:                                               ; preds = %1
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @dbg_at_times, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @dbg_at_times, align 4
  store i32 1, i32* %2, align 4
  br label %53

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %48, %37, %32, %28, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @ptime_init(i32*) #2

declare dso_local i32 @ptime_relparse(i32, i32, i32, i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
