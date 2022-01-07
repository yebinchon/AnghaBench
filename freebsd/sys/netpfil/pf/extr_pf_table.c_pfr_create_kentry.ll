; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_create_kentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_create_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kentry = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pfr_addr = type { i64, i32, i32, i32, i32 }

@V_pfr_kentry_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@PFR_DIR_MAX = common dso_local global i32 0, align 4
@PFR_OP_ADDR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pfr_kentry* (%struct.pfr_addr*)* @pfr_create_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr* %0) #0 {
  %2 = alloca %struct.pfr_kentry*, align 8
  %3 = alloca %struct.pfr_addr*, align 8
  %4 = alloca %struct.pfr_kentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pfr_addr* %0, %struct.pfr_addr** %3, align 8
  %7 = load i32, i32* @V_pfr_kentry_z, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.pfr_kentry* @uma_zalloc(i32 %7, i32 %10)
  store %struct.pfr_kentry* %11, %struct.pfr_kentry** %4, align 8
  %12 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %13 = icmp eq %struct.pfr_kentry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %2, align 8
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %17 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %23 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %27 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @FILLIN_SIN(i32 %25, i32 %28)
  br label %46

30:                                               ; preds = %15
  %31 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %32 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %38 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %42 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @FILLIN_SIN6(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %30
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %48 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %51 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %53 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %56 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %58 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %61 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %86, %46
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PFR_DIR_MAX, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PFR_OP_ADDR_MAX, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %73 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %72, i32 0, i32 1
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @pfr_create_kentry_counter(i32* %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %80 = call i32 @pfr_destroy_kentry(%struct.pfr_kentry* %79)
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %2, align 8
  br label %91

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %67

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  store %struct.pfr_kentry* %90, %struct.pfr_kentry** %2, align 8
  br label %91

91:                                               ; preds = %89, %78, %14
  %92 = load %struct.pfr_kentry*, %struct.pfr_kentry** %2, align 8
  ret %struct.pfr_kentry* %92
}

declare dso_local %struct.pfr_kentry* @uma_zalloc(i32, i32) #1

declare dso_local i32 @FILLIN_SIN(i32, i32) #1

declare dso_local i32 @FILLIN_SIN6(i32, i32) #1

declare dso_local i32 @pfr_create_kentry_counter(i32*, i32, i32) #1

declare dso_local i32 @pfr_destroy_kentry(%struct.pfr_kentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
