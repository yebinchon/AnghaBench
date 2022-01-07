; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_port_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_port_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI_LINK_MEDIUM_FC = common dso_local global i32 0, align 4
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_port_control = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"CONFIG_LINK failed\0A\00", align 1
@FC_LINK_SPEED_10G = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"Cannot bring up link.  Please update firmware to %s or later (current version is %s)\0A\00", align 1
@OCS_MIN_FW_VER_LANCER = common dso_local global i32 0, align 4
@OCS_MIN_FW_VER_SKYHAWK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"INIT_LINK failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"DOWN_LINK failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unhandled control %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_port_control(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %215 [
    i32 130, label %20
    i32 128, label %163
    i32 129, label %207
  ]

20:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @SLI_LINK_MEDIUM_FC, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = call i32 @sli_get_medium(%struct.TYPE_15__* %23)
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %31 = load i32, i32* @OCS_M_NOWAIT, align 4
  %32 = call i32* @ocs_malloc(i32 %29, i32 %30, i32 %31)
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %40, i32* %6, align 4
  br label %223

41:                                               ; preds = %26
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %46 = call i32 @sli_cmd_config_link(%struct.TYPE_15__* %43, i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %52 = load i32, i32* @ocs_hw_cb_port_control, align 4
  %53 = call i32 @ocs_hw_command(%struct.TYPE_14__* %49, i32* %50, i32 %51, i32 %52, i32* null)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %64 = call i32 @ocs_free(i32 %61, i32* %62, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %221

69:                                               ; preds = %54
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i64, i64* %9, align 8
  %75 = and i64 %74, 255
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  br label %79

77:                                               ; preds = %20
  %78 = load i32, i32* @FC_LINK_SPEED_10G, align 4
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %77, %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %79
  %86 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OCS_MIN_FW_VER_LANCER, align 4
  %97 = call i32 @OCS_FW_VER_STR(i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = call i64 @sli_get_fw_name(%struct.TYPE_15__* %99, i32 0)
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %95, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %97, i8* %101)
  br label %114

103:                                              ; preds = %85
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @OCS_MIN_FW_VER_SKYHAWK, align 4
  %108 = call i32 @OCS_FW_VER_STR(i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = call i64 @sli_get_fw_name(%struct.TYPE_15__* %110, i32 0)
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %106, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %108, i8* %112)
  br label %114

114:                                              ; preds = %103, %92
  %115 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %115, i32* %6, align 4
  br label %223

116:                                              ; preds = %79
  %117 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %117, i32* %12, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %122 = load i32, i32* @OCS_M_NOWAIT, align 4
  %123 = call i32* @ocs_malloc(i32 %120, i32 %121, i32 %122)
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %131, i32* %6, align 4
  br label %223

132:                                              ; preds = %116
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @sli_cmd_init_link(%struct.TYPE_15__* %134, i32* %135, i32 %136, i32 %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %145 = load i32, i32* @ocs_hw_cb_port_control, align 4
  %146 = call i32 @ocs_hw_command(%struct.TYPE_14__* %142, i32* %143, i32 %144, i32 %145, i32* null)
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %141, %132
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %157 = call i32 @ocs_free(i32 %154, i32* %155, i32 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %151, %147
  br label %221

163:                                              ; preds = %5
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %168 = load i32, i32* @OCS_M_NOWAIT, align 4
  %169 = call i32* @ocs_malloc(i32 %166, i32 %167, i32 %168)
  store i32* %169, i32** %17, align 8
  %170 = load i32*, i32** %17, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %163
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %175, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %177 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %177, i32* %6, align 4
  br label %223

178:                                              ; preds = %163
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32*, i32** %17, align 8
  %182 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %183 = call i32 @sli_cmd_down_link(%struct.TYPE_15__* %180, i32* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %187 = load i32*, i32** %17, align 8
  %188 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %189 = load i32, i32* @ocs_hw_cb_port_control, align 4
  %190 = call i32 @ocs_hw_command(%struct.TYPE_14__* %186, i32* %187, i32 %188, i32 %189, i32* null)
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %185, %178
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %17, align 8
  %200 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %201 = call i32 @ocs_free(i32 %198, i32* %199, i32 %200)
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %204, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %206

206:                                              ; preds = %195, %191
  br label %221

207:                                              ; preds = %5
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = load i64, i64* %9, align 8
  %210 = trunc i64 %209 to i32
  %211 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i8*, i8** %11, align 8
  %214 = call i32 @ocs_hw_set_linkcfg(%struct.TYPE_14__* %208, i32 %210, i32 %211, i32 %212, i8* %213)
  store i32 %214, i32* %12, align 4
  br label %221

215:                                              ; preds = %5
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @ocs_log_test(i32 %218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %215, %207, %206, %162, %58
  %222 = load i32, i32* %12, align 4
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %221, %172, %126, %114, %35
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @sli_get_medium(%struct.TYPE_15__*) #1

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i32 @sli_cmd_config_link(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ocs_hw_command(%struct.TYPE_14__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

declare dso_local i32 @OCS_FW_VER_STR(i32) #1

declare dso_local i64 @sli_get_fw_name(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sli_cmd_init_link(%struct.TYPE_15__*, i32*, i32, i32, i32) #1

declare dso_local i32 @sli_cmd_down_link(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ocs_hw_set_linkcfg(%struct.TYPE_14__*, i32, i32, i32, i8*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
