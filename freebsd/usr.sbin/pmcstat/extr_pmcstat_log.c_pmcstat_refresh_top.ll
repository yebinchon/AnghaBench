; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_refresh_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_refresh_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i64 }
%struct.pmcstat_pmcrecord = type { double, float, i32 }

@pmcstat_pause = common dso_local global i64 0, align 8
@pmcstat_pmcinfilter = common dso_local global i32 0, align 4
@pmcstat_mergepmc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@ps_samples_period = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"PMC: %s Samples: %u \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(%.1f%%) \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c", %u unresolved\0A\0A\00", align 1
@plugins = common dso_local global %struct.TYPE_3__* null, align 8
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmcstat_refresh_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcstat_refresh_top() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca [40 x i8], align 16
  %4 = alloca %struct.pmcstat_pmcrecord*, align 8
  %5 = load i64, i64* @pmcstat_pause, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %80

8:                                                ; preds = %0
  %9 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %10 = call %struct.pmcstat_pmcrecord* @pmcstat_pmcindex_to_pmcr(i32 %9)
  store %struct.pmcstat_pmcrecord* %10, %struct.pmcstat_pmcrecord** %4, align 8
  %11 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %12 = icmp eq %struct.pmcstat_pmcrecord* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %80

14:                                               ; preds = %8
  %15 = load i64, i64* @pmcstat_mergepmc, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %19 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %20 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @pmcstat_string_unintern(i32 %21)
  %23 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %32

24:                                               ; preds = %14
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %26 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %27 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @pmcstat_string_unintern(i32 %28)
  %30 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %31 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load double, double* @ps_samples_period, align 8
  %34 = fcmp ogt double %33, 0.000000e+00
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %37 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, 1.000000e+02
  %40 = load double, double* @ps_samples_period, align 8
  %41 = fdiv double %39, %40
  %42 = fptrunc double %41 to float
  store float %42, float* %2, align 4
  br label %44

43:                                               ; preds = %32
  store float 0.000000e+00, float* %2, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load float, float* %2, align 4
  %46 = call i32 @PMCSTAT_ATTRPERCENT(float %45)
  store i32 %46, i32* %1, align 4
  %47 = call i32 (...) @PMCSTAT_PRINTBEGIN()
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %49 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %50 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = call i32 (i8*, ...) @PMCSTAT_PRINTW(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %48, double %51)
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @PMCSTAT_ATTRON(i32 %53)
  %55 = load float, float* %2, align 4
  %56 = fpext float %55 to double
  %57 = call i32 (i8*, ...) @PMCSTAT_PRINTW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %56)
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @PMCSTAT_ATTROFF(i32 %58)
  %60 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %4, align 8
  %61 = getelementptr inbounds %struct.pmcstat_pmcrecord, %struct.pmcstat_pmcrecord* %60, i32 0, i32 1
  %62 = load float, float* %61, align 8
  %63 = fpext float %62 to double
  %64 = call i32 (i8*, ...) @PMCSTAT_PRINTW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), double %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (...)*, i32 (...)** %68, align 8
  %70 = icmp ne i32 (...)* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %44
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plugins, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (...)*, i32 (...)** %75, align 8
  %77 = call i32 (...) %76()
  br label %78

78:                                               ; preds = %71, %44
  %79 = call i32 (...) @PMCSTAT_PRINTEND()
  br label %80

80:                                               ; preds = %78, %13, %7
  ret void
}

declare dso_local %struct.pmcstat_pmcrecord* @pmcstat_pmcindex_to_pmcr(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @pmcstat_string_unintern(i32) #1

declare dso_local i32 @PMCSTAT_ATTRPERCENT(float) #1

declare dso_local i32 @PMCSTAT_PRINTBEGIN(...) #1

declare dso_local i32 @PMCSTAT_PRINTW(i8*, ...) #1

declare dso_local i32 @PMCSTAT_ATTRON(i32) #1

declare dso_local i32 @PMCSTAT_ATTROFF(i32) #1

declare dso_local i32 @PMCSTAT_PRINTEND(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
