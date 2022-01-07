; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_gen_load_samples.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_gen_load_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_c32 = type { i32, i32 }

@BWN_NPHY_BBCFG = common dso_local global i32 0, align 4
@BWN_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocation for samples generation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32, i32)* @bwn_nphy_gen_load_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_gen_load_samples(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bwn_c32*, align 8
  %16 = alloca %struct.bwn_c32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %18 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 40, i32 20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 3
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %28 = load i32, i32* @BWN_NPHY_BBCFG, align 4
  %29 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %27, i32 %28)
  %30 = load i32, i32* @BWN_NPHY_BBCFG_RSTRX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 82, i32* %11, align 4
  br label %35

34:                                               ; preds = %26
  store i32 80, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %37 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %4
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = load i32, i32* @M_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call %struct.bwn_c32* @malloc(i32 %49, i32 %50, i32 %53)
  store %struct.bwn_c32* %54, %struct.bwn_c32** %15, align 8
  %55 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %56 = icmp ne %struct.bwn_c32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %45
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %59 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BWN_ERRPRINTF(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, 36
  %65 = load i32, i32* %11, align 4
  %66 = sdiv i32 %64, %65
  %67 = shl i32 %66, 16
  %68 = sdiv i32 %67, 100
  store i32 %68, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %116, %62
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %69
  %74 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %74, i64 %76
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @bwn_cordic(i32 %78)
  %80 = bitcast %struct.bwn_c32* %16 to i64*
  store i64 %79, i64* %80, align 4
  %81 = bitcast %struct.bwn_c32* %77 to i8*
  %82 = bitcast %struct.bwn_c32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 8, i1 false)
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %86, i64 %88
  %90 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i8* @CORDIC_CONVERT(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %96, i64 %98
  %100 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %101, i64 %103
  %105 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i8* @CORDIC_CONVERT(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %111, i64 %113
  %115 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %114, i32 0, i32 1
  store i32 %110, i32* %115, align 4
  br label %116

116:                                              ; preds = %73
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %69

119:                                              ; preds = %69
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %121 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @bwn_nphy_load_samples(%struct.bwn_mac* %120, %struct.bwn_c32* %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load %struct.bwn_c32*, %struct.bwn_c32** %15, align 8
  %125 = load i32, i32* @M_DEVBUF, align 4
  %126 = call i32 @free(%struct.bwn_c32* %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %12, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi i32 [ 0, %129 ], [ %131, %130 ]
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %57
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local %struct.bwn_c32* @malloc(i32, i32, i32) #1

declare dso_local i32 @BWN_ERRPRINTF(i32, i8*) #1

declare dso_local i64 @bwn_cordic(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @CORDIC_CONVERT(i32) #1

declare dso_local i32 @bwn_nphy_load_samples(%struct.bwn_mac*, %struct.bwn_c32*, i32) #1

declare dso_local i32 @free(%struct.bwn_c32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
