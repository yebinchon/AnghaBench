; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_chrp_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_chrp_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chrp_mem_regions(i32 %0, %struct.mem_region* %1, i32* %2, %struct.mem_region* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_region*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mem_region*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mem_region* %1, %struct.mem_region** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mem_region* %3, %struct.mem_region** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @ofw_mem_regions(%struct.mem_region* %13, i32* %14, %struct.mem_region* %15, i32* %16)
  %18 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @parse_drconf_memory(%struct.mem_region* %18, i32* %19, %struct.mem_region* %20, i32* %21)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %59, %5
  %24 = load i32, i32* %12, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %29, i64 %31
  %33 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %35, i64 %37
  %39 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  %42 = load i64, i64* %11, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %45, i64 %47
  %49 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %51, i64 %53
  %55 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %50, %56
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %44, %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %23

62:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %63
  %69 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %69, i64 %71
  %73 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %75, i64 %77
  %79 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %74, %80
  %82 = load i64, i64* %11, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %68
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %86, i64 %88
  %90 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %85, %91
  %93 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %93, i64 %95
  %97 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %96, i32 0, i32 1
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %84, %68
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %63

102:                                              ; preds = %63
  ret void
}

declare dso_local i32 @ofw_mem_regions(%struct.mem_region*, i32*, %struct.mem_region*, i32*) #1

declare dso_local i32 @parse_drconf_memory(%struct.mem_region*, i32*, %struct.mem_region*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
