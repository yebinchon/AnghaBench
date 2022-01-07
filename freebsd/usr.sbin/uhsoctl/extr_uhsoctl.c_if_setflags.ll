; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_if_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_if_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ioctl SIOCSIFFLAGS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @if_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_setflags(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @memset(%struct.ifreq* %6, i32 0, i32 12)
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlcpy(i32 %12, i8* %13, i32 4)
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SIOCGIFFLAGS, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, %struct.ifreq* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 65535
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %30, %33
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %27, %21
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 0, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 65535
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = lshr i32 %52, 16
  %54 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SIOCSIFFLAGS, align 4
  %57 = call i32 @ioctl(i32 %55, i32 %56, %struct.ifreq* %6)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
