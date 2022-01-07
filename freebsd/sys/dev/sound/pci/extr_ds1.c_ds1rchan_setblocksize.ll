; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1rchan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1rchan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@DS1_IRQHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ds1rchan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1rchan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_rchinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sc_rchinfo*
  store %struct.sc_rchinfo* %11, %struct.sc_rchinfo** %7, align 8
  %12 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %13 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %12, i32 0, i32 2
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %8, align 8
  %15 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %16 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %19 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sndbuf_getalign(i32 %20)
  %22 = mul nsw i32 %17, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* @DS1_IRQHZ, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @roundup2(i32 %26, i32 4)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %7, align 8
  %29 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sndbuf_resize(i32 %30, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @sndbuf_getalign(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
