; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_genmultable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_genmultable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table = type { i32*, i32*, i32*, i32* }
%struct.gf128 = type { i32* }

@nib_rev = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf128_genmultable(i32* %0, %struct.gf128table* %1) #0 {
  %3 = alloca %struct.gf128, align 8
  %4 = alloca %struct.gf128table*, align 8
  %5 = alloca [16 x %struct.gf128], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.gf128, align 8
  %8 = alloca %struct.gf128, align 8
  %9 = alloca %struct.gf128, align 8
  %10 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  store i32* %0, i32** %10, align 8
  store %struct.gf128table* %1, %struct.gf128table** %4, align 8
  %11 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 0
  %12 = call i32* @MAKE_GF128(i32 0, i32 0)
  %13 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = bitcast %struct.gf128* %11 to i8*
  %15 = bitcast %struct.gf128* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 1
  %17 = bitcast %struct.gf128* %16 to i8*
  %18 = bitcast %struct.gf128* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  store i32 2, i32* %6, align 4
  br label %19

19:                                               ; preds = %51, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.gf128, %struct.gf128* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32* @gf128_mulalpha(i32* %31)
  %33 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = bitcast %struct.gf128* %25 to i8*
  %35 = bitcast %struct.gf128* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.gf128, %struct.gf128* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32* @gf128_add(i32* %44, i32* %46)
  %48 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  store i32* %47, i32** %48, align 8
  %49 = bitcast %struct.gf128* %39 to i8*
  %50 = bitcast %struct.gf128* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %22
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %6, align 4
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %125, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %128

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.gf128, %struct.gf128* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 32
  %67 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %68 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64*, i64** @nib_rev, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  store i32 %66, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.gf128, %struct.gf128* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %84 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64*, i64** @nib_rev, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32 %82, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.gf128, %struct.gf128* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 32
  %100 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %101 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64*, i64** @nib_rev, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %99, i32* %108, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x %struct.gf128], [16 x %struct.gf128]* %5, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.gf128, %struct.gf128* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %117 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i64*, i64** @nib_rev, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  store i32 %115, i32* %124, align 4
  br label %125

125:                                              ; preds = %58
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %55

128:                                              ; preds = %55
  ret void
}

declare dso_local i32* @MAKE_GF128(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gf128_mulalpha(i32*) #1

declare dso_local i32* @gf128_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
