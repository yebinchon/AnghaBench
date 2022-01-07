; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_get_bpscanline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_get_bpscanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vesa_mode = type { i32, i32, i32, i32, i32, i32 }

@V_MODEGRAPHICS = common dso_local global i32 0, align 4
@V_MODELFB = common dso_local global i32 0, align 4
@vesa_adp_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vesa_mode*)* @vesa_get_bpscanline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_get_bpscanline(%struct.vesa_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vesa_mode*, align 8
  %4 = alloca i32, align 4
  store %struct.vesa_mode* %0, %struct.vesa_mode** %3, align 8
  %5 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %6 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @V_MODEGRAPHICS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %1
  %12 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %13 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %16 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %14, %17
  switch i32 %18, label %34 [
    i32 1, label %19
    i32 2, label %24
    i32 4, label %29
  ]

19:                                               ; preds = %11
  %20 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %21 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 8
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %11
  %25 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %26 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 4
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %11
  %30 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %31 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %11
  %35 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %36 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %39 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 7
  %42 = sdiv i32 %41, 8
  %43 = mul nsw i32 %37, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %45 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sdiv i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %34, %29, %24, %19
  %50 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %51 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V_MODELFB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp_info, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 768
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %63 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %69 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %2, align 4
  br label %84

71:                                               ; preds = %61, %56, %49
  %72 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %73 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.vesa_mode*, %struct.vesa_mode** %3, align 8
  %82 = getelementptr inbounds %struct.vesa_mode, %struct.vesa_mode* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %77, %67
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
