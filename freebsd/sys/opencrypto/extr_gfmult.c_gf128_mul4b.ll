; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mul4b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mul4b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table4 = type { i32 }
%struct.gf128 = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gf128_mul4b(i32* %0, i32* %1, %struct.gf128table4* %2) #0 {
  %4 = alloca %struct.gf128, align 8
  %5 = alloca %struct.gf128, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gf128table4*, align 8
  %8 = alloca %struct.gf128, align 8
  %9 = alloca %struct.gf128, align 8
  %10 = alloca %struct.gf128, align 8
  %11 = alloca %struct.gf128, align 8
  %12 = alloca %struct.gf128, align 8
  %13 = alloca %struct.gf128, align 8
  %14 = alloca %struct.gf128, align 8
  %15 = alloca %struct.gf128, align 8
  %16 = alloca %struct.gf128, align 8
  %17 = alloca %struct.gf128, align 8
  %18 = alloca %struct.gf128, align 8
  %19 = alloca %struct.gf128, align 8
  %20 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  store i32* %0, i32** %20, align 8
  store i32* %1, i32** %6, align 8
  store %struct.gf128table4* %2, %struct.gf128table4** %7, align 8
  %21 = call i32* @MAKE_GF128(i32 0, i32 0)
  %22 = getelementptr inbounds %struct.gf128, %struct.gf128* %12, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = bitcast %struct.gf128* %4 to i8*
  %24 = bitcast %struct.gf128* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32* @gf128_read(i32* %26)
  %28 = getelementptr inbounds %struct.gf128, %struct.gf128* %14, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.gf128, %struct.gf128* %14, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32* @gf128_add(i32* %30, i32* %32)
  %34 = getelementptr inbounds %struct.gf128, %struct.gf128* %13, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = bitcast %struct.gf128* %8 to i8*
  %36 = bitcast %struct.gf128* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  %39 = call i32* @gf128_read(i32* %38)
  %40 = getelementptr inbounds %struct.gf128, %struct.gf128* %15, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  %41 = bitcast %struct.gf128* %9 to i8*
  %42 = bitcast %struct.gf128* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 32
  %45 = call i32* @gf128_read(i32* %44)
  %46 = getelementptr inbounds %struct.gf128, %struct.gf128* %16, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  %47 = bitcast %struct.gf128* %10 to i8*
  %48 = bitcast %struct.gf128* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 48
  %51 = call i32* @gf128_read(i32* %50)
  %52 = getelementptr inbounds %struct.gf128, %struct.gf128* %17, i32 0, i32 0
  store i32* %51, i32** %52, align 8
  %53 = bitcast %struct.gf128* %11 to i8*
  %54 = bitcast %struct.gf128* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.gf128, %struct.gf128* %10, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.gf128, %struct.gf128* %11, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.gf128table4*, %struct.gf128table4** %7, align 8
  %72 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32* @gfmultword4(i32 %58, i32 %62, i32 %66, i32 %70, i32* %73, %struct.gf128table4* %71)
  %75 = getelementptr inbounds %struct.gf128, %struct.gf128* %18, i32 0, i32 0
  store i32* %74, i32** %75, align 8
  %76 = bitcast %struct.gf128* %4 to i8*
  %77 = bitcast %struct.gf128* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 8, i1 false)
  %78 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.gf128, %struct.gf128* %10, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.gf128, %struct.gf128* %11, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gf128table4*, %struct.gf128table4** %7, align 8
  %95 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32* @gfmultword4(i32 %81, i32 %85, i32 %89, i32 %93, i32* %96, %struct.gf128table4* %94)
  %98 = getelementptr inbounds %struct.gf128, %struct.gf128* %19, i32 0, i32 0
  store i32* %97, i32** %98, align 8
  %99 = bitcast %struct.gf128* %4 to i8*
  %100 = bitcast %struct.gf128* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 8, i1 false)
  %101 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  ret i32* %102
}

declare dso_local i32* @MAKE_GF128(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gf128_add(i32*, i32*) #1

declare dso_local i32* @gf128_read(i32*) #1

declare dso_local i32* @gfmultword4(i32, i32, i32, i32, i32*, %struct.gf128table4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
