; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_login_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_login_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ORB_FUN_LGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sbp_login_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_login_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sbp_dev*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sbp_dev*
  store %struct.sbp_dev* %5, %struct.sbp_dev** %3, align 8
  %6 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %7 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SBP_LOCK_ASSERT(i32 %10)
  %12 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %13 = load i32, i32* @ORB_FUN_LGI, align 4
  %14 = call i32 @sbp_mgm_orb(%struct.sbp_dev* %12, i32 %13, i32* null)
  ret void
}

declare dso_local i32 @SBP_LOCK_ASSERT(i32) #1

declare dso_local i32 @sbp_mgm_orb(%struct.sbp_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
