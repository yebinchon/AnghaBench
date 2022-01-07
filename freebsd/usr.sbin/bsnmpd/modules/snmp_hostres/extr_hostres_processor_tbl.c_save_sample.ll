; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_processor_tbl.c_save_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_processor_tbl.c_save_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.processor_entry = type { i32, i64**, i32, i32, i32 }

@MAX_CPU_SAMPLES = common dso_local global i32 0, align 4
@CPUSTATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sample count for CPU no. %d went to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.processor_entry*, i64*)* @save_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_sample(%struct.processor_entry* %0, i64* %1) #0 {
  %3 = alloca %struct.processor_entry*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.processor_entry* %0, %struct.processor_entry** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %7 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* @MAX_CPU_SAMPLES, align 4
  %11 = srem i32 %9, %10
  %12 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %13 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %41, %2
  %15 = load i64*, i64** %4, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CPUSTATES, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = load i64*, i64** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %30 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %29, i32 0, i32 1
  %31 = load i64**, i64*** %30, align 8
  %32 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %33 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %31, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %28, i64* %40, align 8
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %14

44:                                               ; preds = %21
  %45 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %46 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %50 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAX_CPU_SAMPLES, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @MAX_CPU_SAMPLES, align 4
  %56 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %57 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %60 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %63 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @HRDBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %67 = call i32 @get_avg_load(%struct.processor_entry* %66)
  %68 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %69 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  ret void
}

declare dso_local i32 @HRDBG(i8*, i32, i32) #1

declare dso_local i32 @get_avg_load(%struct.processor_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
