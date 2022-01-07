; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_find_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_regwin_find_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64, i64, i64, i64 }

@BHNDB_REGWIN_T_INVALID = common dso_local global i64 0, align 8
@BHNDB_REGWIN_T_CORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_regwin* @bhndb_regwin_find_core(%struct.bhndb_regwin* %0, i64 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.bhndb_regwin*, align 8
  %10 = alloca %struct.bhndb_regwin*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.bhndb_regwin*, align 8
  %19 = alloca i64, align 8
  store %struct.bhndb_regwin* %0, %struct.bhndb_regwin** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %20 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %10, align 8
  store %struct.bhndb_regwin* %20, %struct.bhndb_regwin** %18, align 8
  br label %21

21:                                               ; preds = %116, %8
  %22 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %23 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BHNDB_REGWIN_T_INVALID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %119

27:                                               ; preds = %21
  %28 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %29 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BHNDB_REGWIN_T_CORE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %116

34:                                               ; preds = %27
  %35 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %36 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %116

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %48 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %116

55:                                               ; preds = %46, %43
  %56 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %57 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %116

64:                                               ; preds = %55
  %65 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %66 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %116

73:                                               ; preds = %64
  %74 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %75 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %116

82:                                               ; preds = %73
  %83 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %84 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %116

91:                                               ; preds = %82
  %92 = load i64, i64* %16, align 8
  %93 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %94 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %92, %97
  store i64 %98, i64* %19, align 8
  %99 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %100 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %19, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %116

105:                                              ; preds = %91
  %106 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %107 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %19, align 8
  %110 = sub nsw i64 %108, %109
  %111 = load i64, i64* %17, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %116

114:                                              ; preds = %105
  %115 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  store %struct.bhndb_regwin* %115, %struct.bhndb_regwin** %9, align 8
  br label %120

116:                                              ; preds = %113, %104, %90, %81, %72, %63, %54, %42, %33
  %117 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %118 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %117, i32 1
  store %struct.bhndb_regwin* %118, %struct.bhndb_regwin** %18, align 8
  br label %21

119:                                              ; preds = %21
  store %struct.bhndb_regwin* null, %struct.bhndb_regwin** %9, align 8
  br label %120

120:                                              ; preds = %119, %114
  %121 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  ret %struct.bhndb_regwin* %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
