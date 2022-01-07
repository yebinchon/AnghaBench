; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_get_if_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_get_if_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glob_arg = type { i8* }
%struct.ifreq = type { i8*, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"netmap:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-*^{}/@\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"socket() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SIOCGIFMTU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ioctl(SIOCGIFMTU) failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glob_arg*)* @get_if_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_if_mtu(%struct.glob_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.glob_arg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.glob_arg* %0, %struct.glob_arg** %3, align 8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.glob_arg*, %struct.glob_arg** %3, align 8
  %15 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %69, label %19

19:                                               ; preds = %1
  %20 = load %struct.glob_arg*, %struct.glob_arg** %3, align 8
  %21 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strchr(i8* %22, i8 signext 123)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %19
  %26 = load %struct.glob_arg*, %struct.glob_arg** %3, align 8
  %27 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strchr(i8* %28, i8 signext 125)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %25
  %32 = load %struct.glob_arg*, %struct.glob_arg** %3, align 8
  %33 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @strncpy(i8* %13, i8* %35, i32 %37)
  %39 = call i64 @strcspn(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = getelementptr inbounds i8, i8* %13, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* @AF_INET, align 4
  %42 = load i32, i32* @SOCK_DGRAM, align 4
  %43 = call i32 @socket(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @D(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

51:                                               ; preds = %31
  %52 = call i32 @memset(%struct.ifreq* %6, i32 0, i32 16)
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @IFNAMSIZ, align 4
  %56 = call i32 @strncpy(i8* %54, i8* %13, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SIOCGIFMTU, align 4
  %59 = call i32 @ioctl(i32 %57, i32 %58, %struct.ifreq* %6)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 @D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %51
  %67 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

69:                                               ; preds = %25, %19, %1
  store i32 65536, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %66, %46
  %71 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strchr(i8*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @D(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
