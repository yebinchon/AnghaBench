; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DSP_DATA_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sb_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sb_info*
  store %struct.sb_info* %5, %struct.sb_info** %3, align 8
  %6 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %7 = call i32 @sb_lock(%struct.sb_info* %6)
  %8 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @sndbuf_runsz(i32 %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %16 = call i32 @sb_unlock(%struct.sb_info* %15)
  %17 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @chn_intr(i32 %20)
  %22 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %23 = call i32 @sb_lock(%struct.sb_info* %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @sndbuf_runsz(i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %33 = call i32 @sb_unlock(%struct.sb_info* %32)
  %34 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @chn_intr(i32 %37)
  %39 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %40 = call i32 @sb_lock(%struct.sb_info* %39)
  br label %41

41:                                               ; preds = %31, %24
  %42 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %43 = load i32, i32* @DSP_DATA_AVAIL, align 4
  %44 = call i32 @sb_rd(%struct.sb_info* %42, i32 %43)
  %45 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %46 = call i32 @sb_unlock(%struct.sb_info* %45)
  ret void
}

declare dso_local i32 @sb_lock(%struct.sb_info*) #1

declare dso_local i64 @sndbuf_runsz(i32) #1

declare dso_local i32 @sb_unlock(%struct.sb_info*) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @sb_rd(%struct.sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
