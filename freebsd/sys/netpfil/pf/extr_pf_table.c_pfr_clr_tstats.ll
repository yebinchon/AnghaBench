; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_clr_tstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_clr_tstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktableworkq = type { i32 }
%struct.pfr_ktable = type { i32 }

@time_second = common dso_local global i64 0, align 8
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_ADDRSTOO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pfr_ktablehead = common dso_local global i32 0, align 4
@V_pfr_ktables = common dso_local global i32 0, align 4
@pfrkt_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_tstats(%struct.pfr_table* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfr_ktableworkq, align 4
  %11 = alloca %struct.pfr_ktable*, align 8
  %12 = alloca %struct.pfr_ktable, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* @time_second, align 8
  store i64 %16, i64* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %19 = load i32, i32* @PFR_FLAG_ADDRSTOO, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ACCEPT_FLAGS(i32 %17, i32 %20)
  %22 = call i32 @SLIST_INIT(%struct.pfr_ktableworkq* %10)
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %51, %4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %28, i64 %30
  %32 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %12, i32 0, i32 0
  %33 = call i32 @bcopy(%struct.pfr_table* %31, i32* %32, i32 4)
  %34 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %12, i32 0, i32 0
  %35 = call i64 @pfr_validate_table(i32* %34, i32 0, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %72

39:                                               ; preds = %27
  %40 = load i32, i32* @pfr_ktablehead, align 4
  %41 = call %struct.pfr_ktable* @RB_FIND(i32 %40, i32* @V_pfr_ktables, %struct.pfr_ktable* %12)
  store %struct.pfr_ktable* %41, %struct.pfr_ktable** %11, align 8
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %11, align 8
  %43 = icmp ne %struct.pfr_ktable* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.pfr_ktable*, %struct.pfr_ktable** %11, align 8
  %46 = load i32, i32* @pfrkt_workq, align 4
  %47 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_ktableworkq* %10, %struct.pfr_ktable* %45, i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %44, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %23

54:                                               ; preds = %23
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %15, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PFR_FLAG_ADDRSTOO, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @pfr_clstats_ktables(%struct.pfr_ktableworkq* %10, i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_ktableworkq*) #1

declare dso_local i32 @bcopy(%struct.pfr_table*, i32*, i32) #1

declare dso_local i64 @pfr_validate_table(i32*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @RB_FIND(i32, i32*, %struct.pfr_ktable*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_ktableworkq*, %struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_clstats_ktables(%struct.pfr_ktableworkq*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
