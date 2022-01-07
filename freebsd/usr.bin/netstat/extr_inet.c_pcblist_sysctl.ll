; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_inet.c_pcblist_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_inet.c_pcblist_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"net.inet.tcp.pcblist\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"net.inet.udp.pcblist\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"net.inet.divert.pcblist\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"net.inet.raw.pcblist\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sdp\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"net.inet.sdp.pcblist\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"sysctl: %s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"malloc %lu bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**)* @pcblist_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcblist_sysctl(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %15 [
    i32 129, label %12
    i32 128, label %13
    i32 130, label %14
  ]

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %16

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %16

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %16

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %16

16:                                               ; preds = %15, %14, %13, %12
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %21

21:                                               ; preds = %20, %16
  store i64 0, i64* %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @sysctlbyname(i8* %22, i8* null, i64* %10, i32 0, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOENT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @xo_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %4, align 4
  br label %54

33:                                               ; preds = %21
  %34 = load i64, i64* %10, align 8
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @xo_warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  store i32 0, i32* %4, align 4
  br label %54

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @sysctlbyname(i8* %42, i8* %43, i64* %10, i32 0, i32 0)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @xo_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  store i32 0, i32* %4, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %9, align 8
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %46, %37, %32
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

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
