; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_callgraph.c_pmcpl_cg_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_callgraph.c_pmcpl_cg_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pmcstat_process = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pmcstat_pmcrecord = type { i32, i32 }
%struct.pmcstat_image = type { i64, i64 }
%struct.pmcstat_pcmap = type { i64, %struct.pmcstat_image* }
%struct.pmcstat_symbol = type { i64 }
%struct.pmcstat_cgnode = type { i32 }

@pmcstat_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@pmcstat_kernproc = common dso_local global %struct.pmcstat_process* null, align 8
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_cg_process(%struct.pmcstat_process* %0, %struct.pmcstat_pmcrecord* %1, i64 %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca %struct.pmcstat_pmcrecord*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pmcstat_image*, align 8
  %17 = alloca %struct.pmcstat_pcmap*, align 8
  %18 = alloca %struct.pmcstat_symbol*, align 8
  %19 = alloca %struct.pmcstat_cgnode*, align 8
  %20 = alloca %struct.pmcstat_cgnode*, align 8
  %21 = alloca %struct.pmcstat_process*, align 8
  %22 = alloca i32, align 4
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_pmcrecord* %1, %struct.pmcstat_pmcrecord** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %28 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %22, align 4
  %30 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %31 = load i32, i32* %22, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.pmcstat_cgnode* @pmcstat_cgnode_hash_lookup_pc(%struct.pmcstat_process* %30, i32 %31, i64 %32, i32 %33)
  store %struct.pmcstat_cgnode* %34, %struct.pmcstat_cgnode** %19, align 8
  store %struct.pmcstat_cgnode* %34, %struct.pmcstat_cgnode** %20, align 8
  %35 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %19, align 8
  %36 = icmp eq %struct.pmcstat_cgnode* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcstat_stats, i32 0, i32 0), align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcstat_stats, i32 0, i32 0), align 4
  %40 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %41 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %133

44:                                               ; preds = %6
  %45 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %19, align 8
  %46 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.pmcstat_process*, %struct.pmcstat_process** @pmcstat_kernproc, align 8
  store %struct.pmcstat_process* %49, %struct.pmcstat_process** %21, align 8
  store i64 1, i64* %15, align 8
  br label %50

50:                                               ; preds = %129, %44
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %133

60:                                               ; preds = %58
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  br label %71

69:                                               ; preds = %60
  %70 = load %struct.pmcstat_process*, %struct.pmcstat_process** %21, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi %struct.pmcstat_process* [ %68, %67 ], [ %70, %69 ]
  %73 = load i64, i64* %13, align 8
  %74 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %72, i64 %73)
  store %struct.pmcstat_pcmap* %74, %struct.pmcstat_pcmap** %17, align 8
  %75 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %17, align 8
  %76 = icmp eq %struct.pmcstat_pcmap* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %81, i64 %82)
  store %struct.pmcstat_pcmap* %83, %struct.pmcstat_pcmap** %17, align 8
  %84 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %17, align 8
  %85 = icmp ne %struct.pmcstat_pcmap* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_process* %87, %struct.pmcstat_process** %21, align 8
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %17, align 8
  %92 = icmp eq %struct.pmcstat_pcmap* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %129

94:                                               ; preds = %90
  %95 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %17, align 8
  %96 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %95, i32 0, i32 1
  %97 = load %struct.pmcstat_image*, %struct.pmcstat_image** %96, align 8
  store %struct.pmcstat_image* %97, %struct.pmcstat_image** %16, align 8
  %98 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %17, align 8
  %99 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %102 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %106 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %13, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %13, align 8
  %112 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image* %112, i64 %113)
  store %struct.pmcstat_symbol* %114, %struct.pmcstat_symbol** %18, align 8
  %115 = icmp ne %struct.pmcstat_symbol* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %94
  %117 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %18, align 8
  %118 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %13, align 8
  br label %120

120:                                              ; preds = %116, %94
  %121 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %19, align 8
  %122 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call %struct.pmcstat_cgnode* @pmcstat_cgnode_find(%struct.pmcstat_cgnode* %121, %struct.pmcstat_image* %122, i64 %123)
  store %struct.pmcstat_cgnode* %124, %struct.pmcstat_cgnode** %20, align 8
  %125 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %20, align 8
  %126 = getelementptr inbounds %struct.pmcstat_cgnode, %struct.pmcstat_cgnode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %120, %93
  %130 = load i64, i64* %15, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %15, align 8
  %132 = load %struct.pmcstat_cgnode*, %struct.pmcstat_cgnode** %20, align 8
  store %struct.pmcstat_cgnode* %132, %struct.pmcstat_cgnode** %19, align 8
  br label %50

133:                                              ; preds = %37, %58
  ret void
}

declare dso_local %struct.pmcstat_cgnode* @pmcstat_cgnode_hash_lookup_pc(%struct.pmcstat_process*, i32, i64, i32) #1

declare dso_local %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process*, i64) #1

declare dso_local %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image*, i64) #1

declare dso_local %struct.pmcstat_cgnode* @pmcstat_cgnode_find(%struct.pmcstat_cgnode*, %struct.pmcstat_image*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
