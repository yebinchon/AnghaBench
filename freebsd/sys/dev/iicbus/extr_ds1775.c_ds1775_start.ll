; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1775.c_ds1775_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1775.c_ds1775_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1775_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8*, i32 (%struct.pmac_therm*)*, i8*, i8* }
%struct.pmac_therm = type opaque
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.pmac_therm.0 = type opaque

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DS1775 Sensor Information\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"hwsensor-zone\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@ZERO_C_TO_K = common dso_local global i8* null, align 8
@ds1775_sensor_read = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Sensor Information\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@ds1775_sensor_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ds1775_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1775_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds1775_softc*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [40 x i8], align 16
  %11 = alloca [40 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = call %struct.ds1775_softc* @device_get_softc(i32 %15)
  store %struct.ds1775_softc* %16, %struct.ds1775_softc** %4, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %19)
  store %struct.sysctl_ctx_list* %20, %struct.sysctl_ctx_list** %7, align 8
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %22)
  %24 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %21, i32 %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %27, %struct.sysctl_oid** %6, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i64 @OF_getprop(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 4)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8 0, i8* %37, align 8
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @OF_getprop(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 8)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %50 = call i32 @strcpy(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %91

51:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %52
  %61 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call signext i8 @tolower(i8 signext %68)
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 %71
  store i8 %69, i8* %72, align 1
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isspace(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %60
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 %81
  store i8 95, i8* %82, align 1
  br label %83

83:                                               ; preds = %79, %60
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %52

87:                                               ; preds = %52
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %87, %48
  %92 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 8
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load i8*, i8** @ZERO_C_TO_K, align 8
  %100 = getelementptr i8, i8* %99, i64 500
  %101 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %102 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @ZERO_C_TO_K, align 8
  %105 = getelementptr i8, i8* %104, i64 600
  %106 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i8* %105, i8** %108, align 8
  br label %120

109:                                              ; preds = %91
  %110 = load i8*, i8** @ZERO_C_TO_K, align 8
  %111 = getelementptr i8, i8* %110, i64 300
  %112 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** @ZERO_C_TO_K, align 8
  %116 = getelementptr i8, i8* %115, i64 600
  %117 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i8* %116, i8** %119, align 8
  br label %120

120:                                              ; preds = %109, %98
  %121 = load i64, i64* @ds1775_sensor_read, align 8
  %122 = inttoptr i64 %121 to i32 (%struct.pmac_therm.0*)*
  %123 = bitcast i32 (%struct.pmac_therm.0*)* %122 to i32 (%struct.pmac_therm*)*
  %124 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %125 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  store i32 (%struct.pmac_therm*)* %123, i32 (%struct.pmac_therm*)** %126, align 8
  %127 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %127, i32 0, i32 1
  %129 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_2__* %128)
  %130 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %131 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %132 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @sprintf(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %137 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %138 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %137)
  %139 = load i32, i32* @OID_AUTO, align 4
  %140 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %141 = load i32, i32* @CTLFLAG_RD, align 4
  %142 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %136, i32 %138, i32 %139, i8* %140, i32 %141, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sysctl_oid* %142, %struct.sysctl_oid** %5, align 8
  %143 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %144 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %145 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %144)
  %146 = load i32, i32* @OID_AUTO, align 4
  %147 = load i32, i32* @CTLTYPE_INT, align 4
  %148 = load i32, i32* @CTLFLAG_RD, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @ds1775_sensor_sysctl, align 4
  %154 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %155 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %143, i32 %145, i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %151, i32 %152, i32 0, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %154)
  %156 = load %struct.ds1775_softc*, %struct.ds1775_softc** %4, align 8
  %157 = getelementptr inbounds %struct.ds1775_softc, %struct.ds1775_softc* %156, i32 0, i32 0
  %158 = call i32 @config_intrhook_disestablish(i32* %157)
  ret void
}

declare dso_local %struct.ds1775_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

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
