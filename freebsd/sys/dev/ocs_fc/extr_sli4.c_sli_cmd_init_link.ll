; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_init_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@SLI4_MBOX_COMMAND_INIT_LINK = common dso_local global i32 0, align 4
@SLI4_READ_CFG_TOPO_FCOE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"unsupported FC speed %d\0A\00", align 1
@SLI4_ASIC_TYPE_LANCER = common dso_local global i32 0, align 4
@SLI4_INIT_LINK_F_FCAL_FAIL_OVER = common dso_local global i32 0, align 4
@SLI4_INIT_LINK_F_P2P_FAIL_OVER = common dso_local global i32 0, align 4
@SLI4_INIT_LINK_F_FCAL_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported FC-AL speed %d\0A\00", align 1
@FC_TOPOLOGY_P2P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported topology %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_init_link(%struct.TYPE_11__* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @ocs_memset(i8* %15, i32 0, i64 %16)
  %18 = load i32, i32* @SLI4_MBOX_COMMAND_INIT_LINK, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SLI4_READ_CFG_TOPO_FCOE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %132

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 8
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %51 [
    i32 135, label %40
    i32 134, label %40
    i32 132, label %40
    i32 131, label %40
    i32 136, label %40
    i32 133, label %40
    i32 137, label %45
  ]

40:                                               ; preds = %28, %28, %28, %28, %28, %28
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  store i8* %41, i8** %44, align 8
  br label %51

45:                                               ; preds = %28
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ocs_log_test(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %6, align 4
  br label %133

51:                                               ; preds = %28, %40
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %102 [
    i32 130, label %56
    i32 129, label %76
    i32 128, label %97
  ]

56:                                               ; preds = %51
  %57 = load i8*, i8** @TRUE, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  store i8* %57, i8** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = call i32 @sli_get_asic_type(%struct.TYPE_11__* %61)
  %63 = load i32, i32* @SLI4_ASIC_TYPE_LANCER, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32, i32* @SLI4_INIT_LINK_F_FCAL_FAIL_OVER, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 8
  br label %75

70:                                               ; preds = %56
  %71 = load i32, i32* @SLI4_INIT_LINK_F_P2P_FAIL_OVER, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %111

76:                                               ; preds = %51
  %77 = load i32, i32* @SLI4_INIT_LINK_F_FCAL_ONLY, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 136
  br i1 %84, label %90, label %85

85:                                               ; preds = %76
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 133
  br i1 %89, label %90, label %96

90:                                               ; preds = %85, %76
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @ocs_log_test(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 0, i32* %6, align 4
  br label %133

96:                                               ; preds = %85
  br label %111

97:                                               ; preds = %51
  %98 = load i32, i32* @FC_TOPOLOGY_P2P, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  store i32 %98, i32* %101, align 8
  br label %111

102:                                              ; preds = %51
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ocs_log_test(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  store i32 0, i32* %6, align 4
  br label %133

111:                                              ; preds = %97, %96, %75
  %112 = load i8*, i8** @FALSE, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @FALSE, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** @FALSE, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i8* %120, i8** %123, align 8
  %124 = load i8*, i8** @FALSE, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load i8*, i8** @FALSE, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  br label %132

132:                                              ; preds = %111, %5
  store i32 88, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %102, %90, %45
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local i32 @sli_get_asic_type(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
