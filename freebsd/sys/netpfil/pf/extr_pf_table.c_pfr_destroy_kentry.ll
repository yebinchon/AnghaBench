; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_destroy_kentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_destroy_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kentry = type { i32 }

@PFR_DIR_MAX = common dso_local global i32 0, align 4
@PFR_OP_ADDR_MAX = common dso_local global i32 0, align 4
@V_pfr_kentry_z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_kentry*)* @pfr_destroy_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_destroy_kentry(%struct.pfr_kentry* %0) #0 {
  %2 = alloca %struct.pfr_kentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pfr_kentry* %0, %struct.pfr_kentry** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PFR_DIR_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PFR_OP_ADDR_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.pfr_kentry*, %struct.pfr_kentry** %2, align 8
  %16 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pfr_destroy_kentry_counter(i32* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %10

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i32, i32* @V_pfr_kentry_z, align 4
  %29 = load %struct.pfr_kentry*, %struct.pfr_kentry** %2, align 8
  %30 = call i32 @uma_zfree(i32 %28, %struct.pfr_kentry* %29)
  ret void
}

declare dso_local i32 @pfr_destroy_kentry_counter(i32*, i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.pfr_kentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
