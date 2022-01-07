; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_clrint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_clrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_chinfo = type { i32, %struct.tr_info* }
%struct.tr_info = type { i32 }

@TR_REG_ADDRINTB = common dso_local global i32 0, align 4
@TR_REG_ADDRINTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tr_chinfo*)* @tr_clrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_clrint(%struct.tr_chinfo* %0) #0 {
  %2 = alloca %struct.tr_chinfo*, align 8
  %3 = alloca %struct.tr_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tr_chinfo* %0, %struct.tr_chinfo** %2, align 8
  %6 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %7 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %6, i32 0, i32 1
  %8 = load %struct.tr_info*, %struct.tr_info** %7, align 8
  store %struct.tr_info* %8, %struct.tr_info** %3, align 8
  %9 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %10 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %4, align 4
  %16 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %17 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 31
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @TR_REG_ADDRINTB, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @TR_REG_ADDRINTA, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @tr_wr(%struct.tr_info* %20, i32 %28, i32 %30, i32 4)
  ret void
}

declare dso_local i32 @tr_wr(%struct.tr_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
