; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_pkg_get_myabi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_pkg_get_myabi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hw.machine_arch\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s:%d:%s\00", align 1
@__FreeBSD_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @pkg_get_myabi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_get_myabi(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.utsname, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call i32 @uname(%struct.utsname* %6)
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  store i64 255, i64* %8, align 8
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %17 = call i32 @sysctlbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16, i64* %8, i32* null, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.utsname, %struct.utsname* %6, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @__FreeBSD_version, align 4
  %30 = sdiv i32 %29, 100000
  %31 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %32 = call i32 @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %30, i8* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %20, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
