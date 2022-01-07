; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gfmultword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gfmultword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table = type { i32 }
%struct.gf128 = type { i32* }

@reduction = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, %struct.gf128table*)* @gfmultword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gfmultword(i32 %0, i32* %1, %struct.gf128table* %2) #0 {
  %4 = alloca %struct.gf128, align 8
  %5 = alloca %struct.gf128, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gf128table*, align 8
  %8 = alloca %struct.gf128, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gf128, align 8
  %13 = alloca %struct.gf128, align 8
  %14 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  store i32* %1, i32** %14, align 8
  store i32 %0, i32* %6, align 4
  store %struct.gf128table* %2, %struct.gf128table** %7, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %74, %3
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 64
  br i1 %17, label %18, label %77

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = srem i32 %19, 16
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gf128table*, %struct.gf128table** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32* @readrow(%struct.gf128table* %21, i32 %22)
  %24 = getelementptr inbounds %struct.gf128, %struct.gf128* %12, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = bitcast %struct.gf128* %8 to i8*
  %26 = bitcast %struct.gf128* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 16
  store i32 %31, i32* %10, align 4
  %32 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 4
  %37 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %40, 16
  %42 = shl i32 %41, 60
  %43 = or i32 %36, %42
  %44 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %49, align 4
  %52 = load i64*, i64** @reduction, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 48
  %59 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 4
  store i32 %65, i32* %6, align 4
  %66 = getelementptr inbounds %struct.gf128, %struct.gf128* %5, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32* @gf128_add(i32* %67, i32* %69)
  %71 = getelementptr inbounds %struct.gf128, %struct.gf128* %13, i32 0, i32 0
  store i32* %70, i32** %71, align 8
  %72 = bitcast %struct.gf128* %5 to i8*
  %73 = bitcast %struct.gf128* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  br label %74

74:                                               ; preds = %18
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %11, align 4
  br label %15

77:                                               ; preds = %15
  %78 = bitcast %struct.gf128* %4 to i8*
  %79 = bitcast %struct.gf128* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  %80 = getelementptr inbounds %struct.gf128, %struct.gf128* %4, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  ret i32* %81
}

declare dso_local i32* @readrow(%struct.gf128table*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gf128_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
