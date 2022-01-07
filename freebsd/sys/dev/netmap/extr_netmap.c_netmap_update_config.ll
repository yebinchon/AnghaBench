; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_update_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64, i64, i64, i64, i64, i64, i32, i64 (%struct.netmap_adapter*, %struct.nm_config_info*)* }
%struct.nm_config_info = type { i64, i64, i64, i64, i64 }

@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"configuration changed for %s: txring %d x %d, rxring %d x %d, rxbufsz %d\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"WARNING: configuration changed for %s while active: txring %d x %d, rxring %d x %d, rxbufsz %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_update_config(%struct.netmap_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca %struct.nm_config_info, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  %5 = call i32 @bzero(%struct.nm_config_info* %4, i32 40)
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %6, i32 0, i32 7
  %8 = load i64 (%struct.netmap_adapter*, %struct.nm_config_info*)*, i64 (%struct.netmap_adapter*, %struct.nm_config_info*)** %7, align 8
  %9 = icmp eq i64 (%struct.netmap_adapter*, %struct.nm_config_info*)* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %11, i32 0, i32 7
  %13 = load i64 (%struct.netmap_adapter*, %struct.nm_config_info*)*, i64 (%struct.netmap_adapter*, %struct.nm_config_info*)** %12, align 8
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %15 = call i64 %13(%struct.netmap_adapter* %14, %struct.nm_config_info* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10, %1
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  %34 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 4
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %17, %10
  %39 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %38
  %46 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %45
  %53 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %138

74:                                               ; preds = %66, %59, %52, %45, %38
  %75 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* @netmap_verbose, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %79
  %103 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @nm_prinf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %105, i64 %108, i64 %111, i64 %114, i64 %117, i64 %120)
  br label %122

122:                                              ; preds = %102, %79
  store i32 0, i32* %2, align 4
  br label %138

123:                                              ; preds = %74
  %124 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %4, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @nm_prerr(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %126, i64 %128, i64 %130, i64 %132, i64 %134, i64 %136)
  store i32 1, i32* %2, align 4
  br label %138

138:                                              ; preds = %123, %122, %73
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @bzero(%struct.nm_config_info*, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @nm_prerr(i8*, i32, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
