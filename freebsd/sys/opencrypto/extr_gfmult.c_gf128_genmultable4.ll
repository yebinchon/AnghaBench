; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_genmultable4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_genmultable4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table4 = type { i32* }
%struct.gf128 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf128_genmultable4(i32 %0, %struct.gf128table4* %1) #0 {
  %3 = alloca %struct.gf128, align 4
  %4 = alloca %struct.gf128table4*, align 8
  %5 = alloca %struct.gf128, align 4
  %6 = alloca %struct.gf128, align 4
  %7 = alloca %struct.gf128, align 4
  %8 = alloca %struct.gf128, align 4
  %9 = alloca %struct.gf128, align 4
  %10 = alloca %struct.gf128, align 4
  %11 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  store %struct.gf128table4* %1, %struct.gf128table4** %4, align 8
  %12 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %13 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gf128_genmultable(i32 %17, i32* %15)
  %19 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %20 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gf128_mul(i32 %24, i32* %22)
  %26 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.gf128* %5 to i8*
  %28 = bitcast %struct.gf128* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %30 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gf128_genmultable(i32 %34, i32* %32)
  %36 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %37 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gf128_mul(i32 %41, i32* %39)
  %43 = getelementptr inbounds %struct.gf128, %struct.gf128* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.gf128* %6 to i8*
  %45 = bitcast %struct.gf128* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %47 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = getelementptr inbounds %struct.gf128, %struct.gf128* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gf128_genmultable(i32 %51, i32* %49)
  %53 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %54 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gf128_mul(i32 %58, i32* %56)
  %60 = getelementptr inbounds %struct.gf128, %struct.gf128* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = bitcast %struct.gf128* %7 to i8*
  %62 = bitcast %struct.gf128* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.gf128table4*, %struct.gf128table4** %4, align 8
  %64 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @gf128_genmultable(i32 %68, i32* %66)
  ret void
}

declare dso_local i32 @gf128_genmultable(i32, i32*) #1

declare dso_local i32 @gf128_mul(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
