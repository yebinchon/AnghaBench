; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_load_samples.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_load_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64 }
%struct.bwn_c32 = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"allocation for samples loading failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, %struct.bwn_c32*, i32)* @bwn_nphy_load_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_load_samples(%struct.bwn_mac* %0, %struct.bwn_c32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca %struct.bwn_c32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwn_phy_n*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store %struct.bwn_c32* %1, %struct.bwn_c32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %13, align 8
  store %struct.bwn_phy_n* %14, %struct.bwn_phy_n** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i32* @malloc(i32 %18, i32 %19, i32 %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %28 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BWN_ERRPRINTF(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %91

33:                                               ; preds = %3
  %34 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %8, align 8
  %35 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %40 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %39, i32 1)
  br label %41

41:                                               ; preds = %38, %33
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.bwn_c32*, %struct.bwn_c32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %47, i64 %49
  %51 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1047552
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load %struct.bwn_c32*, %struct.bwn_c32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %58, i64 %60
  %62 = getelementptr inbounds %struct.bwn_c32, %struct.bwn_c32* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 1023
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %46
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %76 = call i32 @BWN_NTAB32(i32 17, i32 0)
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %75, i32 %76, i32 %77, i32* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = call i32 @free(i32* %80, i32 %81)
  %83 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %8, align 8
  %84 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %89 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %74
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %26
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @BWN_ERRPRINTF(i32, i8*) #1

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB32(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
