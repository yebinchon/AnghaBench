; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_copyout_astats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_copyout_astats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_astats = type { i8***, i8***, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pfr_kentry = type { %struct.pfr_kcounters }
%struct.pfr_kcounters = type { i32**, i32**, i32 }
%struct.pfr_walktree = type { i32 }

@PFR_TFLAG_COUNTERS = common dso_local global i32 0, align 4
@PFR_FB_NOCOUNT = common dso_local global i32 0, align 4
@PFR_DIR_MAX = common dso_local global i32 0, align 4
@PFR_OP_ADDR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_astats*, %struct.pfr_kentry*, %struct.pfr_walktree*)* @pfr_copyout_astats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_copyout_astats(%struct.pfr_astats* %0, %struct.pfr_kentry* %1, %struct.pfr_walktree* %2) #0 {
  %4 = alloca %struct.pfr_astats*, align 8
  %5 = alloca %struct.pfr_kentry*, align 8
  %6 = alloca %struct.pfr_walktree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfr_kcounters*, align 8
  store %struct.pfr_astats* %0, %struct.pfr_astats** %4, align 8
  store %struct.pfr_kentry* %1, %struct.pfr_kentry** %5, align 8
  store %struct.pfr_walktree* %2, %struct.pfr_walktree** %6, align 8
  %10 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %11 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %10, i32 0, i32 0
  store %struct.pfr_kcounters* %11, %struct.pfr_kcounters** %9, align 8
  %12 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %13 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %12, i32 0, i32 2
  %14 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %15 = call i32 @pfr_copyout_addr(%struct.TYPE_2__* %13, %struct.pfr_kentry* %14)
  %16 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %9, align 8
  %17 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %20 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pfr_walktree*, %struct.pfr_walktree** %6, align 8
  %22 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PFR_TFLAG_COUNTERS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %3
  %28 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %29 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %28, i32 0, i32 1
  %30 = load i8***, i8**** %29, align 8
  %31 = call i32 @bzero(i8*** %30, i32 8)
  %32 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %33 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %32, i32 0, i32 0
  %34 = load i8***, i8**** %33, align 8
  %35 = call i32 @bzero(i8*** %34, i32 8)
  %36 = load i32, i32* @PFR_FB_NOCOUNT, align 4
  %37 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %38 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %102

40:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %99, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PFR_DIR_MAX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %95, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PFR_OP_ADDR_MAX, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %46
  %51 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %9, align 8
  %52 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @counter_u64_fetch(i32 %61)
  %63 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %64 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %63, i32 0, i32 1
  %65 = load i8***, i8**** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8**, i8*** %65, i64 %67
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %62, i8** %72, align 8
  %73 = load %struct.pfr_kcounters*, %struct.pfr_kcounters** %9, align 8
  %74 = getelementptr inbounds %struct.pfr_kcounters, %struct.pfr_kcounters* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @counter_u64_fetch(i32 %83)
  %85 = load %struct.pfr_astats*, %struct.pfr_astats** %4, align 8
  %86 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %85, i32 0, i32 0
  %87 = load i8***, i8**** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8**, i8*** %87, i64 %89
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %84, i8** %94, align 8
  br label %95

95:                                               ; preds = %50
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %46

98:                                               ; preds = %46
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %41

102:                                              ; preds = %27, %41
  ret void
}

declare dso_local i32 @pfr_copyout_addr(%struct.TYPE_2__*, %struct.pfr_kentry*) #1

declare dso_local i32 @bzero(i8***, i32) #1

declare dso_local i8* @counter_u64_fetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
