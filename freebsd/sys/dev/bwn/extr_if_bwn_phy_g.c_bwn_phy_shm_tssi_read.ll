; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_shm_tssi_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_shm_tssi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_SHARED_TSSI_CCK = common dso_local global i64 0, align 8
@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_TSSI_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BWN_SHARED_HFLO = common dso_local global i32 0, align 4
@BWN_HF_4DB_CCK_POWERBOOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i64)* @bwn_phy_shm_tssi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_shm_tssi_read(%struct.bwn_mac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @BWN_SHARED_TSSI_CCK, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %18 = load i32, i32* @BWN_SHARED, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @bwn_shm_read_4(%struct.bwn_mac* %17, i32 %18, i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %12, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BWN_TSSI_MAX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BWN_TSSI_MAX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @BWN_TSSI_MAX, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BWN_TSSI_MAX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %52, %48, %45, %41, %38, %34, %2
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* %3, align 4
  br label %123

61:                                               ; preds = %55
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %63 = load i32, i32* @BWN_SHARED, align 4
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* @BWN_TSSI_MAX, align 4
  %66 = load i32, i32* @BWN_TSSI_MAX, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  %69 = load i32, i32* @BWN_TSSI_MAX, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %68, %70
  %72 = load i32, i32* @BWN_TSSI_MAX, align 4
  %73 = shl i32 %72, 24
  %74 = or i32 %71, %73
  %75 = call i32 @bwn_shm_write_4(%struct.bwn_mac* %62, i32 %63, i64 %64, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %61
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 32
  %81 = and i32 %80, 63
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 32
  %84 = and i32 %83, 63
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 32
  %87 = and i32 %86, 63
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 32
  %90 = and i32 %89, 63
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %78, %61
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %96, %97
  %99 = add i32 %98, 2
  %100 = udiv i32 %99, 4
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %91
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %105 = load i32, i32* @BWN_SHARED, align 4
  %106 = load i32, i32* @BWN_SHARED_HFLO, align 4
  %107 = call i32 @bwn_shm_read_2(%struct.bwn_mac* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @BWN_HF_4DB_CCK_POWERBOOST, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = icmp uge i32 %112, 13
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = sub i32 %115, 13
  br label %118

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 0, %117 ]
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %118, %103
  br label %121

121:                                              ; preds = %120, %91
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %59
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @bwn_shm_read_4(%struct.bwn_mac*, i32, i64) #1

declare dso_local i32 @bwn_shm_write_4(%struct.bwn_mac*, i32, i64, i32) #1

declare dso_local i32 @bwn_shm_read_2(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
