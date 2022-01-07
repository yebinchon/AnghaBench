; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@mpt_user_reply_handler = common dso_local global i32 0, align 4
@MPT_HANDLER_REPLY = common dso_local global i32 0, align 4
@user_handler_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_user_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_user_detach(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @destroy_dev(i32 %6)
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %9 = call i32 @MPT_LOCK(%struct.mpt_softc* %8)
  %10 = load i32, i32* @mpt_user_reply_handler, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %13 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %14 = load i32, i32* @user_handler_id, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %12, i32 %13, i32 %16, i32 %14)
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %19 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %18)
  ret void
}

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_deregister_handler(%struct.mpt_softc*, i32, i32, i32) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
