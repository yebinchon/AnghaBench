; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pbf_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pbf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@PBF_REG_DISABLE_NEW_TASK_PROC_P0 = common dso_local global i64 0, align 8
@PBF_REG_P0_INIT_CRD = common dso_local global i64 0, align 8
@PBF_REG_P0_CREDIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"init_crd 0x%x  crd 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BUG! init_crd 0x%x != crd 0x%x\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_RX = common dso_local global i64 0, align 8
@ELINK_SPEED_10 = common dso_local global i64 0, align 8
@ELINK_SPEED_100 = common dso_local global i64 0, align 8
@ELINK_SPEED_1000 = common dso_local global i64 0, align 8
@ELINK_SPEED_2500 = common dso_local global i64 0, align 8
@PBF_REG_P0_PAUSE_ENABLE = common dso_local global i64 0, align 8
@PBF_REG_P0_ARB_THRSH = common dso_local global i64 0, align 8
@ELINK_ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ELINK_ETH_OVREHEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid line_speed 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PBF updated to speed %d credit %d\0A\00", align 1
@PBF_REG_INIT_P0 = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, i64, i64)* @elink_pbf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_pbf_update(%struct.elink_params* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 1
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %15, align 8
  store %struct.bxe_softc* %16, %struct.bxe_softc** %8, align 8
  %17 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  store i64 1000, i64* %12, align 8
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %21 = load i64, i64* @PBF_REG_DISABLE_NEW_TASK_PROC_P0, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @REG_WR(%struct.bxe_softc* %20, i64 %25, i32 1)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %28 = load i64, i64* @PBF_REG_P0_INIT_CRD, align 8
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i64 @REG_RD(%struct.bxe_softc* %27, i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %35 = load i64, i64* @PBF_REG_P0_CREDIT, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i64 @REG_RD(%struct.bxe_softc* %34, i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %54, %3
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  %55 = call i32 @DELAY(i32 5000)
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %57 = load i64, i64* @PBF_REG_P0_CREDIT, align 8
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i64 @REG_RD(%struct.bxe_softc* %56, i64 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %12, align 8
  br label %45

65:                                               ; preds = %52
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %67 = load i64, i64* @PBF_REG_P0_CREDIT, align 8
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = call i64 @REG_RD(%struct.bxe_softc* %66, i64 %71)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %188

82:                                               ; preds = %65
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @ELINK_FLOW_CTRL_RX, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @ELINK_SPEED_10, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @ELINK_SPEED_100, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @ELINK_SPEED_1000, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @ELINK_SPEED_2500, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99, %95, %91, %87, %82
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %105 = load i64, i64* @PBF_REG_P0_PAUSE_ENABLE, align 8
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %106, 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = call i32 @REG_WR(%struct.bxe_softc* %104, i64 %109, i32 1)
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %112 = load i64, i64* @PBF_REG_P0_ARB_THRSH, align 8
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %112, %115
  %117 = call i32 @REG_WR(%struct.bxe_softc* %111, i64 %116, i32 0)
  store i64 778, i64* %10, align 8
  br label %151

118:                                              ; preds = %99
  %119 = load i32, i32* @ELINK_ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %120 = load i32, i32* @ELINK_ETH_OVREHEAD, align 4
  %121 = add nsw i32 %119, %120
  %122 = sdiv i32 %121, 16
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %13, align 8
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %125 = load i64, i64* @PBF_REG_P0_PAUSE_ENABLE, align 8
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = call i32 @REG_WR(%struct.bxe_softc* %124, i64 %129, i32 0)
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %132 = load i64, i64* @PBF_REG_P0_ARB_THRSH, align 8
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %132, %135
  %137 = load i64, i64* %13, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @REG_WR(%struct.bxe_softc* %131, i64 %136, i32 %138)
  %140 = load i64, i64* %7, align 8
  switch i64 %140, label %145 [
    i64 128, label %141
  ]

141:                                              ; preds = %118
  %142 = load i64, i64* %13, align 8
  %143 = add nsw i64 %142, 553
  %144 = sub nsw i64 %143, 22
  store i64 %144, i64* %10, align 8
  br label %150

145:                                              ; preds = %118
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %149, i32* %4, align 4
  br label %188

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %103
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %153 = load i64, i64* @PBF_REG_P0_INIT_CRD, align 8
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  %158 = load i64, i64* %10, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @REG_WR(%struct.bxe_softc* %152, i64 %157, i32 %159)
  %161 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %10, align 8
  %164 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %161, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %162, i64 %163)
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %166 = load i64, i64* @PBF_REG_INIT_P0, align 8
  %167 = load i32, i32* %9, align 4
  %168 = mul nsw i32 %167, 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %166, %169
  %171 = call i32 @REG_WR(%struct.bxe_softc* %165, i64 %170, i32 1)
  %172 = call i32 @DELAY(i32 5000)
  %173 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %174 = load i64, i64* @PBF_REG_INIT_P0, align 8
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 %175, 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %174, %177
  %179 = call i32 @REG_WR(%struct.bxe_softc* %173, i64 %178, i32 0)
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %181 = load i64, i64* @PBF_REG_DISABLE_NEW_TASK_PROC_P0, align 8
  %182 = load i32, i32* %9, align 4
  %183 = mul nsw i32 %182, 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %181, %184
  %186 = call i32 @REG_WR(%struct.bxe_softc* %180, i64 %185, i32 0)
  %187 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %151, %145, %76
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i64, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
