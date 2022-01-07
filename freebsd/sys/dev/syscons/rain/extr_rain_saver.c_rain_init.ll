; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/rain/extr_rain_saver.c_rain_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/rain/extr_rain_saver.c_rain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@M_VGA_CG320 = common dso_local global i32 0, align 4
@scrmode = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: the console does not support M_VGA_CG320\0A\00", align 1
@SAVER_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@scrw = common dso_local global i32 0, align 4
@scrh = common dso_local global i32 0, align 4
@MAX = common dso_local global i32 0, align 4
@rain_pal = common dso_local global i64* null, align 8
@INCREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @M_VGA_CG320, align 4
  %8 = call i32 @vidd_get_info(i32* %6, i32 %7, %struct.TYPE_3__* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @M_VGA_CG320, align 4
  store i32 %11, i32* @scrmode, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @LOG_NOTICE, align 4
  %14 = load i32, i32* @SAVER_NAME, align 4
  %15 = call i32 @log(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ENODEV, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @scrw, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @scrh, align 4
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %39, %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i64*, i64** @rain_pal, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i64 @BLUE(i32 %29)
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INCREMENT, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64*, i64** @rain_pal, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @BLUE(i32 %36)
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %22

42:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @vidd_get_info(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i64 @BLUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
