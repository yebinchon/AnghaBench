; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp_targ.c_sbp_targ_remove_orb_info_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp_targ.c_sbp_targ_remove_orb_info_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_targ_login = type { i32 }
%struct.orb_info = type { i32 }

@orb_info = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_targ_login*, %struct.orb_info*)* @sbp_targ_remove_orb_info_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_targ_remove_orb_info_locked(%struct.sbp_targ_login* %0, %struct.orb_info* %1) #0 {
  %3 = alloca %struct.sbp_targ_login*, align 8
  %4 = alloca %struct.orb_info*, align 8
  store %struct.sbp_targ_login* %0, %struct.sbp_targ_login** %3, align 8
  store %struct.orb_info* %1, %struct.orb_info** %4, align 8
  %5 = load %struct.sbp_targ_login*, %struct.sbp_targ_login** %3, align 8
  %6 = getelementptr inbounds %struct.sbp_targ_login, %struct.sbp_targ_login* %5, i32 0, i32 0
  %7 = load %struct.orb_info*, %struct.orb_info** %4, align 8
  %8 = load i32, i32* @orb_info, align 4
  %9 = load i32, i32* @link, align 4
  %10 = call i32 @STAILQ_REMOVE(i32* %6, %struct.orb_info* %7, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.orb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
