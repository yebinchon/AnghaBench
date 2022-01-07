; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_profile_get_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_profile_get_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@profile_get_descriptor.profiles = internal constant [12 x %struct.TYPE_4__*] [%struct.TYPE_4__* @audio_sink_profile_descriptor, %struct.TYPE_4__* @audio_source_profile_descriptor, %struct.TYPE_4__* @dun_profile_descriptor, %struct.TYPE_4__* @ftrn_profile_descriptor, %struct.TYPE_4__* @irmc_profile_descriptor, %struct.TYPE_4__* @irmc_command_profile_descriptor, %struct.TYPE_4__* @lan_profile_descriptor, %struct.TYPE_4__* @opush_profile_descriptor, %struct.TYPE_4__* @sp_profile_descriptor, %struct.TYPE_4__* @nap_profile_descriptor, %struct.TYPE_4__* @gn_profile_descriptor, %struct.TYPE_4__* @panu_profile_descriptor], align 16
@audio_sink_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@audio_source_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@dun_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@ftrn_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@irmc_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@irmc_command_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@lan_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@opush_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@sp_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@nap_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@gn_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8
@panu_profile_descriptor = external dso_local global %struct.TYPE_4__, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @profile_get_descriptor(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 12
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [12 x %struct.TYPE_4__*], [12 x %struct.TYPE_4__*]* @profile_get_descriptor.profiles, i64 0, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x %struct.TYPE_4__*], [12 x %struct.TYPE_4__*]* @profile_get_descriptor.profiles, i64 0, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %2, align 8
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
