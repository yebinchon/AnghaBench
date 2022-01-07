; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_gdt_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_gdt_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_fc = type { i32, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.isp_fc* }
%struct.TYPE_16__ = type { i64, i64, i32, i32, i64, i64 }
%struct.ac_contract = type { i64, i32 }
%struct.ac_device_changed = type { i32, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Chan %d GDT timer expired\00", align 1
@MAX_FC_TARG = common dso_local global i32 0, align 4
@FC_PORTDB_STATE_ZOMBIE = common dso_local global i64 0, align 8
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@prom3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Gone Device Timeout\00", align 1
@AC_CONTRACT_DEV_CHG = common dso_local global i32 0, align 4
@AC_CONTRACT = common dso_local global i32 0, align 4
@FC_PORTDB_STATE_NIL = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@isp_gdt = common dso_local global i32 0, align 4
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Chan %d Stopping Gone Device Timer @ %lu\00", align 1
@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @isp_gdt_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_gdt_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_fc*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.ac_contract, align 8
  %10 = alloca %struct.ac_device_changed*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.isp_fc*
  store %struct.isp_fc* %14, %struct.isp_fc** %5, align 8
  %15 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %16 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.isp_fc*, %struct.isp_fc** %22, align 8
  %24 = ptrtoint %struct.isp_fc* %18 to i64
  %25 = ptrtoint %struct.isp_fc* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 32
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = call i32 @ISP_LOCK(%struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_15__* %31, i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %127, %2
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MAX_FC_TARG, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %130

39:                                               ; preds = %35
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.TYPE_12__* @FCPARAM(%struct.TYPE_15__* %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %46
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %8, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FC_PORTDB_STATE_ZOMBIE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %127

54:                                               ; preds = %39
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %127

66:                                               ; preds = %54
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = load i32, i32* @ISP_LOGCONFIG, align 4
  %69 = load i32, i32* @prom3, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_15__* %67, i32 %68, i8* %71, i32 %72, i32 %73, i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %66
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @isp_make_gone(%struct.TYPE_15__* %85, %struct.TYPE_16__* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %66
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @AC_CONTRACT_DEV_CHG, align 4
  %99 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %9, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.ac_device_changed*
  store %struct.ac_device_changed* %102, %struct.ac_device_changed** %10, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ac_device_changed*, %struct.ac_device_changed** %10, align 8
  %107 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ac_device_changed*, %struct.ac_device_changed** %10, align 8
  %112 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.ac_device_changed*, %struct.ac_device_changed** %10, align 8
  %115 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ac_device_changed*, %struct.ac_device_changed** %10, align 8
  %117 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @AC_CONTRACT, align 4
  %119 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %120 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @xpt_async(i32 %118, i32 %121, %struct.ac_contract* %9)
  br label %123

123:                                              ; preds = %95, %90
  %124 = load i64, i64* @FC_PORTDB_STATE_NIL, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %59, %53
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %35

130:                                              ; preds = %35
  %131 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %132 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %130
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %140 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %139, i32 0, i32 0
  %141 = load i32, i32* @hz, align 4
  %142 = load i32, i32* @isp_gdt, align 4
  %143 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %144 = call i32 @callout_reset(i32* %140, i32 %141, i32 %142, %struct.isp_fc* %143)
  br label %154

145:                                              ; preds = %135
  %146 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %147 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %146, i32 0, i32 0
  %148 = call i32 @callout_deactivate(i32* %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i64, i64* @time_uptime, align 8
  %153 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_15__* %149, i32 %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %151, i64 %152)
  br label %154

154:                                              ; preds = %145, %138
  br label %155

155:                                              ; preds = %154, %130
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = call i32 @ISP_UNLOCK(%struct.TYPE_15__* %156)
  ret void
}

declare dso_local i32 @ISP_LOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_15__*, i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_12__* @FCPARAM(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @isp_make_gone(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @xpt_async(i32, i32, %struct.ac_contract*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.isp_fc*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
