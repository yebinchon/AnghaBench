; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_read_exportfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_read_exportfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exnames = common dso_local global i32** null, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"reading exports from %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@exp_file = common dso_local global i32* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"can't open any exports file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @read_exportfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_exportfile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32**, i32*** @exnames, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32*, i32** %6, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %5
  %13 = load i64, i64* @debug, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32**, i32*** @exnames, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %20)
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32**, i32*** @exnames, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @fopen(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** @exp_file, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = load i32**, i32*** @exnames, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 (i32, i8*, ...) @syslog(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  br label %45

38:                                               ; preds = %22
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @get_exportlist_one(i32 %39)
  %41 = load i32*, i32** @exp_file, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %5

48:                                               ; preds = %5
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = call i32 (i32, i8*, ...) @syslog(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 @exit(i32 2) #3
  unreachable

55:                                               ; preds = %48
  ret void
}

declare dso_local i32 @warnx(i8*, i32*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @get_exportlist_one(i32) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
