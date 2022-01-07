; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_tst_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_tst_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfr_ktable = type { i32 }
%struct.pfr_kentry = type { i64 }

@PFR_FLAG_REPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_FB_NONE = common dso_local global i32 0, align 4
@PFR_FB_NOTMATCH = common dso_local global i32 0, align 4
@PFR_FB_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_tst_addrs(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca %struct.pfr_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_kentry*, align 8
  %14 = alloca %struct.pfr_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %17 = call i32 (...) @PF_RULES_RASSERT()
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @PFR_FLAG_REPLACE, align 4
  %20 = call i32 @ACCEPT_FLAGS(i32 %18, i32 %19)
  %21 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %22 = call i64 @pfr_validate_table(%struct.pfr_table* %21, i32 0, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %113

26:                                               ; preds = %5
  %27 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %28 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %27)
  store %struct.pfr_ktable* %28, %struct.pfr_ktable** %12, align 8
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %30 = icmp eq %struct.pfr_ktable* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %33 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* @ESRCH, align 4
  store i32 %39, i32* %6, align 4
  br label %113

40:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  %41 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  store %struct.pfr_addr* %41, %struct.pfr_addr** %14, align 8
  br label %42

42:                                               ; preds = %101, %40
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %106

46:                                               ; preds = %42
  %47 = load %struct.pfr_addr*, %struct.pfr_addr** %14, align 8
  %48 = call i64 @pfr_validate_addr(%struct.pfr_addr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %6, align 4
  br label %113

52:                                               ; preds = %46
  %53 = load %struct.pfr_addr*, %struct.pfr_addr** %14, align 8
  %54 = call i64 @ADDR_NETWORK(%struct.pfr_addr* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %6, align 4
  br label %113

58:                                               ; preds = %52
  %59 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %60 = load %struct.pfr_addr*, %struct.pfr_addr** %14, align 8
  %61 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %59, %struct.pfr_addr* %60, i32 0)
  store %struct.pfr_kentry* %61, %struct.pfr_kentry** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @PFR_FLAG_REPLACE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.pfr_addr*, %struct.pfr_addr** %14, align 8
  %68 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %69 = call i32 @pfr_copyout_addr(%struct.pfr_addr* %67, %struct.pfr_kentry* %68)
  br label %70

70:                                               ; preds = %66, %58
  %71 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %72 = icmp eq %struct.pfr_kentry* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @PFR_FB_NONE, align 4
  br label %86

75:                                               ; preds = %70
  %76 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %77 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @PFR_FB_NOTMATCH, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @PFR_FB_MATCH, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  br label %86

86:                                               ; preds = %84, %73
  %87 = phi i32 [ %74, %73 ], [ %85, %84 ]
  %88 = load %struct.pfr_addr*, %struct.pfr_addr** %14, align 8
  %89 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %91 = icmp ne %struct.pfr_kentry* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %94 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %92, %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  %104 = load %struct.pfr_addr*, %struct.pfr_addr** %14, align 8
  %105 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %104, i32 1
  store %struct.pfr_addr* %105, %struct.pfr_addr** %14, align 8
  br label %42

106:                                              ; preds = %42
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %56, %50, %38, %24
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @PF_RULES_RASSERT(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local i64 @ADDR_NETWORK(%struct.pfr_addr*) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local i32 @pfr_copyout_addr(%struct.pfr_addr*, %struct.pfr_kentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
