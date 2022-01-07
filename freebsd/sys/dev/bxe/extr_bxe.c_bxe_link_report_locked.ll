; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_report_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_report_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bxe_link_report_data = type { i32, i64 }

@BXE_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Change in link status : cur_data = %x, last_reported_link = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"link status change count = %x\0A\00", align 1
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@BXE_LINK_REPORT_FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"link set to full duplex\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"link set to half duplex\0A\00", align 1
@BXE_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BXE_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"ON - receive & transmit\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ON - receive\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ON - transmit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"NIC Link is Up, %d Mbps %s duplex, Flow control: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_link_report_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_link_report_locked(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_link_report_data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = call i64 @IS_PF(%struct.bxe_softc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = call i32 @CHIP_IS_E1(%struct.bxe_softc* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = call i32 @bxe_read_mf_cfg(%struct.bxe_softc* %14)
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = call i32 @bxe_fill_report_data(%struct.bxe_softc* %17, %struct.bxe_link_report_data* %3)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 1
  %21 = call i32 @memcmp(%struct.bxe_link_report_data* %3, %struct.TYPE_3__* %20, i32 16)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load i32, i32* @BXE_LINK_REPORT_LINK_DOWN, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i64 @bxe_test_bit(i32 %24, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @BXE_LINK_REPORT_LINK_DOWN, align 4
  %32 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %33 = call i64 @bxe_test_bit(i32 %31, i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %16
  br label %132

36:                                               ; preds = %30, %23
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %37, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %43)
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %54, i32 0, i32 1
  %56 = call i32 @memcpy(%struct.TYPE_3__* %55, %struct.bxe_link_report_data* %3, i32 16)
  %57 = load i32, i32* @BXE_LINK_REPORT_LINK_DOWN, align 4
  %58 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %59 = call i64 @bxe_test_bit(i32 %57, i64* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %36
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LINK_STATE_DOWN, align 4
  %66 = call i32 @if_link_state_change(i32 %64, i32 %65)
  br label %132

67:                                               ; preds = %36
  %68 = load i32, i32* @BXE_LINK_REPORT_FULL_DUPLEX, align 4
  %69 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %70 = call i64 @bxe_test_and_clear_bit(i32 %68, i64* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %78

75:                                               ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %77 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  %79 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %78
  %83 = load i32, i32* @BXE_LINK_REPORT_RX_FC_ON, align 4
  %84 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %85 = call i64 @bxe_test_bit(i32 %83, i64* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @BXE_LINK_REPORT_TX_FC_ON, align 4
  %89 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %90 = call i64 @bxe_test_bit(i32 %88, i64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %118

93:                                               ; preds = %87, %82
  %94 = load i32, i32* @BXE_LINK_REPORT_RX_FC_ON, align 4
  %95 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %96 = call i64 @bxe_test_bit(i32 %94, i64* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @BXE_LINK_REPORT_TX_FC_ON, align 4
  %100 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %101 = call i64 @bxe_test_bit(i32 %99, i64* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %117

104:                                              ; preds = %98, %93
  %105 = load i32, i32* @BXE_LINK_REPORT_RX_FC_ON, align 4
  %106 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %107 = call i64 @bxe_test_bit(i32 %105, i64* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @BXE_LINK_REPORT_TX_FC_ON, align 4
  %111 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 1
  %112 = call i64 @bxe_test_bit(i32 %110, i64* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %116

115:                                              ; preds = %109, %104
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %92
  br label %120

119:                                              ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @LINK_STATE_UP, align 4
  %125 = call i32 @if_link_state_change(i32 %123, i32 %124)
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %127 = getelementptr inbounds %struct.bxe_link_report_data, %struct.bxe_link_report_data* %3, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @BLOGI(%struct.bxe_softc* %126, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %128, i8* %129, i8* %130)
  br label %132

132:                                              ; preds = %35, %120, %61
  ret void
}

declare dso_local i64 @IS_PF(%struct.bxe_softc*) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_read_mf_cfg(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_fill_report_data(%struct.bxe_softc*, %struct.bxe_link_report_data*) #1

declare dso_local i32 @memcmp(%struct.bxe_link_report_data*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @bxe_test_bit(i32, i64*) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i64, i64) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.bxe_link_report_data*, i32) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i64 @bxe_test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
