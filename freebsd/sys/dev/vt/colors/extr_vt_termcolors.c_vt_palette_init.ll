; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/colors/extr_vt_termcolors.c_vt_palette_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/colors/extr_vt_termcolors.c_vt_palette_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i8 }

@NCOLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"kern.vt.color.%d.rgb\00", align 1
@color_def = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vt_palette_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_palette_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %56, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @NCOLORS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @snprintf(i8* %12, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %17 = call i64 @TUNABLE_STR_FETCH(i8* %15, i8* %16, i32 32)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %11
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %21 = call i64 @vt_parse_rgb_triplet(i8* %20, i8* %4, i8* %5, i8* %6)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = mul nsw i32 %25, 100
  %27 = sdiv i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @color_def, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8 %28, i8* %33, align 1
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %35, 100
  %37 = sdiv i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @color_def, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8 %38, i8* %43, align 1
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %45, 100
  %47 = sdiv i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @color_def, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8 %48, i8* %53, align 1
  br label %54

54:                                               ; preds = %23, %19
  br label %55

55:                                               ; preds = %54, %11
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %7

59:                                               ; preds = %7
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i64 @vt_parse_rgb_triplet(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
