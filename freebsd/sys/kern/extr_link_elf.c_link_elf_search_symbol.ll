; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_search_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_search_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*, i64*)* @link_elf_search_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_elf_search_symbol(i32 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %11, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %13, align 8
  br label %26

26:                                               ; preds = %77, %4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %45 to i64
  %47 = add i64 %41, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %38
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* %11, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %11, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %14, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %82

65:                                               ; preds = %57
  br label %75

66:                                               ; preds = %51
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %14, align 8
  br label %74

74:                                               ; preds = %72, %66
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %38
  br label %77

77:                                               ; preds = %76, %37
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 1
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %13, align 8
  br label %26

82:                                               ; preds = %64, %26
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %84 = icmp eq %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = load i64*, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  br label %91

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = load i64*, i64** %8, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %93 = ptrtoint %struct.TYPE_4__* %92 to i64
  %94 = load i64*, i64** %7, align 8
  store i64 %93, i64* %94, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
