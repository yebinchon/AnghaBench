; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_bgd.c_bgd_profile_create_group_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_bgd.c_bgd_profile_create_group_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_DATA_UUID16 = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_PUBLIC_BROWSE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @bgd_profile_create_group_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgd_profile_create_group_id(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ugt i32* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %22

15:                                               ; preds = %4
  %16 = load i32, i32* @SDP_DATA_UUID16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @SDP_PUT8(i32 %16, i32* %17)
  %19 = load i32, i32* @SDP_SERVICE_CLASS_PUBLIC_BROWSE_GROUP, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @SDP_PUT16(i32 %19, i32* %20)
  store i32 3, i32* %5, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
