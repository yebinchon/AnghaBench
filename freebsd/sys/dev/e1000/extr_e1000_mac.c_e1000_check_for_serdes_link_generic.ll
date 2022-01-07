; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_check_for_serdes_link_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_check_for_serdes_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"e1000_check_for_serdes_link_generic\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_RXCW = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"NOT Rx'ing /C/, disable AutoNeg and force link.\0A\00", align 1
@E1000_TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Rx'ing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1
@E1000_RXCW_SYNCH = common dso_local global i32 0, align 4
@E1000_RXCW_IV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"SERDES: Link up - forced.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"SERDES: Link down - force failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"SERDES: Link up - autoneg completed successfully.\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"SERDES: Link down - invalid codewords detected in autoneg.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SERDES: Link down - no sync.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"SERDES: Link down - autoneg failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_for_serdes_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = load i32, i32* @E1000_CTRL, align 4
  %14 = call i32 @E1000_READ_REG(%struct.e1000_hw* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = load i32, i32* @E1000_STATUS, align 4
  %17 = call i32 @E1000_READ_REG(%struct.e1000_hw* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = load i32, i32* @E1000_RXCW, align 4
  %20 = call i32 @E1000_READ_REG(%struct.e1000_hw* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @E1000_STATUS_LU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %71, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @E1000_RXCW_C, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %25
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %39, i64* %2, align 8
  br label %188

40:                                               ; preds = %30
  %41 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i32, i32* @E1000_TXCW, align 4
  %44 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @E1000_TXCW_ANE, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %42, i32 %43, i32 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = load i32, i32* @E1000_CTRL, align 4
  %53 = call i32 @E1000_READ_REG(%struct.e1000_hw* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @E1000_CTRL_SLU, align 4
  %55 = load i32, i32* @E1000_CTRL_FD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = load i32, i32* @E1000_CTRL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %59, i32 %60, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = call i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %40
  %68 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %2, align 8
  br label %188

70:                                               ; preds = %40
  br label %134

71:                                               ; preds = %25, %1
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @E1000_CTRL_SLU, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @E1000_RXCW_C, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = load i32, i32* @E1000_TXCW, align 4
  %85 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %83, i32 %84, i32 %87)
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = load i32, i32* @E1000_CTRL, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @E1000_CTRL_SLU, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %89, i32 %90, i32 %94)
  %96 = load i8*, i8** @TRUE, align 8
  %97 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %98 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %133

99:                                               ; preds = %76, %71
  %100 = load i32, i32* @E1000_TXCW_ANE, align 4
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = load i32, i32* @E1000_TXCW, align 4
  %103 = call i32 @E1000_READ_REG(%struct.e1000_hw* %101, i32 %102)
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %99
  %107 = call i32 @usec_delay(i32 10)
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = load i32, i32* @E1000_RXCW, align 4
  %110 = call i32 @E1000_READ_REG(%struct.e1000_hw* %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %106
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @E1000_RXCW_IV, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i8*, i8** @TRUE, align 8
  %122 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %115
  br label %131

126:                                              ; preds = %106
  %127 = load i8*, i8** @FALSE, align 8
  %128 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %126, %125
  br label %132

132:                                              ; preds = %131, %99
  br label %133

133:                                              ; preds = %132, %81
  br label %134

134:                                              ; preds = %133, %70
  %135 = load i32, i32* @E1000_TXCW_ANE, align 4
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %137 = load i32, i32* @E1000_TXCW, align 4
  %138 = call i32 @E1000_READ_REG(%struct.e1000_hw* %136, i32 %137)
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %186

141:                                              ; preds = %134
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %143 = load i32, i32* @E1000_STATUS, align 4
  %144 = call i32 @E1000_READ_REG(%struct.e1000_hw* %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @E1000_STATUS_LU, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %180

149:                                              ; preds = %141
  %150 = call i32 @usec_delay(i32 10)
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = load i32, i32* @E1000_RXCW, align 4
  %153 = call i32 @E1000_READ_REG(%struct.e1000_hw* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %149
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @E1000_RXCW_IV, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load i8*, i8** @TRUE, align 8
  %165 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %166 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %173

168:                                              ; preds = %158
  %169 = load i8*, i8** @FALSE, align 8
  %170 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %171 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %163
  br label %179

174:                                              ; preds = %149
  %175 = load i8*, i8** @FALSE, align 8
  %176 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %177 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %179

179:                                              ; preds = %174, %173
  br label %185

180:                                              ; preds = %141
  %181 = load i8*, i8** @FALSE, align 8
  %182 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %183 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %185

185:                                              ; preds = %180, %179
  br label %186

186:                                              ; preds = %185, %134
  %187 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %187, i64* %2, align 8
  br label %188

188:                                              ; preds = %186, %67, %35
  %189 = load i64, i64* %2, align 8
  ret i64 %189
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
