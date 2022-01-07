; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_2057_rccal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_2057_rccal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@R2057_RCCAL_MASTER = common dso_local global i32 0, align 4
@R2057_RCCAL_TRC0 = common dso_local global i32 0, align 4
@R2057v7_RCCAL_MASTER = common dso_local global i32 0, align 4
@R2057_RCCAL_X1 = common dso_local global i32 0, align 4
@R2057_RCCAL_START_R1_Q1_P1 = common dso_local global i32 0, align 4
@R2057_RCCAL_DONE_OSCCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Radio 0x2057 rccal timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Radio 0x2057 rcal timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_radio_2057_rccal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_radio_2057_rccal(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 1
  store %struct.bwn_phy* %8, %struct.bwn_phy** %4, align 8
  %9 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %20 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6
  br label %23

23:                                               ; preds = %18, %13, %1
  %24 = phi i1 [ true, %13 ], [ true, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %30 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %31 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %29, i32 %30, i32 97)
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %33 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %34 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %32, i32 %33, i32 192)
  br label %42

35:                                               ; preds = %23
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %38 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %36, i32 %37, i32 97)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %41 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %39, i32 %40, i32 233)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %44 = load i32, i32* @R2057_RCCAL_X1, align 4
  %45 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %43, i32 %44, i32 110)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %48 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %46, i32 %47, i32 85)
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %50 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %51 = call i32 @bwn_radio_wait_value(%struct.bwn_mac* %49, i32 %50, i32 2, i32 2, i32 500, i32 5000000)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %55 = call i32 @BWN_DBGPRINTF(%struct.bwn_mac* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %42
  %57 = call i32 @DELAY(i32 70)
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %59 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %60 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %58, i32 %59, i32 21)
  %61 = call i32 @DELAY(i32 140)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %66 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %67 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %65, i32 %66, i32 105)
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %69 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %70 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %68, i32 %69, i32 176)
  br label %78

71:                                               ; preds = %56
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %73 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %74 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %72, i32 %73, i32 105)
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %76 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %77 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %75, i32 %76, i32 213)
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %80 = load i32, i32* @R2057_RCCAL_X1, align 4
  %81 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %79, i32 %80, i32 110)
  %82 = call i32 @DELAY(i32 70)
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %84 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %85 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %83, i32 %84, i32 85)
  %86 = call i32 @DELAY(i32 140)
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %88 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %89 = call i32 @bwn_radio_wait_value(%struct.bwn_mac* %87, i32 %88, i32 2, i32 2, i32 500, i32 5000000)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %93 = call i32 @BWN_DBGPRINTF(%struct.bwn_mac* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %78
  %95 = call i32 @DELAY(i32 70)
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %97 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %98 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %96, i32 %97, i32 21)
  %99 = call i32 @DELAY(i32 140)
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %94
  %103 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %104 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %105 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %103, i32 %104, i32 115)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %107 = load i32, i32* @R2057_RCCAL_X1, align 4
  %108 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %106, i32 %107, i32 40)
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %110 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %111 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %109, i32 %110, i32 176)
  br label %122

112:                                              ; preds = %94
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %114 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %115 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %113, i32 %114, i32 115)
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %117 = load i32, i32* @R2057_RCCAL_X1, align 4
  %118 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %116, i32 %117, i32 110)
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %120 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %121 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %119, i32 %120, i32 153)
  br label %122

122:                                              ; preds = %112, %102
  %123 = call i32 @DELAY(i32 70)
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %125 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %126 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %124, i32 %125, i32 85)
  %127 = call i32 @DELAY(i32 140)
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %129 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %130 = call i32 @bwn_radio_wait_value(%struct.bwn_mac* %128, i32 %129, i32 2, i32 2, i32 500, i32 5000000)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %122
  %133 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %134 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @BWN_ERRPRINTF(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %158

137:                                              ; preds = %122
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %139 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %140 = call i32 @BWN_RF_READ(%struct.bwn_mac* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = call i32 @DELAY(i32 70)
  %142 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %143 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %144 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %142, i32 %143, i32 21)
  %145 = call i32 @DELAY(i32 140)
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %150 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %151 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %149, i32 %150, i32 -2)
  br label %156

152:                                              ; preds = %137
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %154 = load i32, i32* @R2057v7_RCCAL_MASTER, align 4
  %155 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %153, i32 %154, i32 -2)
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %132
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_radio_wait_value(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BWN_DBGPRINTF(%struct.bwn_mac*, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_ERRPRINTF(i32, i8*) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
