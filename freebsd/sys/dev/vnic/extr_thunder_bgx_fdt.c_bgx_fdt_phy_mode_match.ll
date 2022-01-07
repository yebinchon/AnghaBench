; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx_fdt.c_bgx_fdt_phy_mode_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx_fdt.c_bgx_fdt_phy_mode_match.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgx*, i8*, i64)* @bgx_fdt_phy_mode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_fdt_phy_mode_match(%struct.bgx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bgx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bgx* %0, %struct.bgx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.bgx*, %struct.bgx** %5, align 8
  %12 = getelementptr inbounds %struct.bgx, %struct.bgx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %60 [
    i32 131, label %14
    i32 130, label %18
    i32 132, label %40
    i32 129, label %44
    i32 128, label %48
    i32 134, label %52
    i32 133, label %56
  ]

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i64 6, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %10, align 8
  br label %62

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i64 5, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @strncmp(i8* %29, i8* %30, i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %4, align 4
  br label %79

36:                                               ; preds = %26
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i64 6, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %10, align 8
  br label %62

40:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  store i64 5, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %10, align 8
  br label %62

44:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  store i64 4, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %10, align 8
  br label %62

48:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  store i64 6, i64* %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %10, align 8
  br label %62

52:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  store i64 11, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %53, %54
  store i64 %55, i64* %10, align 8
  br label %62

56:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store i64 13, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %10, align 8
  br label %62

60:                                               ; preds = %3
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %79

62:                                               ; preds = %56, %52, %48, %44, %40, %36, %14
  %63 = load i64, i64* %10, align 8
  %64 = icmp ult i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %79

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @strncmp(i8* %70, i8* %71, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %75, %65, %60, %34, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
