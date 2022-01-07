; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_roughlength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_roughlength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gv_roughlength.desc = internal global [16 x i8] zeroinitializer, align 16
@MEGABYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%jd GB\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%10jd GB\00", align 1
@GIGABYTE = common dso_local global i32 0, align 4
@KILOBYTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%jd MB\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%10jd MB\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%jd kB\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%10jd kB\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%jd  B\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%10jd  B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gv_roughlength(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MEGABYTE, align 4
  %7 = mul nsw i32 %6, 10000
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @GIGABYTE, align 4
  %16 = sdiv i32 %14, %15
  %17 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gv_roughlength.desc, i64 0, i64 0), i32 16, i8* %13, i32 %16)
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @KILOBYTE, align 4
  %21 = mul nsw i32 %20, 10000
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MEGABYTE, align 4
  %30 = sdiv i32 %28, %29
  %31 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gv_roughlength.desc, i64 0, i64 0), i32 16, i8* %27, i32 %30)
  br label %52

32:                                               ; preds = %18
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 10000
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @KILOBYTE, align 4
  %42 = sdiv i32 %40, %41
  %43 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gv_roughlength.desc, i64 0, i64 0), i32 16, i8* %39, i32 %42)
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gv_roughlength.desc, i64 0, i64 0), i32 16, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %35
  br label %52

52:                                               ; preds = %51, %23
  br label %53

53:                                               ; preds = %52, %9
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gv_roughlength.desc, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
