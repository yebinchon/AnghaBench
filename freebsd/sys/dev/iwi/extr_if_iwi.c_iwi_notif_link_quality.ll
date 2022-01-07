; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_notif_link_quality.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_notif_link_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32 }
%struct.iwi_notif = type { i32, i32 }
%struct.iwi_notif_link_quality = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Notification (%u) - len=%d, sizeof=%zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Notification: (%u) too short (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_notif*)* @iwi_notif_link_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_notif_link_quality(%struct.iwi_softc* %0, %struct.iwi_notif* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_notif*, align 8
  %5 = alloca %struct.iwi_notif_link_quality*, align 8
  %6 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_notif* %1, %struct.iwi_notif** %4, align 8
  %7 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %8 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16toh(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %12 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DPRINTFN(i32 5, i8* inttoptr (i64 4 to i8*))
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %21 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DPRINTFN(i32 5, i8* %25)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %29 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %28, i64 1
  %30 = bitcast %struct.iwi_notif* %29 to %struct.iwi_notif_link_quality*
  store %struct.iwi_notif_link_quality* %30, %struct.iwi_notif_link_quality** %5, align 8
  %31 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %31, i32 0, i32 1
  %33 = load %struct.iwi_notif_link_quality*, %struct.iwi_notif_link_quality** %5, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.iwi_notif_link_quality* %33, i32 4)
  %35 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %27, %19
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.iwi_notif_link_quality*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
