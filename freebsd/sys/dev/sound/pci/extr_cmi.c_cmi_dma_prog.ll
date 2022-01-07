; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_dma_prog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_dma_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }
%struct.sc_chinfo = type { i32, i32, i32 }

@CMI_INTR_PER_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, %struct.sc_chinfo*, i32)* @cmi_dma_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmi_dma_prog(%struct.sc_info* %0, %struct.sc_chinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %4, align 8
  store %struct.sc_chinfo* %1, %struct.sc_chinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %11 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sndbuf_getbufaddr(i32 %12)
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cmi_wr(%struct.sc_info* %16, i32 %17, i32 %20, i32 4)
  %22 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %23 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @sndbuf_getsize(i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %29 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @cmi_wr(%struct.sc_info* %33, i32 %35, i32 %36, i32 2)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %40 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CMI_INTR_PER_BUFFER, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %38, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 6
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cmi_wr(%struct.sc_info* %46, i32 %48, i32 %49, i32 2)
  ret void
}

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @cmi_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i64 @sndbuf_getsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
