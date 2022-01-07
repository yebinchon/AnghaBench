; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vt/mkkfont/extr_mkkfont.c_print_glyphs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vt/mkkfont/extr_mkkfont.c_print_glyphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"\0Astatic uint8_t font_bytes[%u * %u] = {\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"glyph\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0x%02hhx,\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_header*)* @print_glyphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_glyphs(%struct.file_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.file_header* %0, %struct.file_header** %3, align 8
  %10 = load %struct.file_header*, %struct.file_header** %3, align 8
  %11 = getelementptr inbounds %struct.file_header, %struct.file_header* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @howmany(i32 %12, i32 8)
  %14 = load %struct.file_header*, %struct.file_header** %3, align 8
  %15 = getelementptr inbounds %struct.file_header, %struct.file_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.file_header*, %struct.file_header** %3, align 8
  %19 = getelementptr inbounds %struct.file_header, %struct.file_header* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32toh(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @malloc(i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @stdin, align 4
  %33 = call i32 @fread(i32* %30, i32 %31, i32 1, i32 %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

37:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %68, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp ult i32 %44, 12
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %48, %49
  %51 = icmp ult i32 %47, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %71

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @printf(i8* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %43

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 12
  store i32 %74, i32* %6, align 4
  br label %38

75:                                               ; preds = %38
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @free(i32* %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %35
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
