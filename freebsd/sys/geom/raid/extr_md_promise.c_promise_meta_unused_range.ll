; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_unused_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_unused_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promise_raid_conf = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.promise_raid_conf**, i32, i32, i32*, i32*)* @promise_meta_unused_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promise_meta_unused_range(%struct.promise_raid_conf** %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.promise_raid_conf**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.promise_raid_conf** %0, %struct.promise_raid_conf*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 131072
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %5, %72
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %6, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %27, i64 %29
  %31 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %30, align 8
  %32 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 32
  %36 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %6, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %36, i64 %38
  %40 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %39, align 8
  %41 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %35, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %26
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @MIN(i32 %48, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %113

72:                                               ; preds = %67
  %73 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %73, i64 %75
  %77 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %76, align 8
  %78 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 32
  %82 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %6, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %82, i64 %84
  %86 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %85, align 8
  %87 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %81, %88
  %90 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %6, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %90, i64 %92
  %94 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %93, align 8
  %95 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 32
  %99 = add nsw i32 %89, %98
  %100 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %6, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %100, i64 %102
  %104 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %103, align 8
  %105 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %99, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %21

113:                                              ; preds = %71
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  ret i32 %118
}

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
