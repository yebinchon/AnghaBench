; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table = type { i32 }
%struct.gf128 = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gf128_mul(i32* %0, %struct.gf128table* %1) #0 {
  %3 = alloca %struct.gf128, align 8
  %4 = alloca %struct.gf128, align 8
  %5 = alloca %struct.gf128table*, align 8
  %6 = alloca %struct.gf128, align 8
  %7 = alloca %struct.gf128, align 8
  %8 = alloca %struct.gf128, align 8
  %9 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  store i32* %0, i32** %9, align 8
  store %struct.gf128table* %1, %struct.gf128table** %5, align 8
  %10 = call i32* @MAKE_GF128(i32 0, i32 0)
  %11 = getelementptr inbounds %struct.gf128, %struct.gf128* %6, i32 0, i32 0
  store i32* %10, i32** %11, align 8
  %12 = bitcast %struct.gf128* %3 to i8*
  %13 = bitcast %struct.gf128* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gf128table*, %struct.gf128table** %5, align 8
  %19 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @gfmultword(i32 %17, i32* %20, %struct.gf128table* %18)
  %22 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = bitcast %struct.gf128* %3 to i8*
  %24 = bitcast %struct.gf128* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gf128table*, %struct.gf128table** %5, align 8
  %30 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32* @gfmultword(i32 %28, i32* %31, %struct.gf128table* %29)
  %33 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = bitcast %struct.gf128* %3 to i8*
  %35 = bitcast %struct.gf128* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  ret i32* %37
}

declare dso_local i32* @MAKE_GF128(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gfmultword(i32, i32*, %struct.gf128table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
