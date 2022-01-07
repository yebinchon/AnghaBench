; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_uptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@smart_terminal = common dso_local global i64 0, align 8
@screen_width = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" up %d+%02d:%02d:%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_uptime(%struct.timeval* %0, i32* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.timeval*, %struct.timeval** %3, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.timeval*, %struct.timeval** %3, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 86400
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 86400
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 3600
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 3600
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 %29, 60
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = srem i32 %31, 60
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* @smart_terminal, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %14
  %36 = load i32, i32* @screen_width, align 4
  %37 = sub nsw i32 %36, 24
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 9
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = sub nsw i32 %37, %41
  %43 = call i32 @Move_to(i32 %42, i32 0)
  br label %47

44:                                               ; preds = %14
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %2
  ret void
}

declare dso_local i32 @Move_to(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
