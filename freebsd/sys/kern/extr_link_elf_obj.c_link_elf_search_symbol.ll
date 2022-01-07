; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_search_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_search_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
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
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %13, align 8
  br label %26

26:                                               ; preds = %71, %4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %71

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %11, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %14, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %76

59:                                               ; preds = %51
  br label %69

60:                                               ; preds = %45
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %14, align 8
  br label %68

68:                                               ; preds = %66, %60
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %69, %38
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 1
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %13, align 8
  br label %26

76:                                               ; preds = %58, %26
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %78 = icmp eq %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %10, align 8
  %81 = load i64*, i64** %8, align 8
  store i64 %80, i64* %81, align 8
  br label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %87 = ptrtoint %struct.TYPE_4__* %86 to i64
  %88 = load i64*, i64** %7, align 8
  store i64 %87, i64* %88, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
