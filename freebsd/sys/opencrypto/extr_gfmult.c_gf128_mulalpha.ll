; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mulalpha.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gf128_mulalpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128 = type { i32* }

@REV_POLY_REDUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @gf128_mulalpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gf128_mulalpha(i32* %0) #0 {
  %2 = alloca %struct.gf128, align 8
  %3 = alloca %struct.gf128, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  store i32* %0, i32** %5, align 8
  %6 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 1
  %23 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  %28 = shl i32 %27, 63
  %29 = or i32 %22, %28
  %30 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @REV_POLY_REDUCT, align 4
  %40 = and i32 %38, %39
  %41 = shl i32 %40, 56
  %42 = xor i32 %37, %41
  %43 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %42, i32* %45, align 4
  %46 = bitcast %struct.gf128* %2 to i8*
  %47 = bitcast %struct.gf128* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = getelementptr inbounds %struct.gf128, %struct.gf128* %2, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  ret i32* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
