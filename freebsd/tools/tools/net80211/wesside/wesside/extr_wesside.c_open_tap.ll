; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_open_tap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_open_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.ifreq = type { i32, i32, i32, i32 }

@TAP_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@tapfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't open tap: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fstat()\00", align 1
@tapdev = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@SIOCSIFMTU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"ioctl(SIOCSIFMTU)\00", align 1
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCGIFFLAGS)\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCSIFFLAGS)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Opened tap device: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_tap() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifreq, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @TAP_DEV, align 4
  %6 = load i32, i32* @O_RDWR, align 4
  %7 = call i32 @open(i32 %5, i32 %6)
  store i32 %7, i32* @tapfd, align 4
  %8 = load i32, i32* @tapfd, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* @errno, align 4
  %12 = call i8* @strerror(i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = load i32, i32* @tapfd, align 4
  %17 = call i32 @fstat(i32 %16, %struct.stat* %1)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %15
  %23 = load i32, i32* @tapdev, align 4
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @S_IFCHR, align 4
  %27 = call i32 @devname(i32 %25, i32 %26)
  %28 = call i32 @strcpy(i32 %23, i32 %27)
  %29 = load i32, i32* @PF_INET, align 4
  %30 = load i32, i32* @SOCK_DGRAM, align 4
  %31 = call i32 @socket(i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %22
  %38 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 16)
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @tapdev, align 4
  %42 = call i32 @strcpy(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  store i32 1500, i32* %43, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @SIOCSIFMTU, align 4
  %46 = call i32 @ioctl(i32 %44, i32 %45, %struct.ifreq* %3)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %37
  %52 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 16)
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @tapdev, align 4
  %56 = call i32 @strcpy(i32 %54, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @SIOCGIFFLAGS, align 4
  %59 = call i32 @ioctl(i32 %57, i32 %58, %struct.ifreq* %3)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 65535
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %67, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @IFF_UP, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 16)
  %76 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @tapdev, align 4
  %79 = call i32 @strcpy(i32 %77, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 65535
  %82 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %4, align 4
  %84 = lshr i32 %83, 16
  %85 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @SIOCSIFFLAGS, align 4
  %88 = call i32 @ioctl(i32 %86, i32 %87, %struct.ifreq* %3)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %64
  %91 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %64
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @close(i32 %94)
  %96 = load i32, i32* @tapdev, align 4
  %97 = call i32 @time_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @devname(i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @time_print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
