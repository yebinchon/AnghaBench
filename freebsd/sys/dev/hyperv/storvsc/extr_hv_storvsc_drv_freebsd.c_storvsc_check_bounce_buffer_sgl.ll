; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_check_bounce_buffer_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_check_bounce_buffer_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*)* @storvsc_check_bounce_buffer_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_check_bounce_buffer_sgl(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %110

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @vtophys(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @trunc_page(i32 %27)
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %19
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %100, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %103

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @vtophys(i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @trunc_page(i32 %50)
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = load i64, i64* @FALSE, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %13, align 8
  br label %99

63:                                               ; preds = %41
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = or i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %81, %88
  %90 = call i32 @vtophys(i64 %89)
  %91 = icmp ne i32 %74, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %73
  %93 = load i64, i64* @TRUE, align 8
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %92, %73
  br label %97

95:                                               ; preds = %63
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = load i64, i64* @FALSE, align 8
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %97, %61
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %37

103:                                              ; preds = %37
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %106, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @vtophys(i64) #1

declare dso_local i32 @trunc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
