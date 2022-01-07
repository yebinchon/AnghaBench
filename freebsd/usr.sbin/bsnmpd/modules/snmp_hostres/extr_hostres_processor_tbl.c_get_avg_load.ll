; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_processor_tbl.c_get_avg_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_processor_tbl.c_get_avg_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.processor_entry = type { i32, i32, i32, i64** }

@MAX_CPU_SAMPLES = common dso_local global i32 0, align 4
@CPUSTATES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"CPU no. %d, delta ticks %ld, pct usage %.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.processor_entry*)* @get_avg_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_avg_load(%struct.processor_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.processor_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.processor_entry* %0, %struct.processor_entry** %3, align 8
  store i64 0, i64* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  %8 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %9 = icmp ne %struct.processor_entry* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %13 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %19 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAX_CPU_SAMPLES, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %25 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @MAX_CPU_SAMPLES, align 4
  %29 = srem i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  br label %32

31:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %31, %23
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @CPUSTATES, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %39 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %38, i32 0, i32 3
  %40 = load i64**, i64*** %39, align 8
  %41 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %42 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %40, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %53 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %52, i32 0, i32 3
  %54 = load i64**, i64*** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i64*, i64** %54, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %37
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %33

66:                                               ; preds = %33
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %110

70:                                               ; preds = %66
  %71 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %72 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %71, i32 0, i32 3
  %73 = load i64**, i64*** %72, align 8
  %74 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %75 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %73, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @CPUSTATES, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %85 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %84, i32 0, i32 3
  %86 = load i64**, i64*** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i64*, i64** %86, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @CPUSTATES, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %83, %93
  %95 = sitofp i64 %94 to double
  %96 = load i64, i64* %6, align 8
  %97 = sitofp i64 %96 to double
  %98 = fdiv double %95, %97
  store double %98, double* %7, align 8
  %99 = load double, double* %7, align 8
  %100 = fmul double %99, 1.000000e+02
  %101 = fsub double 1.000000e+02, %100
  store double %101, double* %7, align 8
  %102 = load %struct.processor_entry*, %struct.processor_entry** %3, align 8
  %103 = getelementptr inbounds %struct.processor_entry, %struct.processor_entry* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load double, double* %7, align 8
  %107 = call i32 @HRDBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %105, double %106)
  %108 = load double, double* %7, align 8
  %109 = fptosi double %108 to i32
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %70, %69, %16
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HRDBG(i8*, i32, i64, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
