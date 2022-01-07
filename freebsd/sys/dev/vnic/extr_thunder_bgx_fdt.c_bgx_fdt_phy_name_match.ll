; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx_fdt.c_bgx_fdt_phy_name_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx_fdt.c_bgx_fdt_phy_name_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dxaui\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"raui\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"xfi\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"xlaui\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"xfi-10g-kr\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"xlaui-40g-kr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgx*, i8*, i32)* @bgx_fdt_phy_name_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_fdt_phy_name_match(%struct.bgx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bgx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bgx*, %struct.bgx** %5, align 8
  %11 = getelementptr inbounds %struct.bgx, %struct.bgx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 131, label %13
    i32 130, label %14
    i32 132, label %29
    i32 129, label %30
    i32 128, label %31
    i32 134, label %32
    i32 133, label %33
  ]

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 6, i32* %9, align 4
  br label %36

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32 5, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @strncmp(i8* %21, i8* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %4, align 4
  br label %71

28:                                               ; preds = %20
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i32 6, i32* %9, align 4
  br label %36

29:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  store i32 5, i32* %9, align 4
  br label %36

30:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  store i32 4, i32* %9, align 4
  br label %36

31:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  store i32 6, i32* %9, align 4
  br label %36

32:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  store i32 11, i32* %9, align 4
  br label %36

33:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store i32 13, i32* %9, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %71

36:                                               ; preds = %33, %32, %31, %30, %29, %28, %13
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i64 @strncmp(i8* %43, i8* %44, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %69

67:                                               ; preds = %58, %49
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %58, %42
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %67, %40, %34, %26, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
