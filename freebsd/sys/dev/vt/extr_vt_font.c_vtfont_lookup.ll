; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_font = type { i64, i32*, i32, i32*, i32* }

@TF_CJK_RIGHT = common dso_local global i32 0, align 4
@VFNT_MAP_NORMAL_RIGHT = common dso_local global i32 0, align 4
@VFNT_MAP_BOLD_RIGHT = common dso_local global i32 0, align 4
@VFNT_MAP_NORMAL = common dso_local global i32 0, align 4
@VFNT_MAP_BOLD = common dso_local global i32 0, align 4
@TF_BOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vtfont_lookup(%struct.vt_font* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_font*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vt_font* %0, %struct.vt_font** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TCHAR_CHARACTER(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TCHAR_FORMAT(i32 %12)
  %14 = load i32, i32* @TF_CJK_RIGHT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @VFNT_MAP_NORMAL_RIGHT, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @VFNT_MAP_BOLD_RIGHT, align 4
  store i32 %19, i32* %9, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @VFNT_MAP_NORMAL, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @VFNT_MAP_BOLD, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TCHAR_FORMAT(i32 %24)
  %26 = load i32, i32* @TF_BOLD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %31 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %38 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @vtfont_bisearch(i32 %36, i32 %43, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %67

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %23
  %51 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %52 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %59 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @vtfont_bisearch(i32 %57, i32 %64, i32 %65)
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %50, %48
  %68 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %69 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @howmany(i32 %70, i32 8)
  %72 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %73 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %71, %74
  store i64 %75, i64* %7, align 8
  %76 = load %struct.vt_font*, %struct.vt_font** %3, align 8
  %77 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = mul i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  ret i32* %82
}

declare dso_local i32 @TCHAR_CHARACTER(i32) #1

declare dso_local i32 @TCHAR_FORMAT(i32) #1

declare dso_local i64 @vtfont_bisearch(i32, i32, i32) #1

declare dso_local i64 @howmany(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
