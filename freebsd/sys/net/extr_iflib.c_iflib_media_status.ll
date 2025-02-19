; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @iflib_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_media_status(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @if_getsoftc(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @CTX_LOCK(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @IFDI_UPDATE_ADMIN_STATUS(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = call i32 @IFDI_MEDIA_STATUS(i32 %12, %struct.ifmediareq* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CTX_UNLOCK(i32 %15)
  ret void
}

declare dso_local i32 @if_getsoftc(i32) #1

declare dso_local i32 @CTX_LOCK(i32) #1

declare dso_local i32 @IFDI_UPDATE_ADMIN_STATUS(i32) #1

declare dso_local i32 @IFDI_MEDIA_STATUS(i32, %struct.ifmediareq*) #1

declare dso_local i32 @CTX_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
