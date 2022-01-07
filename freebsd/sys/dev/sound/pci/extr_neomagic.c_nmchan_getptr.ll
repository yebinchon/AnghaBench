; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nmchan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nmchan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, %struct.sc_info* }
%struct.sc_info = type { i64, i64 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@NM_PBUFFER_CURRP = common dso_local global i32 0, align 4
@NM_RBUFFER_CURRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @nmchan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nmchan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sc_chinfo*, align 8
  %7 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %9, %struct.sc_chinfo** %6, align 8
  %10 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %11 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %10, i32 0, i32 1
  %12 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  store %struct.sc_info* %12, %struct.sc_info** %7, align 8
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCMDIR_PLAY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %20 = load i32, i32* @NM_PBUFFER_CURRP, align 4
  %21 = call i64 @nm_rd(%struct.sc_info* %19, i32 %20, i32 4)
  %22 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %3, align 8
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %28 = load i32, i32* @NM_RBUFFER_CURRP, align 4
  %29 = call i64 @nm_rd(%struct.sc_info* %27, i32 %28, i32 4)
  %30 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %26, %18
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i64 @nm_rd(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
