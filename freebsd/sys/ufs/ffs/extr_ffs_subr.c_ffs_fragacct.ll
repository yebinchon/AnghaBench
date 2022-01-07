; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_fragacct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_fragacct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

@fragtbl = common dso_local global i64** null, align 8
@NBBY = common dso_local global i32 0, align 4
@around = common dso_local global i32* null, align 8
@inside = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_fragacct(%struct.fs* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i64**, i64*** @fragtbl, align 8
  %15 = load %struct.fs*, %struct.fs** %5, align 8
  %16 = getelementptr inbounds %struct.fs, %struct.fs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64*, i64** %14, i64 %17
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %6, align 4
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %102, %4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.fs*, %struct.fs** %5, align 8
  %32 = getelementptr inbounds %struct.fs, %struct.fs* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.fs*, %struct.fs** %5, align 8
  %40 = getelementptr inbounds %struct.fs, %struct.fs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @NBBY, align 4
  %43 = sext i32 %42 to i64
  %44 = urem i64 %41, %43
  %45 = add i64 %38, %44
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = and i32 %36, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %102

51:                                               ; preds = %35
  %52 = load i32*, i32** @around, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** @inside, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %98, %51
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.fs*, %struct.fs** %5, align 8
  %67 = getelementptr inbounds %struct.fs, %struct.fs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ule i64 %65, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %76, %70
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %63

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %50
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %28

105:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
