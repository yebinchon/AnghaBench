; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_shutdown_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_shutdown_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_RULESET_SCRUB = common dso_local global i32 0, align 4
@PF_DEBUG_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"shutdown_pf: SCRUB\0A\00", align 1
@PF_RULESET_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"shutdown_pf: FILTER\0A\00", align 1
@PF_RULESET_NAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"shutdown_pf: NAT\0A\00", align 1
@PF_RULESET_BINAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"shutdown_pf: BINAT\0A\00", align 1
@PF_RULESET_RDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"shutdown_pf: RDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @shutdown_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shutdown_pf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 0, i8* %3, align 1
  br label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %6 = load i32, i32* @PF_RULESET_SCRUB, align 4
  %7 = call i32 @pf_begin_rules(i32* %5, i32 %6, i8* %3)
  store i32 %7, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* @PF_DEBUG_MISC, align 4
  %11 = call i32 @DPFPRINTF(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %71

12:                                               ; preds = %4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 1
  %14 = load i32, i32* @PF_RULESET_FILTER, align 4
  %15 = call i32 @pf_begin_rules(i32* %13, i32 %14, i8* %3)
  store i32 %15, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @PF_DEBUG_MISC, align 4
  %19 = call i32 @DPFPRINTF(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %71

20:                                               ; preds = %12
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  %22 = load i32, i32* @PF_RULESET_NAT, align 4
  %23 = call i32 @pf_begin_rules(i32* %21, i32 %22, i8* %3)
  store i32 %23, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @PF_DEBUG_MISC, align 4
  %27 = call i32 @DPFPRINTF(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %71

28:                                               ; preds = %20
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 3
  %30 = load i32, i32* @PF_RULESET_BINAT, align 4
  %31 = call i32 @pf_begin_rules(i32* %29, i32 %30, i8* %3)
  store i32 %31, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @PF_DEBUG_MISC, align 4
  %35 = call i32 @DPFPRINTF(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %71

36:                                               ; preds = %28
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 4
  %38 = load i32, i32* @PF_RULESET_RDR, align 4
  %39 = call i32 @pf_begin_rules(i32* %37, i32 %38, i8* %3)
  store i32 %39, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @PF_DEBUG_MISC, align 4
  %43 = call i32 @DPFPRINTF(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %71

44:                                               ; preds = %36
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* @PF_RULESET_SCRUB, align 4
  %48 = call i32 @pf_commit_rules(i32 %46, i32 %47, i8* %3)
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PF_RULESET_FILTER, align 4
  %52 = call i32 @pf_commit_rules(i32 %50, i32 %51, i8* %3)
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PF_RULESET_NAT, align 4
  %56 = call i32 @pf_commit_rules(i32 %54, i32 %55, i8* %3)
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PF_RULESET_BINAT, align 4
  %60 = call i32 @pf_commit_rules(i32 %58, i32 %59, i8* %3)
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 4
  %62 = load i32, i32* %61, align 16
  %63 = load i32, i32* @PF_RULESET_RDR, align 4
  %64 = call i32 @pf_commit_rules(i32 %62, i32 %63, i8* %3)
  %65 = call i32 (...) @pf_clear_tables()
  store i32 %65, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %71

68:                                               ; preds = %44
  %69 = call i32 (...) @pf_clear_states()
  %70 = call i32 @pf_clear_srcnodes(i32* null)
  br label %71

71:                                               ; preds = %68, %67, %41, %33, %25, %17, %9
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @pf_begin_rules(i32*, i32, i8*) #1

declare dso_local i32 @DPFPRINTF(i32, i8*) #1

declare dso_local i32 @pf_commit_rules(i32, i32, i8*) #1

declare dso_local i32 @pf_clear_tables(...) #1

declare dso_local i32 @pf_clear_states(...) #1

declare dso_local i32 @pf_clear_srcnodes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
