; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mul4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mul4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table4 = type { i32 }
%struct.gf128 = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gf128_mul4(i32* %0, i32* %1, i32* %2, i32* %3, %struct.gf128table4* %4) #0 {
  %6 = alloca %struct.gf128, align 8
  %7 = alloca %struct.gf128, align 8
  %8 = alloca %struct.gf128, align 8
  %9 = alloca %struct.gf128, align 8
  %10 = alloca %struct.gf128, align 8
  %11 = alloca %struct.gf128table4*, align 8
  %12 = alloca %struct.gf128, align 8
  %13 = alloca %struct.gf128, align 8
  %14 = alloca %struct.gf128, align 8
  %15 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  store i32* %0, i32** %15, align 8
  %16 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  store i32* %1, i32** %16, align 8
  %17 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  store i32* %2, i32** %17, align 8
  %18 = getelementptr inbounds %struct.gf128, %struct.gf128* %10, i32 0, i32 0
  store i32* %3, i32** %18, align 8
  store %struct.gf128table4* %4, %struct.gf128table4** %11, align 8
  %19 = call i32* @MAKE_GF128(i32 0, i32 0)
  %20 = getelementptr inbounds %struct.gf128, %struct.gf128* %12, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = bitcast %struct.gf128* %6 to i8*
  %22 = bitcast %struct.gf128* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.gf128, %struct.gf128* %10, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gf128table4*, %struct.gf128table4** %11, align 8
  %40 = getelementptr inbounds %struct.gf128, %struct.gf128* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @gfmultword4(i32 %26, i32 %30, i32 %34, i32 %38, i32* %41, %struct.gf128table4* %39)
  %43 = getelementptr inbounds %struct.gf128, %struct.gf128* %13, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = bitcast %struct.gf128* %6 to i8*
  %45 = bitcast %struct.gf128* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.gf128, %struct.gf128* %10, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gf128table4*, %struct.gf128table4** %11, align 8
  %63 = getelementptr inbounds %struct.gf128, %struct.gf128* %6, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32* @gfmultword4(i32 %49, i32 %53, i32 %57, i32 %61, i32* %64, %struct.gf128table4* %62)
  %66 = getelementptr inbounds %struct.gf128, %struct.gf128* %14, i32 0, i32 0
  store i32* %65, i32** %66, align 8
  %67 = bitcast %struct.gf128* %6 to i8*
  %68 = bitcast %struct.gf128* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = getelementptr inbounds %struct.gf128, %struct.gf128* %6, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  ret i32* %70
}

declare dso_local i32* @MAKE_GF128(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gfmultword4(i32, i32, i32, i32, i32*, %struct.gf128table4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
