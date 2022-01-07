; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alschan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alschan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i64, %struct.sc_info* }
%struct.sc_info = type { %struct.sc_chinfo, %struct.sc_chinfo }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @alschan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alschan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.sc_chinfo*, align 8
  %10 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %12, %struct.sc_chinfo** %8, align 8
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i32 0, i32 3
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %10, align 8
  %16 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %17 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCMDIR_PLAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 1
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi %struct.sc_chinfo* [ %23, %21 ], [ %26, %24 ]
  store %struct.sc_chinfo* %28, %struct.sc_chinfo** %9, align 8
  %29 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %30 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %35 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %38 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %40 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %45 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
