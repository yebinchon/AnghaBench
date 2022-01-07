; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_alloc_bucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_alloc_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32 }
%struct.TYPE_9__ = type { i64 (i32, i32*, i32, i32, i32)*, i64 (i32, i32, i32)*, i32, i32, i32 (i32, i32*, i32)*, i32 }

@KTR_UMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"zone_alloc:_bucket domain %d)\00", align 1
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_NOVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*, i8*, i32, i32, i32)* @zone_alloc_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @zone_alloc_bucket(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @KTR_UMA, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @CTR1(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @VM_DOMAIN_EMPTY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @UMA_ANYDOMAIN, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %20, %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @M_NOVM, align 4
  %32 = and i32 %30, %31
  %33 = or i32 %29, %32
  %34 = call %struct.TYPE_10__* @bucket_alloc(%struct.TYPE_9__* %27, i8* %28, i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %12, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %146

38:                                               ; preds = %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64 (i32, i32*, i32, i32, i32)*, i64 (i32, i32*, i32, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MIN(i32 %48, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 %41(i32 %44, i32* %47, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %130

62:                                               ; preds = %38
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %64, align 8
  %66 = icmp ne i64 (i32, i32, i32)* %65, null
  br i1 %66, label %67, label %130

67:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %94, %67
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %68
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i64 %78(i32 %85, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %97

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %68

97:                                               ; preds = %92, %68
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %97
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %119, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 %107(i32 %110, i32* %116, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %104, %97
  br label %130

130:                                              ; preds = %129, %62, %38
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @bucket_free(%struct.TYPE_9__* %136, %struct.TYPE_10__* %137, i8* %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @counter_u64_add(i32 %142, i32 1)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %146

144:                                              ; preds = %130
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %6, align 8
  br label %146

146:                                              ; preds = %144, %135, %37
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %147
}

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i64 @VM_DOMAIN_EMPTY(i32) #1

declare dso_local %struct.TYPE_10__* @bucket_alloc(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @bucket_free(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
