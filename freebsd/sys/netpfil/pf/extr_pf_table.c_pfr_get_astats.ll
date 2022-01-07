; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_get_astats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_get_astats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_astats = type { i32 }
%struct.pfr_ktable = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32*, i32, %struct.pfr_walktree*)*, i32 }
%struct.pfr_walktree = type { i32, i32, %struct.pfr_astats*, i32 }
%struct.TYPE_3__ = type { i32 (i32*, i32, %struct.pfr_walktree*)*, i32 }
%struct.pfr_kentryworkq = type { i32 }

@time_second = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFRW_GET_ASTATS = common dso_local global i32 0, align 4
@pfr_walktree = common dso_local global i32 0, align 4
@PFR_FLAG_CLSTATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pfr_get_astats: corruption detected (%d).\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_get_astats(%struct.pfr_table* %0, %struct.pfr_astats* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_table*, align 8
  %7 = alloca %struct.pfr_astats*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfr_ktable*, align 8
  %11 = alloca %struct.pfr_walktree, align 8
  %12 = alloca %struct.pfr_kentryworkq, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %6, align 8
  store %struct.pfr_astats* %1, %struct.pfr_astats** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* @time_second, align 8
  store i64 %15, i64* %14, align 8
  %16 = call i32 (...) @PF_RULES_RASSERT()
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ACCEPT_FLAGS(i32 %17, i32 0)
  %19 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %20 = call i64 @pfr_validate_table(%struct.pfr_table* %19, i32 0, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %121

24:                                               ; preds = %4
  %25 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %26 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %25)
  store %struct.pfr_ktable* %26, %struct.pfr_ktable** %10, align 8
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %28 = icmp eq %struct.pfr_ktable* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %31 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* @ESRCH, align 4
  store i32 %37, i32* %5, align 4
  br label %121

38:                                               ; preds = %29
  %39 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %40 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %47 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %121

50:                                               ; preds = %38
  %51 = call i32 @bzero(%struct.pfr_walktree* %11, i32 24)
  %52 = load i32, i32* @PFRW_GET_ASTATS, align 4
  %53 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %55 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 2
  store %struct.pfr_astats* %54, %struct.pfr_astats** %55, align 8
  %56 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %57 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %61 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %65 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (i32*, i32, %struct.pfr_walktree*)*, i32 (i32*, i32, %struct.pfr_walktree*)** %67, align 8
  %69 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %70 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* @pfr_walktree, align 4
  %74 = call i32 %68(i32* %72, i32 %73, %struct.pfr_walktree* %11)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %50
  %78 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %79 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (i32*, i32, %struct.pfr_walktree*)*, i32 (i32*, i32, %struct.pfr_walktree*)** %81, align 8
  %83 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %84 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* @pfr_walktree, align 4
  %88 = call i32 %82(i32* %86, i32 %87, %struct.pfr_walktree* %11)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %77, %50
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @PFR_FLAG_CLSTATS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %99 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %98, %struct.pfr_kentryworkq* %12, i32* null, i32 0)
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq* %12, i64 %100, i32 0)
  br label %102

102:                                              ; preds = %97, %92, %89
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %121

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ENOTTY, align 4
  store i32 %115, i32* %5, align 4
  br label %121

116:                                              ; preds = %107
  %117 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %118 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %116, %111, %105, %45, %36, %22
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @PF_RULES_RASSERT(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
