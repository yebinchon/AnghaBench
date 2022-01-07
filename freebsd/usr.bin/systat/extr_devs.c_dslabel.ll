; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dslabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dslabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"Disks\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"KB/t\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tps\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MB/s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%%busy\00", align 1
@num_devices = common dso_local global i32 0, align 4
@dev_select = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" %5.5s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dslabel(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %14, i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %22, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %73, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @num_devices, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %76

39:                                               ; preds = %37
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %39
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 5
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 6, %65
  %67 = add nsw i32 %64, %66
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %69 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %62, i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %47, %39
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %29

76:                                               ; preds = %37
  ret void
}

declare dso_local i32 @mvprintw(i32, i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
