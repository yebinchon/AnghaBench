; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_tap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_tap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@TAP_CLONEDEV = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s open successful\00", align 1
@IFF_TAP = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s too long\00", align 1
@TUNSETIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to to a TUNSETIFF: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"new name is %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_alloc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** @TAP_CLONEDEV, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 8)
  %22 = load i32, i32* @IFF_TAP, align 4
  %23 = load i32, i32* @IFF_NO_PI, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %18
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @IFNAMSIZ, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @D(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %2, align 4
  br label %65

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memcpy(i32 %40, i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %38, %18
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TUNSETIFF, align 4
  %47 = bitcast %struct.ifreq* %4 to i8*
  %48 = call i32 @ioctl(i32 %45, i32 %46, i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @errno, align 4
  %52 = call i8* @strerror(i32 %51)
  %53 = call i32 @D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %44
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i8* %58, i32 %60)
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @D(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %50, %35, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @D(i8*, i8*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
