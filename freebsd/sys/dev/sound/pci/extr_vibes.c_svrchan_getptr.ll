; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_svrchan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_svrchan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @svrchan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svrchan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %10, %struct.sc_chinfo** %5, align 8
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 1
  %13 = load %struct.sc_info*, %struct.sc_info** %12, align 8
  store %struct.sc_info* %13, %struct.sc_info** %6, align 8
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sndbuf_getsize(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sv_dma_get_count(i32 %20, i32 %23)
  %25 = add nsw i32 %24, 1
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  ret i32 %29
}

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sv_dma_get_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
