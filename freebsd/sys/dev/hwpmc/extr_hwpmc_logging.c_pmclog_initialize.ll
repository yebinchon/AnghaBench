; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.pmclog_buffer* }
%struct.pmclog_buffer = type { i32 }

@pmclog_buffer_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"hwpmc: tunable logbuffersize=%d must be greater than zero and less than or equal to 16MB.\0A\00", align 1
@PMC_LOG_BUFFER_SIZE = common dso_local global i32 0, align 4
@pmc_nlogbuffers_pcpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"hwpmc: tunable nlogbuffers=%d must be greater than zero.\0A\00", align 1
@PMC_NLOGBUFFERS_PCPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"hwpmc: memory allocated pcpu must be less than 32MB (is %dK).\0A\00", align 1
@vm_ndomains = common dso_local global i32 0, align 4
@pmc_dom_hdrs = common dso_local global %struct.TYPE_2__** null, align 8
@M_PMC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pmc_kthread_mtx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"pmc-kthread\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pmc-sleep\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_initialize() #0 {
  %1 = alloca %struct.pmclog_buffer*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @pmclog_buffer_size, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @pmclog_buffer_size, align 4
  %10 = icmp sgt i32 %9, 16384
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @pmclog_buffer_size, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @PMC_LOG_BUFFER_SIZE, align 4
  store i32 %14, i32* @pmclog_buffer_size, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* @pmc_nlogbuffers_pcpu, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @pmc_nlogbuffers_pcpu, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @PMC_NLOGBUFFERS_PCPU, align 4
  store i32 %21, i32* @pmc_nlogbuffers_pcpu, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @pmc_nlogbuffers_pcpu, align 4
  %24 = load i32, i32* @pmclog_buffer_size, align 4
  %25 = mul nsw i32 %23, %24
  %26 = icmp sgt i32 %25, 32768
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @pmc_nlogbuffers_pcpu, align 4
  %29 = load i32, i32* @pmclog_buffer_size, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @PMC_NLOGBUFFERS_PCPU, align 4
  store i32 %32, i32* @pmc_nlogbuffers_pcpu, align 4
  %33 = load i32, i32* @PMC_LOG_BUFFER_SIZE, align 4
  store i32 %33, i32* @pmclog_buffer_size, align 4
  br label %34

34:                                               ; preds = %27, %22
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %94, %34
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @vm_ndomains, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %35
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @pmc_nlogbuffers_pcpu, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @M_PMC, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @DOMAINSET_PREF(i32 %55)
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = call i8* @malloc_domainset(i32 %53, i32 %54, i32 %56, i32 %59)
  %61 = bitcast i8* %60 to %struct.pmclog_buffer*
  store %struct.pmclog_buffer* %61, %struct.pmclog_buffer** %1, align 8
  %62 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %1, align 8
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store %struct.pmclog_buffer* %62, %struct.pmclog_buffer** %68, align 8
  br label %69

69:                                               ; preds = %88, %39
  %70 = load i32, i32* %4, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i32, i32* @pmclog_buffer_size, align 4
  %74 = mul nsw i32 1024, %73
  %75 = load i32, i32* @M_PMC, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @DOMAINSET_PREF(i32 %76)
  %78 = load i32, i32* @M_WAITOK, align 4
  %79 = load i32, i32* @M_ZERO, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @malloc_domainset(i32 %74, i32 %75, i32 %77, i32 %80)
  store i8* %81, i8** %5, align 8
  %82 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %1, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @PMCLOG_INIT_BUFFER_DESCRIPTOR(%struct.pmclog_buffer* %82, i8* %83, i32 %84)
  %86 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %1, align 8
  %87 = call i32 @pmc_plb_rele_unlocked(%struct.pmclog_buffer* %86)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %4, align 4
  %91 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %1, align 8
  %92 = getelementptr inbounds %struct.pmclog_buffer, %struct.pmclog_buffer* %91, i32 1
  store %struct.pmclog_buffer* %92, %struct.pmclog_buffer** %1, align 8
  br label %69

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %35

97:                                               ; preds = %35
  %98 = load i32, i32* @MTX_DEF, align 4
  %99 = call i32 @mtx_init(i32* @pmc_kthread_mtx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i8* @malloc_domainset(i32, i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i32 @PMCLOG_INIT_BUFFER_DESCRIPTOR(%struct.pmclog_buffer*, i8*, i32) #1

declare dso_local i32 @pmc_plb_rele_unlocked(%struct.pmclog_buffer*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
