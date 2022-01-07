; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_sizeof_union.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_sizeof_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i8*, i32, i64 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.packed_git*, %struct.packed_git*)* @sizeof_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sizeof_union(%struct.packed_git* %0, %struct.packed_git* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store %struct.packed_git* %1, %struct.packed_git** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %18 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %24 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 2
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 4, i32 8
  %29 = add nsw i32 1024, %28
  %30 = load i8*, i8** %10, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %10, align 8
  %33 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %34 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 4, i32 8
  %39 = add nsw i32 1024, %38
  %40 = load i8*, i8** %11, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %45 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 2
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 4, i32 0
  %50 = add i32 %43, %49
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %54 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 2
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 4, i32 0
  %59 = add i32 %52, %58
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %109, %89, %2
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %64 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = mul i64 %65, %66
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %72 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = mul i64 %73, %74
  %76 = icmp ult i64 %70, %75
  br label %77

77:                                               ; preds = %69, %61
  %78 = phi i1 [ false, %61 ], [ %76, %69 ]
  br i1 %78, label %79, label %110

79:                                               ; preds = %77
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8*, i8** %11, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = call i32 @hashcmp(i8* %82, i8* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %79
  %90 = load i64, i64* %5, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %7, align 8
  br label %61

98:                                               ; preds = %79
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %6, align 8
  br label %109

105:                                              ; preds = %98
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %105, %101
  br label %61

110:                                              ; preds = %77
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i32 @hashcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
