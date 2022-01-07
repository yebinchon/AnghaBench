; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_msschan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_msschan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_chinfo = type { i32, %struct.mss_info* }
%struct.mss_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @msschan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msschan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mss_chinfo*, align 8
  %9 = alloca %struct.mss_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.mss_chinfo*
  store %struct.mss_chinfo* %11, %struct.mss_chinfo** %8, align 8
  %12 = load %struct.mss_chinfo*, %struct.mss_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.mss_chinfo, %struct.mss_chinfo* %12, i32 0, i32 1
  %14 = load %struct.mss_info*, %struct.mss_info** %13, align 8
  store %struct.mss_info* %14, %struct.mss_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.mss_chinfo*, %struct.mss_chinfo** %8, align 8
  %21 = getelementptr inbounds %struct.mss_chinfo, %struct.mss_chinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sndbuf_dma(i32 %22, i32 %23)
  %25 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %26 = call i32 @mss_lock(%struct.mss_info* %25)
  %27 = load %struct.mss_chinfo*, %struct.mss_chinfo** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mss_trigger(%struct.mss_chinfo* %27, i32 %28)
  %30 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  %31 = call i32 @mss_unlock(%struct.mss_info* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @sndbuf_dma(i32, i32) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @mss_trigger(%struct.mss_chinfo*, i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
