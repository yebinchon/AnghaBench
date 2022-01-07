; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_analyze_link_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_analyze_link_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Analyze Remote Fault\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Analyze TX Fault\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Analyze UNKNOWN\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Link changed:[%x %x]->%x\0A\00", align 1
@PHY_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@ELINK_LED_MODE_OFF = common dso_local global i32 0, align 4
@ELINK_LED_MODE_OPER = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i32 0, align 4
@ELINK_PERIODIC_FLAGS_LINK_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i32, i32, i32, i32)* @elink_analyze_link_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_analyze_link_error(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.elink_params*, align 8
  %9 = alloca %struct.elink_vars*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bxe_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %8, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 1
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %18, align 8
  store %struct.bxe_softc* %19, %struct.bxe_softc** %14, align 8
  %20 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %21 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %16, align 4
  %30 = xor i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %146

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 128, label %38
  ]

35:                                               ; preds = %33
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %37 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %44

38:                                               ; preds = %33
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %40 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %43 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %46 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %47 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %53 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHY_PHYSICAL_LINK_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %146

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  %63 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %66 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %71 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %75 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %78 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %82 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %83 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %84 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %82, %87
  %89 = call i32 @REG_WR(%struct.bxe_softc* %81, i64 %88, i32 1)
  %90 = load i32, i32* @ELINK_LED_MODE_OFF, align 4
  store i32 %90, i32* %15, align 4
  br label %121

91:                                               ; preds = %59
  %92 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %93 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %94 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %12, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %100 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %104 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %108 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @ELINK_LED_MODE_OPER, align 4
  store i32 %111, i32* %15, align 4
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %113 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %114 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %115 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %113, %118
  %120 = call i32 @REG_WR(%struct.bxe_softc* %112, i64 %119, i32 0)
  br label %121

121:                                              ; preds = %91, %62
  %122 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %123 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %124 = call i32 @elink_sync_link(%struct.elink_params* %122, %struct.elink_vars* %123)
  %125 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %126 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @ELINK_SPEED_10000, align 4
  %129 = call i32 @elink_set_led(%struct.elink_params* %125, %struct.elink_vars* %126, i32 %127, i32 %128)
  %130 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %131 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %132 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @elink_update_mng(%struct.elink_params* %130, i32 %133)
  %135 = load i32, i32* @ELINK_PERIODIC_FLAGS_LINK_EVENT, align 4
  %136 = load %struct.elink_vars*, %struct.elink_vars** %9, align 8
  %137 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %121
  %143 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %144 = call i32 @elink_cb_notify_link_changed(%struct.bxe_softc* %143)
  br label %145

145:                                              ; preds = %142, %121
  store i32 1, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %58, %32
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_sync_link(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_set_led(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

declare dso_local i32 @elink_update_mng(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_cb_notify_link_changed(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
