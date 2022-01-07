; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_framework.c_mac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_framework.c_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mac_static_policy_list = common dso_local global i32 0, align 4
@mac_policy_list = common dso_local global i32 0, align 4
@mac_policy_rm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mac_policy_rm\00", align 1
@RM_NOWITNESS = common dso_local global i32 0, align 4
@RM_RECURSE = common dso_local global i32 0, align 4
@mac_policy_sx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"mac_policy_sx\00", align 1
@SX_NOWITNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_init() #0 {
  %1 = call i32 @LIST_INIT(i32* @mac_static_policy_list)
  %2 = call i32 @LIST_INIT(i32* @mac_policy_list)
  %3 = call i32 (...) @mac_labelzone_init()
  %4 = load i32, i32* @RM_NOWITNESS, align 4
  %5 = load i32, i32* @RM_RECURSE, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @rm_init_flags(i32* @mac_policy_rm, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @SX_NOWITNESS, align 4
  %9 = call i32 @sx_init_flags(i32* @mac_policy_sx, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @mac_labelzone_init(...) #1

declare dso_local i32 @rm_init_flags(i32*, i8*, i32) #1

declare dso_local i32 @sx_init_flags(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
