; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_register_fc4_features_24xx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_register_fc4_features_24xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32* }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32, i32, %struct.TYPE_23__ }

@ISP_LOGERR = common dso_local global i32 0, align 4
@sacq = common dso_local global i32 0, align 4
@CT_REVISION = common dso_local global i32 0, align 4
@CT_FC_TYPE_FC = common dso_local global i32 0, align 4
@CT_FC_SUBTYPE_NS = common dso_local global i32 0, align 4
@SNS_RFF_ID = common dso_local global i64 0, align 8
@ISP_ROLE_TARGET = common dso_local global i32 0, align 4
@ISP_ROLE_INITIATOR = common dso_local global i32 0, align 4
@FC4_SCSI = common dso_local global i32 0, align 4
@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CT request\00", align 1
@LS_RJT = common dso_local global i64 0, align 8
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@ISP_LOG_WARN1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Chan %d Register FC4 Features rejected\00", align 1
@LS_ACC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Chan %d Register FC4 Features accepted\00", align 1
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Chan %d Register FC4 Features: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32)* @isp_register_fc4_features_24xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_register_fc4_features_24xx(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_22__* @FCPARAM(%struct.TYPE_21__* %10, i32 %11)
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %6, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @FC_SCRATCH_ACQUIRE(%struct.TYPE_21__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = load i32, i32* @ISP_LOGERR, align 4
  %23 = load i32, i32* @sacq, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @isp_prt(%struct.TYPE_21__* %21, i32 %22, i8* %25)
  store i32 -1, i32* %3, align 4
  br label %154

27:                                               ; preds = %2
  %28 = call i32 @ISP_MEMZERO(%struct.TYPE_20__* %8, i32 40)
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 3
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %7, align 8
  %30 = load i32, i32* @CT_REVISION, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @CT_FC_TYPE_FC, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @CT_FC_SUBTYPE_NS, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @SNS_RFF_ID, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  store i32 4, i32* %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 16
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ISP_ROLE_TARGET, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %27
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %71, %27
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ISP_ROLE_INITIATOR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, 2
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i32, i32* @FC4_SCSI, align 4
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = bitcast i32* %90 to %struct.TYPE_20__*
  %92 = call i32 @isp_put_rff_id(%struct.TYPE_21__* %89, %struct.TYPE_20__* %8, %struct.TYPE_20__* %91)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @isp_print_bytes(%struct.TYPE_21__* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i32* %101)
  br label %103

103:                                              ; preds = %99, %86
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @isp_ct_passthru(%struct.TYPE_21__* %104, i32 %105, i32 4, i32 24)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @FC_SCRATCH_RELEASE(%struct.TYPE_21__* %109, i32 %110)
  store i32 -1, i32* %3, align 4
  br label %154

112:                                              ; preds = %103
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = bitcast i32* %114 to %struct.TYPE_23__*
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %117 = call i32 @isp_get_ct_hdr(%struct.TYPE_21__* %113, %struct.TYPE_23__* %115, %struct.TYPE_23__* %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @FC_SCRATCH_RELEASE(%struct.TYPE_21__* %118, i32 %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LS_RJT, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %112
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %128 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %129 = load i32, i32* @ISP_LOG_WARN1, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @isp_prt(%struct.TYPE_21__* %127, i32 %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  store i32 -1, i32* %3, align 4
  br label %154

133:                                              ; preds = %112
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LS_ACC, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @isp_prt(%struct.TYPE_21__* %140, i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %152

144:                                              ; preds = %133
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = load i32, i32* @ISP_LOGWARN, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @isp_prt(%struct.TYPE_21__* %145, i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %147, i64 %150)
  store i32 -1, i32* %3, align 4
  br label %154

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %144, %126, %108, %20
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_22__* @FCPARAM(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @FC_SCRATCH_ACQUIRE(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @isp_prt(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @ISP_MEMZERO(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @isp_put_rff_id(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @isp_print_bytes(%struct.TYPE_21__*, i8*, i32, i32*) #1

declare dso_local i64 @isp_ct_passthru(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @isp_get_ct_hdr(%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
