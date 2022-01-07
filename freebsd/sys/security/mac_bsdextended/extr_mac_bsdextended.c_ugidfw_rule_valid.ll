; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_rule_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_rule_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MBS_ALL_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MBO_ALL_FLAGS = common dso_local global i32 0, align 4
@MBO_TYPE_DEFINED = common dso_local global i32 0, align 4
@MBO_ALL_TYPE = common dso_local global i32 0, align 4
@MBI_ALLPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_bsdextended_rule*)* @ugidfw_rule_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugidfw_rule_valid(%struct.mac_bsdextended_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_bsdextended_rule*, align 8
  store %struct.mac_bsdextended_rule* %0, %struct.mac_bsdextended_rule** %3, align 8
  %4 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %5 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MBS_ALL_FLAGS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MBS_ALL_FLAGS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %16 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MBS_ALL_FLAGS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MBS_ALL_FLAGS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %77

25:                                               ; preds = %14
  %26 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %27 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MBO_ALL_FLAGS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MBO_ALL_FLAGS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %77

36:                                               ; preds = %25
  %37 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %38 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MBO_ALL_FLAGS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MBO_ALL_FLAGS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %2, align 4
  br label %77

47:                                               ; preds = %36
  %48 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %49 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %57 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MBO_ALL_TYPE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MBO_ALL_TYPE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %77

66:                                               ; preds = %55, %47
  %67 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %3, align 8
  %68 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MBI_ALLPERM, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MBI_ALLPERM, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %74, %64, %45, %34, %23, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
