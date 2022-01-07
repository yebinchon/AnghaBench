; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_enaint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_enaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_chinfo = type { i32, %struct.tr_info* }
%struct.tr_info = type { i32 }

@TR_REG_INTENB = common dso_local global i32 0, align 4
@TR_REG_INTENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tr_chinfo*, i32)* @tr_enaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_enaint(%struct.tr_chinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.tr_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tr_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tr_chinfo* %0, %struct.tr_chinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.tr_chinfo*, %struct.tr_chinfo** %3, align 8
  %11 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %10, i32 0, i32 1
  %12 = load %struct.tr_info*, %struct.tr_info** %11, align 8
  store %struct.tr_info* %12, %struct.tr_info** %5, align 8
  %13 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %14 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_mtxlock(i32 %15)
  %17 = load %struct.tr_chinfo*, %struct.tr_chinfo** %3, align 8
  %18 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %8, align 4
  %24 = load %struct.tr_chinfo*, %struct.tr_chinfo** %3, align 8
  %25 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 31
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @TR_REG_INTENB, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @TR_REG_INTENA, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %7, align 4
  %36 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @tr_rd(%struct.tr_info* %36, i32 %37, i32 4)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.tr_chinfo*, %struct.tr_chinfo** %3, align 8
  %53 = call i32 @tr_clrint(%struct.tr_chinfo* %52)
  %54 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @tr_wr(%struct.tr_info* %54, i32 %55, i32 %56, i32 4)
  %58 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %59 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_mtxunlock(i32 %60)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @tr_rd(%struct.tr_info*, i32, i32) #1

declare dso_local i32 @tr_clrint(%struct.tr_chinfo*) #1

declare dso_local i32 @tr_wr(%struct.tr_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
