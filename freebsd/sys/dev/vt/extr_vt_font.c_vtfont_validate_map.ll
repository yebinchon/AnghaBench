; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_validate_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_validate_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_font_map = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_font_map*, i32, i32)* @vtfont_validate_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtfont_validate_map(%struct.vt_font_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt_font_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vt_font_map* %0, %struct.vt_font_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %69, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %18, i64 %20
  %22 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %73

28:                                               ; preds = %17, %14
  %29 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %29, i64 %31
  %33 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %28
  %38 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %38, i64 %40
  %42 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %44, i64 %46
  %48 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %43, %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %37, %28
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %73

55:                                               ; preds = %37
  %56 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %56, i64 %58
  %60 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vt_font_map*, %struct.vt_font_map** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %62, i64 %64
  %66 = getelementptr inbounds %struct.vt_font_map, %struct.vt_font_map* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %61, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %10

72:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %53, %26
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
