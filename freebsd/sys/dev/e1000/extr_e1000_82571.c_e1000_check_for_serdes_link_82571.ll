; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_check_for_serdes_link_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_check_for_serdes_link_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i8* }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"e1000_check_for_serdes_link_82571\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_RXCW = common dso_local global i32 0, align 4
@E1000_RXCW_SYNCH = common dso_local global i32 0, align 4
@E1000_RXCW_IV = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"AN_UP     -> AN_PROG\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@E1000_RXCW_C = common dso_local global i32 0, align 4
@E1000_TXCW = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"FORCED_UP -> AN_PROG\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"AN_PROG   -> AN_UP\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"AN_PROG   -> DOWN\0A\00", align 1
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Error config flow control\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"AN_PROG   -> FORCED_UP\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"DOWN      -> AN_PROG\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ANYSTATE  -> DOWN\0A\00", align 1
@AN_RETRY_COUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"ANYSTATE  -> AN_PROG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_serdes_link_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_serdes_link_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_mac_info* %11, %struct.e1000_mac_info** %3, align 8
  %12 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_CTRL, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_STATUS, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = load i32, i32* @E1000_RXCW, align 4
  %22 = call i32 @E1000_READ_REG(%struct.e1000_hw* %20, i32 %21)
  %23 = call i32 @usec_delay(i32 10)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_RXCW, align 4
  %26 = call i32 @E1000_READ_REG(%struct.e1000_hw* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %164

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @E1000_RXCW_IV, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %164, label %36

36:                                               ; preds = %31
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %143 [
    i32 131, label %40
    i32 128, label %57
    i32 130, label %87
    i32 129, label %142
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @E1000_STATUS_LU, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 0
  store i32 130, i32* %47, align 8
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %56

52:                                               ; preds = %40
  %53 = load i8*, i8** @TRUE, align 8
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %45
  br label %163

57:                                               ; preds = %36
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @E1000_RXCW_C, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = load i32, i32* @E1000_TXCW, align 4
  %65 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %63, i32 %64, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = load i32, i32* @E1000_CTRL, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @E1000_CTRL_SLU, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %69, i32 %70, i32 %74)
  %76 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %76, i32 0, i32 0
  store i32 130, i32* %77, align 8
  %78 = load i8*, i8** @FALSE, align 8
  %79 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %86

82:                                               ; preds = %57
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %62
  br label %163

87:                                               ; preds = %36
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @E1000_RXCW_C, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @E1000_STATUS_LU, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 0
  store i32 131, i32* %99, align 8
  %100 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %92
  %105 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %105, i32 0, i32 0
  store i32 129, i32* %106, align 8
  %107 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %97
  br label %141

109:                                              ; preds = %87
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = load i32, i32* @E1000_TXCW, align 4
  %112 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @E1000_TXCW_ANE, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %110, i32 %111, i32 %117)
  %119 = load i32, i32* @E1000_CTRL_SLU, align 4
  %120 = load i32, i32* @E1000_CTRL_FD, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %125 = load i32, i32* @E1000_CTRL, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %124, i32 %125, i32 %126)
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %129 = call i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %109
  %133 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %163

134:                                              ; preds = %109
  %135 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %136 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %135, i32 0, i32 0
  store i32 128, i32* %136, align 8
  %137 = load i8*, i8** @TRUE, align 8
  %138 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %141

141:                                              ; preds = %134, %108
  br label %163

142:                                              ; preds = %36
  br label %143

143:                                              ; preds = %36, %142
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %145 = load i32, i32* @E1000_TXCW, align 4
  %146 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %144, i32 %145, i32 %148)
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %151 = load i32, i32* @E1000_CTRL, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @E1000_CTRL_SLU, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %150, i32 %151, i32 %155)
  %157 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %158 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %157, i32 0, i32 0
  store i32 130, i32* %158, align 8
  %159 = load i8*, i8** @FALSE, align 8
  %160 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %163

163:                                              ; preds = %143, %141, %132, %86, %56
  br label %235

164:                                              ; preds = %31, %1
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = load i8*, i8** @FALSE, align 8
  %171 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %172 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %173, i32 0, i32 0
  store i32 129, i32* %174, align 8
  %175 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %234

176:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %209, %176
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @AN_RETRY_COUNT, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %212

181:                                              ; preds = %177
  %182 = call i32 @usec_delay(i32 10)
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %184 = load i32, i32* @E1000_RXCW, align 4
  %185 = call i32 @E1000_READ_REG(%struct.e1000_hw* %183, i32 %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @E1000_RXCW_C, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %209

196:                                              ; preds = %190, %181
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @E1000_RXCW_IV, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i8*, i8** @FALSE, align 8
  %203 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %204 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  %205 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %206 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %205, i32 0, i32 0
  store i32 129, i32* %206, align 8
  %207 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %212

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %195
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %177

212:                                              ; preds = %201, %177
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @AN_RETRY_COUNT, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %218 = load i32, i32* @E1000_TXCW, align 4
  %219 = call i32 @E1000_READ_REG(%struct.e1000_hw* %217, i32 %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* @E1000_TXCW_ANE, align 4
  %221 = load i32, i32* %7, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %224 = load i32, i32* @E1000_TXCW, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %223, i32 %224, i32 %225)
  %227 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %228 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %227, i32 0, i32 0
  store i32 130, i32* %228, align 8
  %229 = load i8*, i8** @FALSE, align 8
  %230 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %231 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  %232 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %233

233:                                              ; preds = %216, %212
  br label %234

234:                                              ; preds = %233, %169
  br label %235

235:                                              ; preds = %234, %163
  %236 = load i32, i32* %9, align 4
  ret i32 %236
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
