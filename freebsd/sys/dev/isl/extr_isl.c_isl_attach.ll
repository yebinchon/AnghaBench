; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isl/extr_isl.c_isl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isl/extr_isl.c_isl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ISL read lock\00", align 1
@CMD1_MASK_ALS_ONCE = common dso_local global i32 0, align 4
@CMD1_MASK_IR_ONCE = common dso_local global i32 0, align 4
@CMD1_MASK_PROX_ONCE = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"als\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ISL_METHOD_ALS = common dso_local global i32 0, align 4
@isl_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Current ALS sensor read-out\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@ISL_METHOD_IR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Current IR sensor read-out\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"prox\00", align 1
@ISL_METHOD_PROX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Current proximity sensor read-out\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@ISL_METHOD_RESOLUTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Current proximity sensor resolution\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@ISL_METHOD_RANGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Current proximity sensor range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.isl_softc* @device_get_softc(i32 %10)
  store %struct.isl_softc* %11, %struct.isl_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %14 = getelementptr inbounds %struct.isl_softc, %struct.isl_softc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @init_device(i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %110

20:                                               ; preds = %1
  %21 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %22 = getelementptr inbounds %struct.isl_softc, %struct.isl_softc* %21, i32 0, i32 0
  %23 = call i32 @sx_init(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %24)
  store %struct.sysctl_ctx_list* %25, %struct.sysctl_ctx_list** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %26)
  store %struct.sysctl_oid* %27, %struct.sysctl_oid** %6, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @CMD1_MASK_ALS_ONCE, align 4
  %30 = call i64 @isl_read_sensor(i32 %28, i32 %29)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @CMD1_MASK_IR_ONCE, align 4
  %35 = call i64 @isl_read_sensor(i32 %33, i32 %34)
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CMD1_MASK_PROX_ONCE, align 4
  %40 = call i64 @isl_read_sensor(i32 %38, i32 %39)
  %41 = icmp sge i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %20
  %46 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %47 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %48 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %47)
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLTYPE_INT, align 4
  %51 = load i32, i32* @CTLFLAG_RD, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %54 = load i32, i32* @ISL_METHOD_ALS, align 4
  %55 = load i32, i32* @isl_sysctl, align 4
  %56 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %46, i32 %48, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.isl_softc* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %45, %20
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %63 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLTYPE_INT, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %69 = load i32, i32* @ISL_METHOD_IR, align 4
  %70 = load i32, i32* @isl_sysctl, align 4
  %71 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, i32 %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %67, %struct.isl_softc* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %60, %57
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %77 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %78 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %77)
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = load i32, i32* @CTLTYPE_INT, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %84 = load i32, i32* @ISL_METHOD_PROX, align 4
  %85 = load i32, i32* @isl_sysctl, align 4
  %86 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %76, i32 %78, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %82, %struct.isl_softc* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %75, %72
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %89 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %90 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %89)
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLTYPE_INT, align 4
  %93 = load i32, i32* @CTLFLAG_RD, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %96 = load i32, i32* @ISL_METHOD_RESOLUTION, align 4
  %97 = load i32, i32* @isl_sysctl, align 4
  %98 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %88, i32 %90, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %94, %struct.isl_softc* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %99 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %100 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %101 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %100)
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLTYPE_INT, align 4
  %104 = load i32, i32* @CTLFLAG_RD, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.isl_softc*, %struct.isl_softc** %4, align 8
  %107 = load i32, i32* @ISL_METHOD_RANGE, align 4
  %108 = load i32, i32* @isl_sysctl, align 4
  %109 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %99, i32 %101, i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %105, %struct.isl_softc* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %87, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.isl_softc* @device_get_softc(i32) #1

declare dso_local i64 @init_device(i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i64 @isl_read_sensor(i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.isl_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
