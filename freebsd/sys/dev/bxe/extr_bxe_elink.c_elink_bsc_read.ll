; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_bsc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_bsc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"invalid xfer_cnt %d. Max is 16 bytes\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@MCP_REG_MCPR_IMC_COMMAND = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_ENABLE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_IMC_SLAVE_CONTROL = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_WRITE_OP = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_OPERATION_BITSHIFT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"wr 0 byte timed out after %d try\0A\00", align 1
@ELINK_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_READ_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rd op timed out after %d try\0A\00", align 1
@MCP_REG_MCPR_IMC_DATAREG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_softc*, i32, i32, i32, i32, i32*)* @elink_bsc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_bsc_read(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp sgt i32 %18, 16
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %24, i64* %7, align 8
  br label %156

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 16, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %29 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %30 = call i32 @REG_RD(%struct.bxe_softc* %28, i64 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %32 = load i32, i32* %14, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %14, align 4
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %35 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @REG_WR(%struct.bxe_softc* %34, i64 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 16
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %43 = load i64, i64* @MCP_REG_MCPR_IMC_SLAVE_CONTROL, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @REG_WR(%struct.bxe_softc* %42, i64 %43, i32 %44)
  %46 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %47 = load i32, i32* @MCPR_IMC_COMMAND_WRITE_OP, align 4
  %48 = load i32, i32* @MCPR_IMC_COMMAND_OPERATION_BITSHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  store i32 %54, i32* %14, align 4
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %56 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @REG_WR(%struct.bxe_softc* %55, i64 %56, i32 %57)
  store i32 0, i32* %15, align 4
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %60 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %61 = call i32 @REG_RD(%struct.bxe_softc* %59, i64 %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %81, %25
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = and i32 %65, 3
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = call i32 @DELAY(i32 10)
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %71 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %72 = call i32 @REG_RD(%struct.bxe_softc* %70, i64 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = icmp sgt i32 %73, 1000
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i64, i64* @ELINK_STATUS_TIMEOUT, align 8
  store i64 %80, i64* %16, align 8
  br label %82

81:                                               ; preds = %68
  br label %62

82:                                               ; preds = %76, %62
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* @ELINK_STATUS_TIMEOUT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* %16, align 8
  store i64 %87, i64* %7, align 8
  br label %156

88:                                               ; preds = %82
  %89 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %90 = load i32, i32* @MCPR_IMC_COMMAND_READ_OP, align 4
  %91 = load i32, i32* @MCPR_IMC_COMMAND_OPERATION_BITSHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = or i32 %89, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %101 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @REG_WR(%struct.bxe_softc* %100, i64 %101, i32 %102)
  store i32 0, i32* %15, align 4
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %105 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %106 = call i32 @REG_RD(%struct.bxe_softc* %104, i64 %105)
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %126, %88
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT, align 4
  %110 = ashr i32 %108, %109
  %111 = and i32 %110, 3
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = call i32 @DELAY(i32 10)
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %116 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %117 = call i32 @REG_RD(%struct.bxe_softc* %115, i64 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  %120 = icmp sgt i32 %118, 1000
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i64, i64* @ELINK_STATUS_TIMEOUT, align 8
  store i64 %125, i64* %16, align 8
  br label %127

126:                                              ; preds = %113
  br label %107

127:                                              ; preds = %121, %107
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* @ELINK_STATUS_TIMEOUT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i64, i64* %16, align 8
  store i64 %132, i64* %7, align 8
  br label %156

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = ashr i32 %134, 2
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %151, %133
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 4
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %141 = load i64, i64* @MCP_REG_MCPR_IMC_DATAREG0, align 8
  %142 = load i32, i32* %15, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %141, %144
  %146 = call i32 @REG_RD(%struct.bxe_softc* %140, i64 %145)
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %136

154:                                              ; preds = %136
  %155 = load i64, i64* %16, align 8
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %154, %131, %86, %20
  %157 = load i64, i64* %7, align 8
  ret i64 %157
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
