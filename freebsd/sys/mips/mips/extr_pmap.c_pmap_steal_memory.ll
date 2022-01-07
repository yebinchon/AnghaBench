; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_steal_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_steal_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_avail = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"pmap_steal_memory: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Out of memory below 512Meg?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_steal_memory(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @round_page(i64 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64*, i64** @phys_avail, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** @phys_avail, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %70, %1
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i64*, i64** @phys_avail, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load i64*, i64** @phys_avail, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** @phys_avail, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %35, i64* %39, align 8
  %40 = load i64*, i64** @phys_avail, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** @phys_avail, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %45, i64* %50, align 8
  br label %51

51:                                               ; preds = %29
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %6, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i64*, i64** @phys_avail, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** @phys_avail, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  store i64 0, i64* %63, align 8
  %64 = load i64*, i64** @phys_avail, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %54
  %69 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %54
  %71 = load i64*, i64** @phys_avail, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** @phys_avail, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  store i64 %77, i64* %3, align 8
  br label %16

78:                                               ; preds = %16
  %79 = load i64*, i64** @phys_avail, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %2, align 8
  %83 = load i64*, i64** @phys_avail, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @MIPS_DIRECT_MAPPABLE(i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %78
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @MIPS_PHYS_TO_DIRECT(i64 %93)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i64, i64* %2, align 8
  %98 = call i32 @bzero(i32 %96, i64 %97)
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @MIPS_DIRECT_MAPPABLE(i64) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i64) #1

declare dso_local i32 @bzero(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
