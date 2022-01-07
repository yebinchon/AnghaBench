; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_allocpslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_allocpslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbank = type { i32 }
%struct.sc_info = type { i32, %struct.pbank** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pbank* (%struct.sc_info*)* @ds_allocpslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pbank* @ds_allocpslot(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.pbank*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 63
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.pbank* null, %struct.pbank** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 1
  %17 = load %struct.pbank**, %struct.pbank*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pbank*, %struct.pbank** %17, i64 %20
  %22 = load %struct.pbank*, %struct.pbank** %21, align 8
  store %struct.pbank* %22, %struct.pbank** %2, align 8
  br label %23

23:                                               ; preds = %10, %9
  %24 = load %struct.pbank*, %struct.pbank** %2, align 8
  ret %struct.pbank* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
