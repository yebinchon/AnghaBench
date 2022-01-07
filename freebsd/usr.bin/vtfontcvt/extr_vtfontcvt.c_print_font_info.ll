; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_print_font_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_print_font_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [713 x i8] c"Statistics:\0A- width:                       %6u\0A- height:                      %6u\0A- glyph_total:                 %6u\0A- glyph_normal:                %6u\0A- glyph_normal_right:          %6u\0A- glyph_bold:                  %6u\0A- glyph_bold_right:            %6u\0A- glyph_unique:                %6u\0A- glyph_dupe:                  %6u\0A- mapping_total:               %6u\0A- mapping_normal:              %6u\0A- mapping_normal_folded:       %6u\0A- mapping_normal_right:        %6u\0A- mapping_normal_right_folded: %6u\0A- mapping_bold:                %6u\0A- mapping_bold_folded:         %6u\0A- mapping_bold_right:          %6u\0A- mapping_bold_right_folded:   %6u\0A- mapping_unique:              %6u\0A- mapping_dupe:                %6u\0A\00", align 1
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@glyph_total = common dso_local global i32 0, align 4
@glyph_count = common dso_local global i32* null, align 8
@glyph_unique = common dso_local global i32 0, align 4
@glyph_dupe = common dso_local global i32 0, align 4
@mapping_total = common dso_local global i32 0, align 4
@map_count = common dso_local global i32* null, align 8
@map_folded_count = common dso_local global i32* null, align 8
@mapping_unique = common dso_local global i32 0, align 4
@mapping_dupe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_font_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_font_info() #0 {
  %1 = load i32, i32* @width, align 4
  %2 = load i32, i32* @height, align 4
  %3 = load i32, i32* @glyph_total, align 4
  %4 = load i32*, i32** @glyph_count, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @glyph_count, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @glyph_count, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @glyph_count, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @glyph_unique, align 4
  %17 = load i32, i32* @glyph_dupe, align 4
  %18 = load i32, i32* @mapping_total, align 4
  %19 = load i32*, i32** @map_count, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @map_folded_count, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @map_count, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @map_folded_count, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @map_count, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @map_folded_count, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @map_count, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @map_folded_count, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @mapping_unique, align 4
  %44 = load i32, i32* @mapping_dupe, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([713 x i8], [713 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %6, i32 %9, i32 %12, i32 %15, i32 %16, i32 %17, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
