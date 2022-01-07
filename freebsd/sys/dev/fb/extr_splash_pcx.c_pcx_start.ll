; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_pcx.c_pcx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_pcx.c_pcx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@pcx_start.modes = internal global [5 x i32] [i32 128, i32 130, i32 129, i32 131, i32 -1], align 16
@pcx_decoder = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"splash_pcx: image good:\0A  width = %d\0A  height = %d\0A  depth = %d\0A  planes = %d\0A\00", align 1
@pcx_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"splash_pcx: considering mode %d:\0A  vi_width = %d\0A  vi_height = %d\0A  vi_depth = %d\0A  vi_planes = %d\0A\00", align 1
@splash_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"splash_pcx: selecting mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pcx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcx_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pcx_decoder, i32 0, i32 1), align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pcx_decoder, i32 0, i32 0), align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pcx_decoder, i32 0, i32 1), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pcx_decoder, i32 0, i32 0), align 8
  %14 = call i64 @pcx_init(i32* %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %8, %1
  %17 = load i32, i32* @ENODEV, align 4
  store i32 %17, i32* %2, align 4
  br label %101

18:                                               ; preds = %11
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 2), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 3), align 4
  %26 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %82, %27
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* @pcx_start.modes, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* @pcx_start.modes, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @vidd_get_info(i32* %35, i32 %39, %struct.TYPE_5__* %4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %82

43:                                               ; preds = %34
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* @pcx_start.modes, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52, i32 %54, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %46, %43
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 0), align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 1), align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 2), align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pcx_info, i32 0, i32 3), align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %85

81:                                               ; preds = %75, %70, %65, %60
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %28

85:                                               ; preds = %80, %28
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* @pcx_start.modes, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* @splash_mode, align 4
  %90 = load i32, i32* @splash_mode, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @ENODEV, align 4
  store i32 %93, i32* %2, align 4
  br label %101

94:                                               ; preds = %85
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @splash_mode, align 4
  %99 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %92, %16
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @pcx_init(i32*, i64) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @vidd_get_info(i32*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
