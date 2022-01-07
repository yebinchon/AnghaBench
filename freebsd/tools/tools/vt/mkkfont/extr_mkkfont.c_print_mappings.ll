; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vt/mkkfont/extr_mkkfont.c_print_mappings.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vt/mkkfont/extr_mkkfont.c_print_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i32* }
%struct.file_mapping = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"\0Astatic struct vt_font_map font_mapping_%s[%u] = {\00", align 1
@map_names = common dso_local global i8** null, align 8
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"{ 0x%04x, 0x%04x, 0x%02x },\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_header*, i32)* @print_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_mappings(%struct.file_header* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_mapping, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file_header* %0, %struct.file_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.file_header*, %struct.file_header** %4, align 8
  %11 = getelementptr inbounds %struct.file_header, %struct.file_header* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32toh(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load i8**, i8*** @map_names, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %58, %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i32, i32* @stdin, align 4
  %35 = call i32 @fread(%struct.file_mapping* %6, i32 12, i32 1, i32 %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %63

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  %45 = getelementptr inbounds %struct.file_mapping, %struct.file_mapping* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32toh(i32 %46)
  %48 = getelementptr inbounds %struct.file_mapping, %struct.file_mapping* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be16toh(i32 %49)
  %51 = getelementptr inbounds %struct.file_mapping, %struct.file_mapping* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be16toh(i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  %57 = urem i32 %56, 2
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %29

61:                                               ; preds = %29
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %37, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fread(%struct.file_mapping*, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
