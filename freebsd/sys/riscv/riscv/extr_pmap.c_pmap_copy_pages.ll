; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_copy_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"!DMAP a %lx\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"!DMAP b %lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_pages(%struct.TYPE_4__** %0, i64 %1, %struct.TYPE_4__** %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  br label %20

20:                                               ; preds = %91, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %17, align 8
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %13, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PAGE_MASK, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %18, align 8
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = lshr i64 %40, %41
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %14, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i64, i64* %17, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @min(i32 %48, i64 %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = load i64, i64* %18, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @min(i32 %53, i64 %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @PHYS_IN_DMAP(i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @__predict_false(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %23
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %74

68:                                               ; preds = %23
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @PHYS_TO_DMAP(i32 %69)
  %71 = inttoptr i64 %70 to i8*
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @PHYS_IN_DMAP(i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @__predict_false(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %91

85:                                               ; preds = %74
  %86 = load i32, i32* %16, align 4
  %87 = call i64 @PHYS_TO_DMAP(i32 %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @bcopy(i8* %92, i8* %93, i32 %94)
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %9, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %20

107:                                              ; preds = %20
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @PHYS_IN_DMAP(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
