; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_readrow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_readrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table = type { i32*, i32*, i64*, i64* }
%struct.gf128 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gf128table*, i32)* @readrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @readrow(%struct.gf128table* %0, i32 %1) #0 {
  %3 = alloca %struct.gf128, align 8
  %4 = alloca %struct.gf128table*, align 8
  %5 = alloca i32, align 4
  store %struct.gf128table* %0, %struct.gf128table** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = urem i32 %6, 16
  store i32 %7, i32* %5, align 4
  %8 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %9 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %8, i32 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 32
  %17 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %18 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %16, %23
  %25 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %29 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 32
  %37 = load %struct.gf128table*, %struct.gf128table** %4, align 8
  %38 = getelementptr inbounds %struct.gf128table, %struct.gf128table* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %36, %43
  %45 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.gf128, %struct.gf128* %3, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  ret i32* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
