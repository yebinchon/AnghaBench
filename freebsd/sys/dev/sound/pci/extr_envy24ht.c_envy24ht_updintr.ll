; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_updintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_updintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32*, i32, i32, i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENVY24HT_MT_PCNT = common dso_local global i32 0, align 4
@ENVY24HT_MT_PTERM = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_PMASK = common dso_local global i32 0, align 4
@ENVY24HT_MT_RCNT = common dso_local global i32 0, align 4
@ENVY24HT_MT_RTERM = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_RMASK = common dso_local global i32 0, align 4
@ENVY24HT_MT_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32)* @envy24ht_updintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_updintr(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCMDIR_PLAY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @ENVY24HT_MT_PCNT, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @ENVY24HT_MT_PTERM, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @ENVY24HT_MT_INT_PMASK, align 4
  %29 = xor i32 %28, -1
  store i32 %29, i32* %7, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @ENVY24HT_MT_RCNT, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @ENVY24HT_MT_RTERM, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @ENVY24HT_MT_INT_RMASK, align 4
  %43 = xor i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %30, %16
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @envy24ht_rdmt(%struct.sc_info* %46, i32 %47, i32 2)
  %49 = sub nsw i32 %45, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @envy24ht_wrmt(%struct.sc_info* %53, i32 %54, i32 %55, i32 2)
  %57 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %58 = load i32, i32* @ENVY24HT_MT_INT_MASK, align 4
  %59 = call i32 @envy24ht_rdmt(%struct.sc_info* %57, i32 %58, i32 1)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %61 = load i32, i32* @ENVY24HT_MT_INT_MASK, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @envy24ht_wrmt(%struct.sc_info* %60, i32 %61, i32 %64, i32 1)
  ret void
}

declare dso_local i32 @envy24ht_rdmt(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @envy24ht_wrmt(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
