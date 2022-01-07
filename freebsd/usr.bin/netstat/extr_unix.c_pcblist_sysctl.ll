; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_unix.c_pcblist_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_unix.c_pcblist_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"net.local.%s.pcblist\00", align 1
@socktype = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"sysctl: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"malloc %lu bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @pcblist_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcblist_sysctl(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [28 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = getelementptr inbounds [28 x i8], [28 x i8]* %8, i64 0, i64 0
  %10 = load i8**, i8*** @socktype, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @snprintf(i8* %9, i32 28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i64 0, i64* %7, align 8
  %16 = getelementptr inbounds [28 x i8], [28 x i8]* %8, i64 0, i64 0
  %17 = call i64 @sysctlbyname(i8* %16, i8* null, i64* %7, i32 0, i32 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOENT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds [28 x i8], [28 x i8]* %8, i64 0, i64 0
  %25 = call i32 @xo_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %19
  store i32 -1, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @xo_warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 -2, i32* %3, align 4
  br label %48

35:                                               ; preds = %27
  %36 = getelementptr inbounds [28 x i8], [28 x i8]* %8, i64 0, i64 0
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @sysctlbyname(i8* %36, i8* %37, i64* %7, i32 0, i32 0)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds [28 x i8], [28 x i8]* %8, i64 0, i64 0
  %42 = call i32 @xo_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @free(i8* %43)
  store i32 -2, i32* %3, align 4
  br label %48

45:                                               ; preds = %35
  %46 = load i8*, i8** %6, align 8
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %40, %31, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32, i32) #1

declare dso_local i32 @xo_warn(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @xo_warnx(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
