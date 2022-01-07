; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_attach_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_attach_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, i32*, %struct.pfr_ktable* }
%struct.pf_ruleset = type { %struct.pf_anchor* }
%struct.pf_anchor = type { i8* }
%struct.pfr_table = type { %struct.pfr_table*, %struct.pfr_table* }

@time_second = common dso_local global i32 0, align 4
@PFR_REFCNT_RULE = common dso_local global i64 0, align 8
@PFR_TFLAG_REFERENCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pfr_ktable* @pfr_attach_table(%struct.pf_ruleset* %0, i8* %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca %struct.pf_ruleset*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pfr_ktable*, align 8
  %7 = alloca %struct.pfr_ktable*, align 8
  %8 = alloca %struct.pfr_table, align 8
  %9 = alloca %struct.pf_anchor*, align 8
  store %struct.pf_ruleset* %0, %struct.pf_ruleset** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.pf_ruleset*, %struct.pf_ruleset** %4, align 8
  %11 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %10, i32 0, i32 0
  %12 = load %struct.pf_anchor*, %struct.pf_anchor** %11, align 8
  store %struct.pf_anchor* %12, %struct.pf_anchor** %9, align 8
  %13 = call i32 (...) @PF_RULES_WASSERT()
  %14 = call i32 @bzero(%struct.pfr_table* %8, i32 16)
  %15 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %8, i32 0, i32 1
  %16 = load %struct.pfr_table*, %struct.pfr_table** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlcpy(%struct.pfr_table* %16, i8* %17, i32 8)
  %19 = load %struct.pf_anchor*, %struct.pf_anchor** %9, align 8
  %20 = icmp ne %struct.pf_anchor* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %8, i32 0, i32 0
  %23 = load %struct.pfr_table*, %struct.pfr_table** %22, align 8
  %24 = load %struct.pf_anchor*, %struct.pf_anchor** %9, align 8
  %25 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlcpy(%struct.pfr_table* %23, i8* %26, i32 8)
  br label %28

28:                                               ; preds = %21, %2
  %29 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %8)
  store %struct.pfr_ktable* %29, %struct.pfr_ktable** %6, align 8
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %31 = icmp eq %struct.pfr_ktable* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i32, i32* @time_second, align 4
  %34 = call %struct.pfr_ktable* @pfr_create_ktable(%struct.pfr_table* %8, i32 %33, i32 1)
  store %struct.pfr_ktable* %34, %struct.pfr_ktable** %6, align 8
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %36 = icmp eq %struct.pfr_ktable* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %3, align 8
  br label %84

38:                                               ; preds = %32
  %39 = load %struct.pf_anchor*, %struct.pf_anchor** %9, align 8
  %40 = icmp ne %struct.pf_anchor* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %8, i32 0, i32 0
  %43 = load %struct.pfr_table*, %struct.pfr_table** %42, align 8
  %44 = call i32 @bzero(%struct.pfr_table* %43, i32 8)
  %45 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %8)
  store %struct.pfr_ktable* %45, %struct.pfr_ktable** %7, align 8
  %46 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %47 = icmp eq %struct.pfr_ktable* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = call %struct.pfr_ktable* @pfr_create_ktable(%struct.pfr_table* %8, i32 0, i32 1)
  store %struct.pfr_ktable* %49, %struct.pfr_ktable** %7, align 8
  %50 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %51 = icmp eq %struct.pfr_ktable* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %54 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %53, i32 0)
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %3, align 8
  br label %84

55:                                               ; preds = %48
  %56 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %57 = call i32 @pfr_insert_ktable(%struct.pfr_ktable* %56)
  br label %58

58:                                               ; preds = %55, %41
  %59 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %60 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %61 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %60, i32 0, i32 2
  store %struct.pfr_ktable* %59, %struct.pfr_ktable** %61, align 8
  br label %62

62:                                               ; preds = %58, %38
  %63 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %64 = call i32 @pfr_insert_ktable(%struct.pfr_ktable* %63)
  br label %65

65:                                               ; preds = %62, %28
  %66 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %67 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @PFR_REFCNT_RULE, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %65
  %75 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %76 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %77 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PFR_TFLAG_REFERENCED, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @pfr_setflags_ktable(%struct.pfr_ktable* %75, i32 %80)
  br label %82

82:                                               ; preds = %74, %65
  %83 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  store %struct.pfr_ktable* %83, %struct.pfr_ktable** %3, align 8
  br label %84

84:                                               ; preds = %82, %52, %37
  %85 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  ret %struct.pfr_ktable* %85
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @bzero(%struct.pfr_table*, i32) #1

declare dso_local i32 @strlcpy(%struct.pfr_table*, i8*, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local %struct.pfr_ktable* @pfr_create_ktable(%struct.pfr_table*, i32, i32) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_insert_ktable(%struct.pfr_ktable*) #1

declare dso_local i32 @pfr_setflags_ktable(%struct.pfr_ktable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
