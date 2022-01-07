; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_max6690.c_max6690_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6690_softc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%d sensors detected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"WARNING: No MAX6690 sensors detected!\0A\00", align 1
@M_MAX6690 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"MAX6690 Sensor Information\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Sensor Information\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@max6690_sensor_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"Sensors\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Location : %s ID: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @max6690_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max6690_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.max6690_softc*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call %struct.max6690_softc* @device_get_softc(i32 %14)
  store %struct.max6690_softc* %15, %struct.max6690_softc** %3, align 8
  %16 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %17 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i8* @max6690_fill_sensor_prop(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %22 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %25 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %29 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %37 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @M_MAX6690, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.TYPE_4__* @malloc(i32 %41, i32 %42, i32 %45)
  %47 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %48 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %47, i32 0, i32 2
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %49)
  store %struct.sysctl_ctx_list* %50, %struct.sysctl_ctx_list** %6, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %52)
  %54 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %51, i32 %54, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %57, %struct.sysctl_oid** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i8* @max6690_fill_sensor_prop(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %62 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %78, %35
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %66 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %71 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_3__* %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %63

81:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %169, %81
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %85 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %172

88:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %131, %88
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %92 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = icmp slt i32 %90, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %89
  %103 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %104 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call signext i8 @tolower(i8 signext %115)
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %118
  store i8 %116, i8* %119, align 1
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @isspace(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %102
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %128
  store i8 95, i8* %129, align 1
  br label %130

130:                                              ; preds = %126, %102
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %89

134:                                              ; preds = %89
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %136
  store i8 0, i8* %137, align 1
  %138 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %139 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %140 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @sprintf(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %149 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %150 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %151 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %150)
  %152 = load i32, i32* @OID_AUTO, align 4
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %154 = load i32, i32* @CTLFLAG_RD, align 4
  %155 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %149, i32 %151, i32 %152, i8* %153, i32 %154, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sysctl_oid* %155, %struct.sysctl_oid** %4, align 8
  %156 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %157 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %158 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %157)
  %159 = load i32, i32* @OID_AUTO, align 4
  %160 = load i32, i32* @CTLTYPE_INT, align 4
  %161 = load i32, i32* @CTLFLAG_RD, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %9, align 4
  %165 = srem i32 %164, 2
  %166 = load i32, i32* @max6690_sensor_sysctl, align 4
  %167 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %168 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %156, i32 %158, i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %162, i32 %163, i32 %165, i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %134
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %82

172:                                              ; preds = %82
  %173 = load i64, i64* @bootverbose, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %172
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (i32, i8*, ...) @device_printf(i32 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %204, %175
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %181 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %207

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %187 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %196 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %194, i32 %202)
  br label %204

204:                                              ; preds = %184
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %178

207:                                              ; preds = %178
  br label %208

208:                                              ; preds = %207, %172
  %209 = load %struct.max6690_softc*, %struct.max6690_softc** %3, align 8
  %210 = getelementptr inbounds %struct.max6690_softc, %struct.max6690_softc* %209, i32 0, i32 1
  %211 = call i32 @config_intrhook_disestablish(i32* %210)
  ret void
}

declare dso_local %struct.max6690_softc* @device_get_softc(i32) #1

declare dso_local i8* @max6690_fill_sensor_prop(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @pmac_thermal_sensor_register(%struct.TYPE_3__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
