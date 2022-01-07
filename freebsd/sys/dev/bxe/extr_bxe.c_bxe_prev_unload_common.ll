; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_mac_vals = type { i32*, i64, i32, i64, i32, i64, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Common unload Flow\0A\00", align 1
@MISC_REG_RESET_REG_1 = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_RST_BRB1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_RST_DORQ = common dso_local global i32 0, align 4
@DORQ_REG_NORM_CID_OFST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"UNDI previously loaded\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@NIG_REG_NIG_INT_STS_CLR_0 = common dso_local global i64 0, align 8
@BRB1_REG_NUM_OF_FULL_BLOCKS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"BRB still has 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to empty BRB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_prev_unload_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_prev_unload_common(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bxe_mac_vals, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %7, align 8
  store i32 1000, i32* %9, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = load i32, i32* @DBG_LOAD, align 4
  %14 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @memset(%struct.bxe_mac_vals* %8, i32 0, i32 64)
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = call i64 @bxe_prev_is_path_marked(%struct.bxe_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = call i32 @bxe_prev_mcp_done(%struct.bxe_softc* %20)
  store i32 %21, i32* %2, align 4
  br label %172

22:                                               ; preds = %1
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = load i64, i64* @MISC_REG_RESET_REG_1, align 8
  %25 = call i32 @REG_RD(%struct.bxe_softc* %23, i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_BRB1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %22
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = call i32 @bxe_prev_unload_close_mac(%struct.bxe_softc* %31, %struct.bxe_mac_vals* %8)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  %35 = call i32 @elink_set_rx_filter(i32* %34, i32 0)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_DORQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = load i64, i64* @DORQ_REG_NORM_CID_OFST, align 8
  %43 = call i32 @REG_RD(%struct.bxe_softc* %41, i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = load i32, i32* @DBG_LOAD, align 4
  %49 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %47, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %7, align 8
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = load i64, i64* @DORQ_REG_NORM_CID_OFST, align 8
  %53 = call i32 @REG_WR(%struct.bxe_softc* %51, i64 %52, i32 0)
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %55 = load i64, i64* @NIG_REG_NIG_INT_STS_CLR_0, align 8
  %56 = call i32 @REG_RD(%struct.bxe_softc* %54, i64 %55)
  br label %57

57:                                               ; preds = %46, %40
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %60 = load i64, i64* @BRB1_REG_NUM_OF_FULL_BLOCKS, align 8
  %61 = call i32 @REG_RD(%struct.bxe_softc* %59, i64 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %93, %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %68 = load i64, i64* @BRB1_REG_NUM_OF_FULL_BLOCKS, align 8
  %69 = call i32 @REG_RD(%struct.bxe_softc* %67, i64 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %95

73:                                               ; preds = %65
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %75 = load i32, i32* @DBG_LOAD, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %74, i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 1000, i32* %9, align 4
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %81
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %91 = call i32 @SC_PORT(%struct.bxe_softc* %90)
  %92 = call i32 @bxe_prev_unload_undi_inc(%struct.bxe_softc* %89, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %88, %85
  %94 = call i32 @DELAY(i32 10)
  br label %62

95:                                               ; preds = %72, %62
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %100 = call i32 @BLOGE(%struct.bxe_softc* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %22
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %104 = call i32 @bxe_reset_common(%struct.bxe_softc* %103)
  %105 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %110 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @REG_WR(%struct.bxe_softc* %109, i64 %111, i32 %113)
  br label %115

115:                                              ; preds = %108, %102
  %116 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %121 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @REG_WR(%struct.bxe_softc* %120, i64 %122, i32 %124)
  br label %126

126:                                              ; preds = %119, %115
  %127 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %132 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @REG_WR(%struct.bxe_softc* %131, i64 %133, i32 %135)
  br label %137

137:                                              ; preds = %130, %126
  %138 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %137
  %142 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %143 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @REG_WR(%struct.bxe_softc* %142, i64 %144, i32 %148)
  %150 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %151 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 4
  %154 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %8, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @REG_WR(%struct.bxe_softc* %150, i64 %153, i32 %157)
  br label %159

159:                                              ; preds = %141, %137
  %160 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @bxe_prev_mark_path(%struct.bxe_softc* %160, i64 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %167 = call i32 @bxe_prev_mcp_done(%struct.bxe_softc* %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %172

169:                                              ; preds = %159
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %171 = call i32 @bxe_prev_mcp_done(%struct.bxe_softc* %170)
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %165, %19
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.bxe_mac_vals*, i32, i32) #1

declare dso_local i64 @bxe_prev_is_path_marked(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_prev_mcp_done(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @bxe_prev_unload_close_mac(%struct.bxe_softc*, %struct.bxe_mac_vals*) #1

declare dso_local i32 @elink_set_rx_filter(i32*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @bxe_prev_unload_undi_inc(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_reset_common(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_prev_mark_path(%struct.bxe_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
