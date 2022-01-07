; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_set_antenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@BWN_ANTAUTO0 = common dso_local global i32 0, align 4
@BWN_ANTAUTO1 = common dso_local global i32 0, align 4
@BWN_HF_UCODE_ANTDIV_HELPER = common dso_local global i32 0, align 4
@BWN_PHY_BBANDCFG = common dso_local global i32 0, align 4
@BWN_PHY_BBANDCFG_RXANT = common dso_local global i32 0, align 4
@BWN_PHY_BBANDCFG_RXANT_SHIFT = common dso_local global i32 0, align 4
@BWN_PHY_ANTDWELL = common dso_local global i32 0, align 4
@BWN_PHY_ANTDWELL_AUTODIV1 = common dso_local global i32 0, align 4
@BWN_PHY_ANTWRSETT = common dso_local global i32 0, align 4
@BWN_PHY_ANTWRSETT_ARXDIV = common dso_local global i32 0, align 4
@BWN_PHY_OFDM61 = common dso_local global i32 0, align 4
@BWN_PHY_OFDM61_10 = common dso_local global i32 0, align 4
@BWN_PHY_DIVSRCHGAINBACK = common dso_local global i32 0, align 4
@BWN_PHY_ADIVRELATED = common dso_local global i32 0, align 4
@BWN_PHY_OFDM9B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_phy_g_set_antenna(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  store %struct.bwn_phy* %10, %struct.bwn_phy** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BWN_ANTAUTO0, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BWN_ANTAUTO1, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %21 = call i32 @bwn_hf_read(%struct.bwn_mac* %20)
  %22 = load i32, i32* @BWN_HF_UCODE_ANTDIV_HELPER, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bwn_hf_write(%struct.bwn_mac* %25, i32 %26)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = load i32, i32* @BWN_PHY_BBANDCFG, align 4
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %31 = load i32, i32* @BWN_PHY_BBANDCFG, align 4
  %32 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %30, i32 %31)
  %33 = load i32, i32* @BWN_PHY_BBANDCFG_RXANT, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i32, i32* @BWN_ANTAUTO1, align 4
  br label %42

40:                                               ; preds = %19
  %41 = load i32, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* @BWN_PHY_BBANDCFG_RXANT_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %35, %45
  %47 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %28, i32 %29, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %42
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %52 = load i32, i32* @BWN_PHY_ANTDWELL, align 4
  %53 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BWN_ANTAUTO1, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @BWN_PHY_ANTDWELL_AUTODIV1, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @BWN_PHY_ANTDWELL_AUTODIV1, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %68 = load i32, i32* @BWN_PHY_ANTDWELL, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %42
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %73 = load i32, i32* @BWN_PHY_ANTWRSETT, align 4
  %74 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @BWN_PHY_ANTWRSETT_ARXDIV, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %86

81:                                               ; preds = %71
  %82 = load i32, i32* @BWN_PHY_ANTWRSETT_ARXDIV, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %88 = load i32, i32* @BWN_PHY_ANTWRSETT, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %87, i32 %88, i32 %89)
  %91 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %92 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 2
  br i1 %94, label %95, label %130

95:                                               ; preds = %86
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %97 = load i32, i32* @BWN_PHY_OFDM61, align 4
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %99 = load i32, i32* @BWN_PHY_OFDM61, align 4
  %100 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %98, i32 %99)
  %101 = load i32, i32* @BWN_PHY_OFDM61_10, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %96, i32 %97, i32 %102)
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %105 = load i32, i32* @BWN_PHY_DIVSRCHGAINBACK, align 4
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %107 = load i32, i32* @BWN_PHY_DIVSRCHGAINBACK, align 4
  %108 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %106, i32 %107)
  %109 = and i32 %108, 65280
  %110 = or i32 %109, 21
  %111 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %104, i32 %105, i32 %110)
  %112 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %113 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %120

116:                                              ; preds = %95
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %118 = load i32, i32* @BWN_PHY_ADIVRELATED, align 4
  %119 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %117, i32 %118, i32 8)
  br label %129

120:                                              ; preds = %95
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %122 = load i32, i32* @BWN_PHY_ADIVRELATED, align 4
  %123 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %124 = load i32, i32* @BWN_PHY_ADIVRELATED, align 4
  %125 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %123, i32 %124)
  %126 = and i32 %125, 65280
  %127 = or i32 %126, 8
  %128 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %121, i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %120, %116
  br label %130

130:                                              ; preds = %129, %86
  %131 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %132 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 6
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %137 = load i32, i32* @BWN_PHY_OFDM9B, align 4
  %138 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %136, i32 %137, i32 220)
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i32, i32* @BWN_HF_UCODE_ANTDIV_HELPER, align 4
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  %143 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @bwn_hf_write(%struct.bwn_mac* %143, i32 %144)
  ret void
}

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
