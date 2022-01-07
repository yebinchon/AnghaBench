; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_store_aux.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_store_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_store_data = type { i32, i32, i64, i32, i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"%s has multiple values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @store_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_aux(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_store_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.config_store_data*
  store %struct.config_store_data* %9, %struct.config_store_data** %7, align 8
  %10 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %11 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %18 = call i64 @matches(i8* %15, i8* %16, %struct.config_store_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %22 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %27 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @warning(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %25, %20
  %35 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %36 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %39 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %43 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ALLOC_GROW(i32* %37, i32 %41, i32 %44)
  %46 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %47 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %50 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %53 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %48, i32* %56, align 4
  %57 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %58 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %34, %14
  br label %106

62:                                               ; preds = %3
  %63 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %64 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %69 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %72 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %76 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ALLOC_GROW(i32* %70, i32 %74, i32 %77)
  %79 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %80 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %83 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %86 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 %81, i32* %89, align 4
  %90 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %91 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %90, i32 0, i32 3
  store i32 1, i32* %91, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %95 = call i64 @matches(i8* %92, i8* %93, %struct.config_store_data* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %67
  %98 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %99 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.config_store_data*, %struct.config_store_data** %7, align 8
  %103 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %67
  br label %105

105:                                              ; preds = %104, %62
  br label %106

106:                                              ; preds = %105, %61
  ret i32 0
}

declare dso_local i64 @matches(i8*, i8*, %struct.config_store_data*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
