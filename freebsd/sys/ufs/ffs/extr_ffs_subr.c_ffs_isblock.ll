; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_isblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_isblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_isblock(%struct.fs* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.fs* %0, %struct.fs** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.fs*, %struct.fs** %5, align 8
  %10 = getelementptr inbounds %struct.fs, %struct.fs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  switch i32 %12, label %80 [
    i32 8, label %13
    i32 4, label %21
    i32 2, label %41
    i32 1, label %61
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 255
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, 1
  %24 = shl i64 %23, 2
  %25 = trunc i64 %24 to i32
  %26 = shl i32 15, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %8, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = lshr i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %82

41:                                               ; preds = %3
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %42, 3
  %44 = shl i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = shl i32 3, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %8, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = lshr i64 %49, 2
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %82

61:                                               ; preds = %3
  %62 = load i64, i64* %7, align 8
  %63 = and i64 %62, 7
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %8, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = lshr i64 %68, 3
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %8, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %3
  br label %81

81:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %61, %41, %21, %13
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
