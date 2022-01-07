; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1631_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8*, i32 (%struct.pmac_therm*)*, i8*, i8* }
%struct.pmac_therm = type opaque
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.pmac_therm.0 = type opaque

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DS1631 Sensor Information\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"hwsensor-zone\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@ZERO_C_TO_K = common dso_local global i8* null, align 8
@ds1631_sensor_read = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Sensor Information\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@ds1631_sensor_sysctl = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ds1631_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1631_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ds1631_softc*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_ctx_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [40 x i8], align 16
  %12 = alloca [40 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call %struct.ds1631_softc* @device_get_softc(i32 %16)
  store %struct.ds1631_softc* %17, %struct.ds1631_softc** %5, align 8
  %18 = load i32, i32* %13, align 4
  %19 = call i64 @ofw_bus_get_node(i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %20)
  store %struct.sysctl_ctx_list* %21, %struct.sysctl_ctx_list** %8, align 8
  %22 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %23)
  %25 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %22, i32 %25, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %28, %struct.sysctl_oid** %7, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @OF_getprop(i64 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 4)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8 0, i8* %38, align 8
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @OF_getprop(i64 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %65

48:                                               ; preds = %39
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @OF_child(i64 %49)
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %61, %48
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @OF_getprop(i64 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %59, i32 8)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @OF_peer(i64 %62)
  store i64 %63, i64* %4, align 8
  br label %51

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %111

71:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %104, %71
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %72
  %81 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call signext i8 @tolower(i8 signext %88)
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %91
  store i8 %89, i8* %92, align 1
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isspace(i8 signext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %80
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %101
  store i8 95, i8* %102, align 1
  br label %103

103:                                              ; preds = %99, %80
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %72

107:                                              ; preds = %72
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %109
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %107, %68
  %112 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %113 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 8
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load i8*, i8** @ZERO_C_TO_K, align 8
  %120 = getelementptr i8, i8* %119, i64 400
  %121 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %122 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  store i8* %120, i8** %123, align 8
  %124 = load i8*, i8** @ZERO_C_TO_K, align 8
  %125 = getelementptr i8, i8* %124, i64 500
  %126 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %127 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store i8* %125, i8** %128, align 8
  br label %140

129:                                              ; preds = %111
  %130 = load i8*, i8** @ZERO_C_TO_K, align 8
  %131 = getelementptr i8, i8* %130, i64 300
  %132 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %133 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 4
  store i8* %131, i8** %134, align 8
  %135 = load i8*, i8** @ZERO_C_TO_K, align 8
  %136 = getelementptr i8, i8* %135, i64 500
  %137 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %138 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  store i8* %136, i8** %139, align 8
  br label %140

140:                                              ; preds = %129, %118
  %141 = load i64, i64* @ds1631_sensor_read, align 8
  %142 = inttoptr i64 %141 to i32 (%struct.pmac_therm.0*)*
  %143 = bitcast i32 (%struct.pmac_therm.0*)* %142 to i32 (%struct.pmac_therm*)*
  %144 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %145 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i32 (%struct.pmac_therm*)* %143, i32 (%struct.pmac_therm*)** %146, align 8
  %147 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %148 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %147, i32 0, i32 1
  %149 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_2__* %148)
  %150 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %151 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %152 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @sprintf(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %156 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %157 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %158 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %157)
  %159 = load i32, i32* @OID_AUTO, align 4
  %160 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %161 = load i32, i32* @CTLFLAG_RD, align 4
  %162 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %156, i32 %158, i32 %159, i8* %160, i32 %161, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %162, %struct.sysctl_oid** %6, align 8
  %163 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %164 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %165 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %164)
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLTYPE_INT, align 4
  %168 = load i32, i32* @CTLFLAG_RD, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @ds1631_sensor_sysctl, align 4
  %174 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %175 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %163, i32 %165, i32 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %171, i32 %172, i32 0, i32 %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %174)
  %176 = load %struct.ds1631_softc*, %struct.ds1631_softc** %5, align 8
  %177 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %176, i32 0, i32 0
  %178 = call i32 @config_intrhook_disestablish(i32* %177)
  ret void
}

declare dso_local %struct.ds1631_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @pmac_thermal_sensor_register(%struct.TYPE_2__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
