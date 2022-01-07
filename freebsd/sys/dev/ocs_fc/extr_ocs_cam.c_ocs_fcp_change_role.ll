; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_fcp_change_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_fcp_change_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@KNOB_ROLE_NONE = common dso_local global i64 0, align 8
@KNOB_ROLE_INITIATOR = common dso_local global i64 0, align 8
@KNOB_ROLE_TARGET = common dso_local global i64 0, align 8
@OCS_XPORT_PORT_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"port offline failed : %d\0A\00", align 1
@OCS_XPORT_PORT_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"port online failed : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ocs_softc*, %struct.TYPE_7__*, i64)* @ocs_fcp_change_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_fcp_change_role(%struct.ocs_softc* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ocs_softc*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.ocs_softc* %0, %struct.ocs_softc** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.TYPE_8__* @FCPORT(%struct.ocs_softc* %23, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @KNOB_ROLE_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %108

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = icmp eq %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @KNOB_ROLE_INITIATOR, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @KNOB_ROLE_TARGET, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %83

66:                                               ; preds = %43
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @KNOB_ROLE_INITIATOR, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @KNOB_ROLE_TARGET, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %66, %49
  %84 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %85 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @OCS_XPORT_PORT_OFFLINE, align 4
  %88 = call i64 @ocs_xport_control(i32 %86, i32 %87)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @ocs_log_debug(%struct.ocs_softc* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %97 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @OCS_XPORT_PORT_ONLINE, align 4
  %100 = call i64 @ocs_xport_control(i32 %98, i32 %99)
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @ocs_log_debug(%struct.ocs_softc* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %103, %95
  store i64 0, i64* %4, align 8
  br label %177

108:                                              ; preds = %40
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @KNOB_ROLE_NONE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %108
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @KNOB_ROLE_INITIATOR, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @KNOB_ROLE_TARGET, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %135 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %136 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @ocs_sport_vport_del(%struct.ocs_softc* %134, i32 %137, i32 %140, i32 %143)
  store i64 %144, i64* %4, align 8
  br label %177

145:                                              ; preds = %108
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @KNOB_ROLE_INITIATOR, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* @KNOB_ROLE_TARGET, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @KNOB_ROLE_NONE, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %145
  %171 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %172 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %175 = call i64 @ocs_sport_vport_alloc(i32 %173, %struct.TYPE_6__* %174)
  store i64 %175, i64* %4, align 8
  br label %177

176:                                              ; preds = %145
  store i64 0, i64* %4, align 8
  br label %177

177:                                              ; preds = %176, %170, %114, %107
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local %struct.TYPE_8__* @FCPORT(%struct.ocs_softc*, i64) #1

declare dso_local i64 @ocs_xport_control(i32, i32) #1

declare dso_local i32 @ocs_log_debug(%struct.ocs_softc*, i8*, i64) #1

declare dso_local i64 @ocs_sport_vport_del(%struct.ocs_softc*, i32, i32, i32) #1

declare dso_local i64 @ocs_sport_vport_alloc(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
