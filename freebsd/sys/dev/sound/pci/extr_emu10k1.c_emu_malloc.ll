; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@emu_setmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sc_info*, i32, i64*, i32*)* @emu_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emu_malloc(%struct.sc_info* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64*, i64** %8, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %13 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @bus_dmamem_alloc(i32 %14, i8** %10, i32 %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @emu_setmap, align 4
  %29 = load i64*, i64** %8, align 8
  %30 = call i64 @bus_dmamap_load(i32 %23, i32 %25, i8* %26, i32 %27, i32 %28, i64* %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %20
  %37 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bus_dmamem_free(i32 %39, i8* %40, i32 %42)
  store i8* null, i8** %5, align 8
  br label %46

44:                                               ; preds = %32
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %36, %19
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
