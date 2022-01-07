; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_setflags_ktable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_setflags_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, %struct.pfr_ktable*, i64, %struct.pfr_ktable*, i32* }
%struct.pfr_kentryworkq = type { i32 }

@PFR_TFLAG_REFERENCED = common dso_local global i32 0, align 4
@PFR_TFLAG_REFDANCHOR = common dso_local global i32 0, align 4
@PFR_TFLAG_PERSIST = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@PFR_TFLAG_USRMASK = common dso_local global i32 0, align 4
@PFR_TFLAG_SETMASK = common dso_local global i32 0, align 4
@pfr_ktablehead = common dso_local global i32 0, align 4
@V_pfr_ktables = common dso_local global i32 0, align 4
@PFR_REFCNT_ANCHOR = common dso_local global i64 0, align 8
@V_pfr_ktable_cnt = common dso_local global i32 0, align 4
@PFR_TFLAG_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, i32)* @pfr_setflags_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_setflags_ktable(%struct.pfr_ktable* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_kentryworkq, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @PF_RULES_WASSERT()
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PFR_TFLAG_REFERENCED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PFR_TFLAG_REFDANCHOR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PFR_TFLAG_PERSIST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %16, %11, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @PFR_TFLAG_USRMASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PFR_TFLAG_SETMASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @pfr_ktablehead, align 4
  %43 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %44 = call i32 @RB_REMOVE(i32 %42, i32* @V_pfr_ktables, %struct.pfr_ktable* %43)
  %45 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %46 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %45, i32 0, i32 3
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %46, align 8
  %48 = icmp ne %struct.pfr_ktable* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %41
  %50 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %51 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %50, i32 0, i32 3
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %51, align 8
  %53 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @PFR_REFCNT_ANCHOR, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %49
  %61 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %62 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %61, i32 0, i32 3
  %63 = load %struct.pfr_ktable*, %struct.pfr_ktable** %62, align 8
  %64 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %65 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %64, i32 0, i32 3
  %66 = load %struct.pfr_ktable*, %struct.pfr_ktable** %65, align 8
  %67 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PFR_TFLAG_REFDANCHOR, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  call void @pfr_setflags_ktable(%struct.pfr_ktable* %63, i32 %71)
  br label %72

72:                                               ; preds = %60, %49
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %75 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %74, i32 1)
  %76 = load i32, i32* @V_pfr_ktable_cnt, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* @V_pfr_ktable_cnt, align 4
  br label %114

78:                                               ; preds = %36
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %85 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %90 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %89, %struct.pfr_kentryworkq* %5, i32* null, i32 0)
  %91 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %92 = call i32 @pfr_remove_kentries(%struct.pfr_ktable* %91, %struct.pfr_kentryworkq* %5)
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @PFR_TFLAG_INACTIVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %100 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %99, i32 0, i32 1
  %101 = load %struct.pfr_ktable*, %struct.pfr_ktable** %100, align 8
  %102 = icmp ne %struct.pfr_ktable* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %105 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %104, i32 0, i32 1
  %106 = load %struct.pfr_ktable*, %struct.pfr_ktable** %105, align 8
  %107 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %106, i32 1)
  %108 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %109 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %108, i32 0, i32 1
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %109, align 8
  br label %110

110:                                              ; preds = %103, %98, %93
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %113 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %73
  ret void
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pfr_ktable*) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_remove_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
