; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_fragacct_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_fragacct_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

@fragtbl = common dso_local global i64** null, align 8
@NBBY = common dso_local global i32 0, align 4
@around = common dso_local global i32* null, align 8
@inside = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_fragacct_swap(%struct.fs* %0, i32 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i64**, i64*** @fragtbl, align 8
  %17 = load %struct.fs*, %struct.fs** %6, align 8
  %18 = getelementptr inbounds %struct.fs, %struct.fs* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64*, i64** %16, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 1
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %7, align 4
  store i32 1, i32* %14, align 4
  br label %30

30:                                               ; preds = %114, %5
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.fs*, %struct.fs** %6, align 8
  %34 = getelementptr inbounds %struct.fs, %struct.fs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.fs*, %struct.fs** %6, align 8
  %42 = getelementptr inbounds %struct.fs, %struct.fs* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @NBBY, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = and i64 %43, %46
  %48 = add i64 %40, %47
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = and i32 %38, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %114

54:                                               ; preds = %37
  %55 = load i32*, i32** @around, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** @inside, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %110, %54
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.fs*, %struct.fs** %6, align 8
  %70 = getelementptr inbounds %struct.fs, %struct.fs* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ule i64 %68, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load i64*, i64** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @ufs_rw32(i64 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @ufs_rw32(i64 %89, i32 %90)
  %92 = load i64*, i64** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %91, i64* %95, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = shl i32 %103, %102
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %79, %73
  %106 = load i32, i32* %12, align 4
  %107 = shl i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %66

113:                                              ; preds = %66
  br label %114

114:                                              ; preds = %113, %53
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %30

117:                                              ; preds = %30
  ret void
}

declare dso_local i64 @ufs_rw32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
