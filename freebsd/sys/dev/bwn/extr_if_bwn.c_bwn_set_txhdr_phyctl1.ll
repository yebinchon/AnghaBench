; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_set_txhdr_phyctl1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_set_txhdr_phyctl1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i64 }

@BWN_TXH_PHY1_BW_20 = common dso_local global i32 0, align 4
@BWN_PHYTYPE_LP = common dso_local global i64 0, align 8
@BWN_TXH_PHY1_CRATE_1_2 = common dso_local global i32 0, align 4
@BWN_TXH_PHY1_MODUL_BPSK = common dso_local global i32 0, align 4
@BWN_TXH_PHY1_CRATE_3_4 = common dso_local global i32 0, align 4
@BWN_TXH_PHY1_MODUL_QPSK = common dso_local global i32 0, align 4
@BWN_TXH_PHY1_MODUL_QAM16 = common dso_local global i32 0, align 4
@BWN_TXH_PHY1_MODUL_QAM64 = common dso_local global i32 0, align 4
@BWN_TXH_PHY1_MODE_SISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32)* @bwn_set_txhdr_phyctl1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_set_txhdr_phyctl1(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  store %struct.bwn_phy* %9, %struct.bwn_phy** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @BWN_TXH_PHY1_BW_20, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @BWN_ISCCKRATE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %16 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BWN_PHYTYPE_LP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %6, align 4
  br label %97

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %92 [
    i32 138, label %25
    i32 137, label %27
    i32 136, label %30
    i32 139, label %33
    i32 129, label %36
    i32 128, label %43
    i32 135, label %50
    i32 134, label %57
    i32 133, label %64
    i32 132, label %71
    i32 131, label %78
    i32 130, label %85
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %6, align 4
  br label %93

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %93

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* %6, align 4
  br label %93

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 3
  store i32 %35, i32* %6, align 4
  br label %93

36:                                               ; preds = %22
  %37 = load i32, i32* @BWN_TXH_PHY1_CRATE_1_2, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @BWN_TXH_PHY1_MODUL_BPSK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %93

43:                                               ; preds = %22
  %44 = load i32, i32* @BWN_TXH_PHY1_CRATE_3_4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @BWN_TXH_PHY1_MODUL_BPSK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %93

50:                                               ; preds = %22
  %51 = load i32, i32* @BWN_TXH_PHY1_CRATE_1_2, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @BWN_TXH_PHY1_MODUL_QPSK, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %93

57:                                               ; preds = %22
  %58 = load i32, i32* @BWN_TXH_PHY1_CRATE_3_4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @BWN_TXH_PHY1_MODUL_QPSK, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %93

64:                                               ; preds = %22
  %65 = load i32, i32* @BWN_TXH_PHY1_CRATE_1_2, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @BWN_TXH_PHY1_MODUL_QAM16, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %93

71:                                               ; preds = %22
  %72 = load i32, i32* @BWN_TXH_PHY1_CRATE_3_4, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @BWN_TXH_PHY1_MODUL_QAM16, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %93

78:                                               ; preds = %22
  %79 = load i32, i32* @BWN_TXH_PHY1_CRATE_1_2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @BWN_TXH_PHY1_MODUL_QAM64, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %93

85:                                               ; preds = %22
  %86 = load i32, i32* @BWN_TXH_PHY1_CRATE_3_4, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @BWN_TXH_PHY1_MODUL_QAM64, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %93

92:                                               ; preds = %22
  br label %93

93:                                               ; preds = %92, %85, %78, %71, %64, %57, %50, %43, %36, %33, %30, %27, %25
  %94 = load i32, i32* @BWN_TXH_PHY1_MODE_SISO, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %20
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @BWN_ISCCKRATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
