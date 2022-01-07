; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_msimap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_msimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"msi-map-mask\00", align 1
@M_OFWPROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_msimap(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = bitcast i32** %10 to i8**
  %21 = call i32 @OF_getencprop_alloc_multi(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4, i8** %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @OF_getencprop(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32 4)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  store i32 0, i32* %5, align 4
  br label %109

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %17, align 4
  store i32 -1, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @OF_getencprop(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 4)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %101, %39
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %104

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 0
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %50
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %50
  br label %101

73:                                               ; preds = %66
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %73
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %90
  store i32 0, i32* %17, align 4
  br label %104

101:                                              ; preds = %72
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %18, align 4
  br label %46

104:                                              ; preds = %100, %46
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @M_OFWPROP, align 4
  %107 = call i32 @free(i32* %105, i32 %106)
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %38
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
