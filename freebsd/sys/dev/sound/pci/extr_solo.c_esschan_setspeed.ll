; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_esschan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_esschan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_chinfo = type { i32, %struct.ess_info* }
%struct.ess_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @esschan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esschan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ess_chinfo*, align 8
  %8 = alloca %struct.ess_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ess_chinfo*
  store %struct.ess_chinfo* %10, %struct.ess_chinfo** %7, align 8
  %11 = load %struct.ess_chinfo*, %struct.ess_chinfo** %7, align 8
  %12 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %11, i32 0, i32 1
  %13 = load %struct.ess_info*, %struct.ess_info** %12, align 8
  store %struct.ess_info* %13, %struct.ess_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ess_chinfo*, %struct.ess_chinfo** %7, align 8
  %16 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ess_info*, %struct.ess_info** %8, align 8
  %18 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ess_chinfo*, %struct.ess_chinfo** %7, align 8
  %23 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %22, i32 0, i32 0
  %24 = call i32 @ess_calcspeed9(i32* %23)
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.ess_chinfo*, %struct.ess_chinfo** %7, align 8
  %27 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %26, i32 0, i32 0
  %28 = call i32 @ess_calcspeed8(i32* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.ess_chinfo*, %struct.ess_chinfo** %7, align 8
  %31 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  ret i32 %32
}

declare dso_local i32 @ess_calcspeed9(i32*) #1

declare dso_local i32 @ess_calcspeed8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
