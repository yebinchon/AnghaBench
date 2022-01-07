; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alschan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alschan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @alschan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alschan_getptr(i32 %0, i8* %1) #0 {
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
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 2
  %13 = load %struct.sc_info*, %struct.sc_info** %12, align 8
  store %struct.sc_info* %13, %struct.sc_info** %6, align 8
  %14 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_mtxlock(i32 %16)
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i32 0, i32 2
  %20 = load %struct.sc_info*, %struct.sc_info** %19, align 8
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @als_gcr_rd(%struct.sc_info* %20, i32 %23)
  %25 = and i32 %24, 65535
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_mtxunlock(i32 %28)
  %30 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %31 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sndbuf_getsize(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %8, align 4
  %40 = srem i32 %38, %39
  ret i32 %40
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @als_gcr_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
