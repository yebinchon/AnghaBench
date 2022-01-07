; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_topdisplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_topdisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_sample = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%5.5s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%SAMP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CALLTREE\00", align 1
@pmcstat_pmcinfilter = common dso_local global i32 0, align 4
@pmcpl_ct_root = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@pmcpl_ct_topscreen = common dso_local global i32*** null, align 8
@pmcstat_displayheight = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_ct_topdisplay() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pmcpl_ct_sample, align 4
  %3 = alloca %struct.pmcpl_ct_sample*, align 8
  store %struct.pmcpl_ct_sample* %2, %struct.pmcpl_ct_sample** %3, align 8
  %4 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %3, align 8
  %5 = call i32 @pmcpl_ct_samples_root(%struct.pmcpl_ct_sample* %4)
  %6 = call i32 (...) @pmcpl_ct_node_cleartag()
  %7 = call i32 (i8*, ...) @PMCSTAT_PRINTW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %9 = load i32, i32* @pmcpl_ct_root, align 4
  %10 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %3, align 8
  %11 = call i64 @pmcpl_ct_node_dumptop(i32 %8, i32 %9, %struct.pmcpl_ct_sample* %10, i32 0, i32* %1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @PMCSTAT_PRINTW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32***, i32**** @pmcpl_ct_topscreen, align 8
  %17 = getelementptr inbounds i32**, i32*** %16, i64 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  store i32* null, i32** %21, align 8
  %22 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %3, align 8
  %23 = load i32, i32* @pmcstat_pmcinfilter, align 4
  %24 = load i64, i64* @pmcstat_displayheight, align 8
  %25 = sub nsw i64 %24, 2
  %26 = call i32 @pmcpl_ct_node_printtop(%struct.pmcpl_ct_sample* %22, i32 %23, i64 %25)
  %27 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %3, align 8
  %28 = call i32 @pmcpl_ct_samples_free(%struct.pmcpl_ct_sample* %27)
  ret void
}

declare dso_local i32 @pmcpl_ct_samples_root(%struct.pmcpl_ct_sample*) #1

declare dso_local i32 @pmcpl_ct_node_cleartag(...) #1

declare dso_local i32 @PMCSTAT_PRINTW(i8*, ...) #1

declare dso_local i64 @pmcpl_ct_node_dumptop(i32, i32, %struct.pmcpl_ct_sample*, i32, i32*) #1

declare dso_local i32 @pmcpl_ct_node_printtop(%struct.pmcpl_ct_sample*, i32, i64) #1

declare dso_local i32 @pmcpl_ct_samples_free(%struct.pmcpl_ct_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
