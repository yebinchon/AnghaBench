; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_add_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_add_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glyph = type { i32 }

@VFNT_MAP_BOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @add_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_char(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.glyph*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 65533
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @VFNT_MAP_BOLD, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.glyph* @add_glyph(i32* %18, i32 0, i32 1)
  store %struct.glyph* %19, %struct.glyph** %10, align 8
  br label %20

20:                                               ; preds = %17, %13
  br label %52

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = icmp uge i32 %22, 32
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.glyph* @add_glyph(i32* %25, i32 %26, i32 0)
  store %struct.glyph* %27, %struct.glyph** %10, align 8
  %28 = load %struct.glyph*, %struct.glyph** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @add_mapping(%struct.glyph* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %53

34:                                               ; preds = %24
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  %41 = call %struct.glyph* @add_glyph(i32* %38, i32 %40, i32 0)
  store %struct.glyph* %41, %struct.glyph** %10, align 8
  %42 = load %struct.glyph*, %struct.glyph** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  %46 = call i64 @add_mapping(%struct.glyph* %42, i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %21
  br label %52

52:                                               ; preds = %51, %20
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %48, %33
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.glyph* @add_glyph(i32*, i32, i32) #1

declare dso_local i64 @add_mapping(%struct.glyph*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
