; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_resolve_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_resolve_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64, i64 }
%struct.elink_params = type { i64 }
%struct.elink_vars = type { i64, i32 }

@ELINK_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@ELINK_FLOW_CTRL_AUTO = common dso_local global i64 0, align 8
@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_ext_phy_resolve_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_ext_phy_resolve_fc(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @ELINK_FLOW_CTRL_NONE, align 8
  %9 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %10 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %12 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ELINK_FLOW_CTRL_AUTO, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %18 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %24 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %25 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %26 = call i32 @elink_ext_phy_update_adv_fc(%struct.elink_phy* %23, %struct.elink_params* %24, %struct.elink_vars* %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %29 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %32 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %59

33:                                               ; preds = %3
  %34 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %35 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %41 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %44 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %58

45:                                               ; preds = %33
  %46 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %47 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  %53 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %54 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %55 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %56 = call i32 @elink_ext_phy_update_adv_fc(%struct.elink_phy* %53, %struct.elink_params* %54, %struct.elink_vars* %55)
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @elink_ext_phy_update_adv_fc(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
