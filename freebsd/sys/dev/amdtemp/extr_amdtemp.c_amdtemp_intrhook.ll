; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_intrhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_intrhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_softc = type { i32, i32, %struct.TYPE_2__, i32** }
%struct.TYPE_2__ = type { i32* }
%struct.sysctl_ctx_list = type { i32 }

@root_bus = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"nexus\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@CORE0 = common dso_local global i32 0, align 4
@CORE1 = common dso_local global i32 0, align 4
@CORE0_SENSOR0 = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@amdtemp_sysctl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Current temparature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdtemp_intrhook(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdtemp_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.amdtemp_softc* @device_get_softc(i32* %13)
  store %struct.amdtemp_softc* %14, %struct.amdtemp_softc** %3, align 8
  %15 = load i32*, i32** @root_bus, align 8
  %16 = call i32* @device_find_child(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @device_find_child(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %87, %1
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %22 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %19
  %26 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %87

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @device_get_unit(i32* %37)
  %39 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %40 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32* @device_find_child(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %86

48:                                               ; preds = %35
  %49 = load i32*, i32** %7, align 8
  %50 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32* %49)
  store %struct.sysctl_ctx_list* %50, %struct.sysctl_ctx_list** %4, align 8
  %51 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %52 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @CORE0, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @CORE1, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  br label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @CORE0_SENSOR0, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %9, align 4
  %68 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @device_get_sysctl_tree(i32* %69)
  %71 = call i32 @SYSCTL_CHILDREN(i32 %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLTYPE_INT, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @amdtemp_sysctl, align 4
  %79 = call i32* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %68, i32 %71, i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %81 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* %79, i32** %85, align 8
  br label %86

86:                                               ; preds = %66, %35
  br label %87

87:                                               ; preds = %86, %34
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %19

90:                                               ; preds = %19
  %91 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %92 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %3, align 8
  %98 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %97, i32 0, i32 2
  %99 = call i32 @config_intrhook_disestablish(%struct.TYPE_2__* %98)
  br label %100

100:                                              ; preds = %96, %90
  ret void
}

declare dso_local %struct.amdtemp_softc* @device_get_softc(i32*) #1

declare dso_local i32* @device_find_child(i32*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32*) #1

declare dso_local i32* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32*) #1

declare dso_local i32 @config_intrhook_disestablish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
