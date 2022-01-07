; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_ofw_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_ofw_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"memory@\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"linux,usable-memory\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ofw_mem_regions(%struct.mem_region* %0, i32* %1, %struct.mem_region* %2, i32* %3) #0 {
  %5 = alloca %struct.mem_region*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mem_region*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [31 x i8], align 16
  store %struct.mem_region* %0, %struct.mem_region** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mem_region* %2, %struct.mem_region** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %14 = call i64 @OF_peer(i64 0)
  %15 = call i64 @OF_child(i64 %14)
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %78, %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 0
  %22 = call i64 @OF_getprop(i64 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21, i32 31)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %78

25:                                               ; preds = %19
  %26 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 0
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 31)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 0
  %31 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %78

35:                                               ; preds = %29, %25
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.mem_region*, %struct.mem_region** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %37, i64 %39
  %41 = call i32 @parse_ofw_memory(i64 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.mem_region* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @OF_getproplen(i64 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %50, i64 %52
  %54 = call i32 @parse_ofw_memory(i64 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.mem_region* %53)
  store i32 %54, i32* %12, align 4
  br label %74

55:                                               ; preds = %35
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @OF_getproplen(i64 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %61, i64 %63
  %65 = call i32 @parse_ofw_memory(i64 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.mem_region* %64)
  store i32 %65, i32* %12, align 4
  br label %73

66:                                               ; preds = %55
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %68, i64 %70
  %72 = call i32 @parse_ofw_memory(i64 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.mem_region* %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %34, %24
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @OF_peer(i64 %79)
  store i64 %80, i64* %9, align 8
  br label %16

81:                                               ; preds = %16
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  ret void
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_ofw_memory(i64, i8*, %struct.mem_region*) #1

declare dso_local i64 @OF_getproplen(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
