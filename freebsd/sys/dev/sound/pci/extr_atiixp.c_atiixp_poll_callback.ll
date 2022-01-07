; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_poll_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atiixp_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_poll_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atiixp_info*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.atiixp_info*
  store %struct.atiixp_info* %6, %struct.atiixp_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %8 = icmp eq %struct.atiixp_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %12 = call i32 @atiixp_lock(%struct.atiixp_info* %11)
  %13 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %14 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %19 = call i64 @atiixp_chan_active(%struct.atiixp_info* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %10
  %22 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %23 = call i32 @atiixp_unlock(%struct.atiixp_info* %22)
  br label %66

24:                                               ; preds = %17
  %25 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %26 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %25, i32 0, i32 2
  %27 = call i64 @atiixp_poll_channel(%struct.TYPE_2__* %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %34 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %33, i32 0, i32 1
  %35 = call i64 @atiixp_poll_channel(%struct.TYPE_2__* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 0
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %42 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %41, i32 0, i32 3
  %43 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %44 = call i32 @callout_reset(i32* %42, i32 1, void (i8*)* @atiixp_poll_callback, %struct.atiixp_info* %43)
  %45 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %46 = call i32 @atiixp_unlock(%struct.atiixp_info* %45)
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %24
  %51 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %52 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @chn_intr(i32 %54)
  br label %56

56:                                               ; preds = %50, %24
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %62 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @chn_intr(i32 %64)
  br label %66

66:                                               ; preds = %9, %21, %60, %56
  ret void
}

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i64 @atiixp_chan_active(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

declare dso_local i64 @atiixp_poll_channel(%struct.TYPE_2__*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.atiixp_info*) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
