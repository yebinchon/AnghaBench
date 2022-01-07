; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_domain_dispatch_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_domain_dispatch_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_29__*, %struct.TYPE_23__* }
%struct.TYPE_29__ = type { i64, i64, i64, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_29__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_29__* }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"phy sport for FC ID 0x%06x is NULL, dropping frame\0A\00", align 1
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"unsolicited FCP frame with invalid d_id x%x, dropping\0A\00", align 1
@FC_RCTL_FC4_DATA = common dso_local global i64 0, align 8
@FC_RCTL_INFO_SOL_DATA = common dso_local global i64 0, align 8
@FC_RCTL_INFO_SOL_CTRL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"solicited data/ctrl frame without node, dropping\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"ocs_node_alloc() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_27__*)* @ocs_domain_dispatch_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_domain_dispatch_frame(i8* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %6, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %12, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %21 = call i32 @ocs_assert(%struct.TYPE_29__* %20, i32 -1)
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %28 = call i32 @ocs_assert(%struct.TYPE_29__* %27, i32 -1)
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %35 = call i32 @ocs_assert(%struct.TYPE_29__* %34, i32 -1)
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %40, align 8
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %8, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @fc_be24toh(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @fc_be24toh(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %12, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %54 = icmp eq %struct.TYPE_25__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @frame_printf(i32* %56, %struct.TYPE_29__* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %58)
  store i32 -1, i32* %3, align 4
  br label %155

60:                                               ; preds = %2
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call %struct.TYPE_25__* @ocs_sport_find(%struct.TYPE_28__* %67, i64 %68)
  store %struct.TYPE_25__* %69, %struct.TYPE_25__** %12, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = icmp eq %struct.TYPE_25__* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FC_TYPE_FCP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @ocs_log_warn(i32* %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  store i32 -1, i32* %3, align 4
  br label %155

82:                                               ; preds = %72
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  store %struct.TYPE_25__* %85, %struct.TYPE_25__** %12, align 8
  br label %86

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call %struct.TYPE_26__* @ocs_node_find(%struct.TYPE_25__* %89, i64 %90)
  store %struct.TYPE_26__* %91, %struct.TYPE_26__** %11, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %93 = icmp eq %struct.TYPE_26__* %92, null
  br i1 %93, label %94, label %130

94:                                               ; preds = %88
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FC_RCTL_FC4_DATA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FC_RCTL_INFO_SOL_DATA, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FC_RCTL_INFO_SOL_CTRL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %100
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @ocs_log_debug(i32* %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

115:                                              ; preds = %106, %94
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = load i32, i32* @FALSE, align 4
  %120 = call %struct.TYPE_26__* @ocs_node_alloc(%struct.TYPE_25__* %116, i64 %117, i32 %118, i32 %119)
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %11, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %122 = icmp eq %struct.TYPE_26__* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @ocs_log_err(i32* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

126:                                              ; preds = %115
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %128 = load i32, i32* @FALSE, align 4
  %129 = call i32 @ocs_node_init_device(%struct.TYPE_26__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %88
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 1
  %138 = call i32 @ocs_list_empty(i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = call i32 @ocs_lock(i32* %142)
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %147 = call i32 @ocs_list_add_tail(i32* %145, %struct.TYPE_27__* %146)
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = call i32 @ocs_unlock(i32* %149)
  store i32 0, i32* %3, align 4
  br label %155

151:                                              ; preds = %135
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %154 = call i32 @ocs_node_dispatch_frame(%struct.TYPE_26__* %152, %struct.TYPE_27__* %153)
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %140, %123, %112, %78, %55
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @ocs_assert(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @fc_be24toh(i32) #1

declare dso_local i32 @frame_printf(i32*, %struct.TYPE_29__*, i8*, i64) #1

declare dso_local %struct.TYPE_25__* @ocs_sport_find(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @ocs_log_warn(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_26__* @ocs_node_find(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @ocs_log_debug(i32*, i8*) #1

declare dso_local %struct.TYPE_26__* @ocs_node_alloc(%struct.TYPE_25__*, i64, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_node_init_device(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_node_dispatch_frame(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
