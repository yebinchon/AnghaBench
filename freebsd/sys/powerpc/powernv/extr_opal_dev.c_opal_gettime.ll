; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@OPAL_RTC_READ = common dso_local global i32 0, align 4
@OPAL_BUSY_EVENT = common dso_local global i32 0, align 4
@OPAL_POLL_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"opalrtc\00", align 1
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @opal_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clocktime, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = load i32, i32* @OPAL_RTC_READ, align 4
  %11 = call i32 @vtophys(i32* %8)
  %12 = call i32 @vtophys(i32* %9)
  %13 = call i32 (i32, i32, ...) @opal_call(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %18, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @OPAL_BUSY_EVENT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @OPAL_POLL_EVENTS, align 4
  %20 = call i32 (i32, i32, ...) @opal_call(i32 %19, i32 0)
  %21 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  %22 = load i32, i32* @OPAL_RTC_READ, align 4
  %23 = call i32 @vtophys(i32* %8)
  %24 = call i32 @vtophys(i32* %9)
  %25 = call i32 (i32, i32, ...) @opal_call(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OPAL_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @be64toh(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @be32toh(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 1099511562240
  %40 = ashr i64 %39, 16
  %41 = trunc i64 %40 to i32
  %42 = call i32 @bcd2bin32(i32 %41)
  %43 = mul nsw i32 %42, 1000
  %44 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 280375465082880
  %48 = ashr i64 %47, 40
  %49 = trunc i64 %48 to i32
  %50 = call i8* @bcd2bin(i32 %49)
  %51 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 6
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 71776119061217280
  %55 = ashr i64 %54, 48
  %56 = trunc i64 %55 to i32
  %57 = call i8* @bcd2bin(i32 %56)
  %58 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, -72057594037927936
  %62 = lshr i64 %61, 56
  %63 = trunc i64 %62 to i32
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 255
  %68 = ashr i32 %67, 0
  %69 = call i8* @bcd2bin(i32 %68)
  %70 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 65280
  %73 = ashr i32 %72, 8
  %74 = call i8* @bcd2bin(i32 %73)
  %75 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, -65536
  %78 = lshr i32 %77, 16
  %79 = call i32 @bcd2bin32(i32 %78)
  %80 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.timespec*, %struct.timespec** %5, align 8
  %82 = call i32 @clock_ct_to_ts(%struct.clocktime* %7, %struct.timespec* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %32, %30
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @opal_call(i32, i32, ...) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @bcd2bin32(i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
