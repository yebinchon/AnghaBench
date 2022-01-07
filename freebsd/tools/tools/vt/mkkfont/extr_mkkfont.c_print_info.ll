; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vt/mkkfont/extr_mkkfont.c_print_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vt/mkkfont/extr_mkkfont.c_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i32, i32, i64* }

@.str = private unnamed_addr constant [100 x i8] c"\0Astruct vt_font vt_font_default = {\0A\09.vf_width\09\09= %u,\0A\09.vf_height\09\09= %u,\0A\09.vf_bytes\09\09= font_bytes,\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09.vf_map\09\09\09= {\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\09\09\09\09    font_mapping_%s,\0A\00", align 1
@map_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"\09\09\09\09    NULL,\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09\09\09\09  },\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\09.vf_map_count\09\09= { %u, %u, %u, %u },\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\09.vf_refcount\09\09= 1,\0A};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_header*)* @print_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_info(%struct.file_header* %0) #0 {
  %2 = alloca %struct.file_header*, align 8
  %3 = alloca i32, align 4
  store %struct.file_header* %0, %struct.file_header** %2, align 8
  %4 = load %struct.file_header*, %struct.file_header** %2, align 8
  %5 = getelementptr inbounds %struct.file_header, %struct.file_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.file_header*, %struct.file_header** %2, align 8
  %8 = getelementptr inbounds %struct.file_header, %struct.file_header* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load %struct.file_header*, %struct.file_header** %2, align 8
  %17 = getelementptr inbounds %struct.file_header, %struct.file_header* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i8**, i8*** @map_names, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %33

31:                                               ; preds = %15
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %12

37:                                               ; preds = %12
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.file_header*, %struct.file_header** %2, align 8
  %40 = getelementptr inbounds %struct.file_header, %struct.file_header* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @be32toh(i64 %43)
  %45 = load %struct.file_header*, %struct.file_header** %2, align 8
  %46 = getelementptr inbounds %struct.file_header, %struct.file_header* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @be32toh(i64 %49)
  %51 = load %struct.file_header*, %struct.file_header** %2, align 8
  %52 = getelementptr inbounds %struct.file_header, %struct.file_header* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @be32toh(i64 %55)
  %57 = load %struct.file_header*, %struct.file_header** %2, align 8
  %58 = getelementptr inbounds %struct.file_header, %struct.file_header* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @be32toh(i64 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %44, i32 %50, i32 %56, i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @be32toh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
