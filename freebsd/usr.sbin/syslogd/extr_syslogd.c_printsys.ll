; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_printsys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_printsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNC_FILE = common dso_local global i32 0, align 4
@DEFSPRI = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@LOG_FACMASK = common dso_local global i32 0, align 4
@LOG_CONSOLE = common dso_local global i32 0, align 4
@IGN_CONS = common dso_local global i32 0, align 4
@LOG_PRIMASK = common dso_local global i32 0, align 4
@LocalHostName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @printsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printsys(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @SYNC_FILE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i32, i32* @DEFSPRI, align 4
  store i32 %11, i32* %8, align 4
  store i32 1, i32* %7, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 60
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  store i64 0, i64* @errno, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i64 @strtol(i8* %18, i8** %4, i32 10)
  store i64 %19, i64* %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 62
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %31, %27, %24, %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @LOG_FACMASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @LOG_CONSOLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %40
  %50 = load i32, i32* @IGN_CONS, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @LOG_FACMASK, align 4
  %56 = load i32, i32* @LOG_PRIMASK, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @DEFSPRI, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @LocalHostName, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @logmsg(i32 %64, i32* null, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i8* %66, i32 %67)
  ret void
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @logmsg(i32, i32*, i32, i8*, i32*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
