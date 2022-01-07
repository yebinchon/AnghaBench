; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_annotate.c_pmcpl_annotate_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_annotate.c_pmcpl_annotate_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pmcstat_pmcrecord = type { i32 }
%struct.pmcstat_pcmap = type { i64, i64, %struct.pmcstat_image* }
%struct.pmcstat_image = type { i64, i64 }
%struct.pmcstat_symbol = type { i64, i64, i32 }

@pmcstat_kernproc = common dso_local global %struct.pmcstat_process* null, align 8
@pmcstat_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"%p %s 0x%jx 0x%jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_annotate_process(%struct.pmcstat_process* %0, %struct.pmcstat_pmcrecord* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca %struct.pmcstat_pmcrecord*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pmcstat_pcmap*, align 8
  %14 = alloca %struct.pmcstat_symbol*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pmcstat_image*, align 8
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_pmcrecord* %1, %struct.pmcstat_pmcrecord** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  br label %27

25:                                               ; preds = %6
  %26 = load %struct.pmcstat_process*, %struct.pmcstat_process** @pmcstat_kernproc, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi %struct.pmcstat_process* [ %24, %23 ], [ %26, %25 ]
  %29 = load i64*, i64** %10, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %28, i64 %31)
  store %struct.pmcstat_pcmap* %32, %struct.pmcstat_pcmap** %13, align 8
  %33 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %34 = icmp eq %struct.pmcstat_pcmap* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcstat_stats, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcstat_stats, i32 0, i32 0), align 4
  br label %109

38:                                               ; preds = %27
  %39 = load i64*, i64** %10, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %43 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %51 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br label %54

54:                                               ; preds = %46, %38
  %55 = phi i1 [ false, %38 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %59 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %58, i32 0, i32 2
  %60 = load %struct.pmcstat_image*, %struct.pmcstat_image** %59, align 8
  store %struct.pmcstat_image* %60, %struct.pmcstat_image** %16, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %65 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %68 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %71 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = add nsw i64 %66, %73
  %75 = sub nsw i64 %63, %74
  store i64 %75, i64* %15, align 8
  %76 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image* %76, i64 %77)
  store %struct.pmcstat_symbol* %78, %struct.pmcstat_symbol** %14, align 8
  %79 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %80 = icmp eq %struct.pmcstat_symbol* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %54
  br label %109

82:                                               ; preds = %54
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 4
  %84 = load i64*, i64** %10, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %89 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @pmcstat_string_unintern(i32 %90)
  %92 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %93 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %96 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  %100 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %101 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %104 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %87, i8* %91, i32 %99, i32 %107)
  br label %109

109:                                              ; preds = %82, %81, %35
  ret void
}

declare dso_local %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @pmcstat_string_unintern(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
