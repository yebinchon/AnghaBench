; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"h:vw:\00", align 1
@optarg = common dso_local global i32 0, align 4
@height = common dso_local global i8* null, align 8
@width = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@VFNT_MAP_NORMAL = common dso_local global i32 0, align 4
@VFNT_MAP_BOLD = common dso_local global i32 0, align 4
@VFNT_MAP_BOLD_RH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @assert(i32 0)
  %9 = call i32 @assert(i32 0)
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %25 [
    i32 104, label %17
    i32 118, label %20
    i32 119, label %21
    i32 63, label %24
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i8* @atoi(i32 %18)
  store i8* %19, i8** @height, align 8
  br label %27

20:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @optarg, align 4
  %23 = call i8* @atoi(i32 %22)
  store i8* %23, i8** @width, align 8
  br label %27

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %15, %24
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %21, %20, %17
  br label %10

28:                                               ; preds = %10
  %29 = load i64, i64* @optind, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @optind, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %28
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** @width, align 8
  %46 = call i32 @set_width(i8* %45)
  %47 = load i8*, i8** @height, align 8
  %48 = call i32 @set_height(i8* %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @VFNT_MAP_NORMAL, align 4
  %53 = call i64 @parse_file(i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %98

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @VFNT_MAP_BOLD, align 4
  %68 = call i64 @parse_file(i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %98

71:                                               ; preds = %63
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %5, align 8
  br label %76

76:                                               ; preds = %71, %56
  %77 = call i32 (...) @number_glyphs()
  %78 = load i32, i32* @VFNT_MAP_BOLD, align 4
  %79 = call i32 @dedup_mapping(i32 %78)
  %80 = load i32, i32* @VFNT_MAP_BOLD_RH, align 4
  %81 = call i32 @dedup_mapping(i32 %80)
  %82 = call i32 @fold_mappings(i32 0)
  %83 = call i32 @fold_mappings(i32 1)
  %84 = call i32 @fold_mappings(i32 2)
  %85 = call i32 @fold_mappings(i32 3)
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @write_fnt(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %98

92:                                               ; preds = %76
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (...) @print_font_info()
  br label %97

97:                                               ; preds = %95, %92
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %91, %70, %55
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @set_width(i8*) #1

declare dso_local i32 @set_height(i8*) #1

declare dso_local i64 @parse_file(i8*, i32) #1

declare dso_local i32 @number_glyphs(...) #1

declare dso_local i32 @dedup_mapping(i32) #1

declare dso_local i32 @fold_mappings(i32) #1

declare dso_local i64 @write_fnt(i8*) #1

declare dso_local i32 @print_font_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
