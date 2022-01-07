; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmcpl_ct_sample = type { i32 }

@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [58 x i8] c"version: 1\0Acreator: pmcstat\0Apositions: instr line\0Aevents:\00", align 1
@pmcstat_npmcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0Asummary:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pmcpl_ct_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmcpl_ct_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_print() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [40 x i8], align 16
  %3 = alloca %struct.pmcpl_ct_sample, align 4
  %4 = call i32 @pmcpl_ct_samples_root(%struct.pmcpl_ct_sample* %3)
  %5 = call i32 (...) @pmcpl_ct_expand_inline()
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %23, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @pmcstat_npmcs, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %14 = load i32, i32* %1, align 4
  %15 = call i8* @pmcstat_pmcindex_to_name(i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @snprintf(i8* %13, i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %16)
  %18 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %19 = call i32 @pmcpl_ct_fixup_pmcname(i8* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %38, %26
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @pmcstat_npmcs, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @PMCPL_CT_SAMPLE(i32 %35, %struct.pmcpl_ct_sample* %3)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %29

41:                                               ; preds = %29
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* @pmcpl_ct_root, align 4
  %45 = call i32 @pmcpl_ct_bfs(i32 %44)
  %46 = call i32 @pmcpl_ct_samples_free(%struct.pmcpl_ct_sample* %3)
  ret void
}

declare dso_local i32 @pmcpl_ct_samples_root(%struct.pmcpl_ct_sample*) #1

declare dso_local i32 @pmcpl_ct_expand_inline(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @pmcstat_pmcindex_to_name(i32) #1

declare dso_local i32 @pmcpl_ct_fixup_pmcname(i8*) #1

declare dso_local i32 @PMCPL_CT_SAMPLE(i32, %struct.pmcpl_ct_sample*) #1

declare dso_local i32 @pmcpl_ct_bfs(i32) #1

declare dso_local i32 @pmcpl_ct_samples_free(%struct.pmcpl_ct_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
