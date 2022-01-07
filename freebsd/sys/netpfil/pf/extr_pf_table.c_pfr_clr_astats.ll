; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_clr_astats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_clr_astats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfr_ktable = type { i32 }
%struct.pfr_kentryworkq = type { i32 }
%struct.pfr_kentry = type { i32 }

@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_FEEDBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_FB_CLEARED = common dso_local global i32 0, align 4
@PFR_FB_NONE = common dso_local global i32 0, align 4
@pfrke_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_astats(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca %struct.pfr_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_kentryworkq, align 4
  %14 = alloca %struct.pfr_kentry*, align 8
  %15 = alloca %struct.pfr_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  %19 = call i32 (...) @PF_RULES_WASSERT()
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %22 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ACCEPT_FLAGS(i32 %20, i32 %23)
  %25 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %26 = call i64 @pfr_validate_table(%struct.pfr_table* %25, i32 0, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %117

30:                                               ; preds = %5
  %31 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %32 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %31)
  store %struct.pfr_ktable* %32, %struct.pfr_ktable** %12, align 8
  %33 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %34 = icmp eq %struct.pfr_ktable* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %37 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* @ESRCH, align 4
  store i32 %43, i32* %6, align 4
  br label %117

44:                                               ; preds = %35
  %45 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %13)
  store i32 0, i32* %16, align 4
  %46 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  store %struct.pfr_addr* %46, %struct.pfr_addr** %15, align 8
  br label %47

47:                                               ; preds = %87, %44
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %53 = call i64 @pfr_validate_addr(%struct.pfr_addr* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @senderr(i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %60 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %61 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %59, %struct.pfr_addr* %60, i32 1)
  store %struct.pfr_kentry* %61, %struct.pfr_kentry** %14, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %68 = icmp ne %struct.pfr_kentry* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @PFR_FB_CLEARED, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @PFR_FB_NONE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %76 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %58
  %78 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %79 = icmp ne %struct.pfr_kentry* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %82 = load i32, i32* @pfrke_workq, align 4
  %83 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq* %13, %struct.pfr_kentry* %81, i32 %82)
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %80, %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %91 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %90, i32 1
  store %struct.pfr_addr* %91, %struct.pfr_addr** %15, align 8
  br label %47

92:                                               ; preds = %47
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = call i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq* %13, i32 0, i32 0)
  br label %99

99:                                               ; preds = %97, %92
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %18, align 4
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %6, align 4
  br label %117

106:                                              ; No predecessors!
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @pfr_reset_feedback(%struct.pfr_addr* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %105, %42, %28
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq*, %struct.pfr_kentry*, i32) #1

declare dso_local i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq*, i32, i32) #1

declare dso_local i32 @pfr_reset_feedback(%struct.pfr_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
