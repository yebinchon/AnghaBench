; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_next_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_next_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc_toc_header = type { i32, i32 }

@CMD_NEXT = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@CDIOREADTOCHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid command argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @next_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_prev(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioc_toc_header, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CMD_NEXT, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 -1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @fd, align 4
  %19 = load i32, i32* @CDIOREADTOCHEADER, align 4
  %20 = call i32 @ioctl(i32 %18, i32 %19, %struct.ioc_toc_header* %6)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ioc_toc_header, %struct.ioc_toc_header* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ioc_toc_header, %struct.ioc_toc_header* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %27, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = call i32 @status(i32* %12, i32* %8, i32* %8, i32* %8)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %71

36:                                               ; preds = %25
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %71

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %50
  br label %61

57:                                               ; preds = %39, %36
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds %struct.ioc_toc_header, %struct.ioc_toc_header* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @play_track(i32 %68, i32 1, i32 %69, i32 1)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %48, %35, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ioctl(i32, i32, %struct.ioc_toc_header*) #1

declare dso_local i32 @status(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @play_track(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
