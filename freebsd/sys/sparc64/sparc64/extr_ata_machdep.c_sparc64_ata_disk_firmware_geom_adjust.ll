; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_ata_machdep.c_sparc64_ata_disk_firmware_geom_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_ata_machdep.c_sparc64_ata_disk_firmware_geom_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc64_ata_disk_firmware_geom_adjust(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %3 = load %struct.disk*, %struct.disk** %2, align 8
  %4 = getelementptr inbounds %struct.disk, %struct.disk* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.disk*, %struct.disk** %2, align 8
  %7 = getelementptr inbounds %struct.disk, %struct.disk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 66059280, %8
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.disk*, %struct.disk** %2, align 8
  %13 = getelementptr inbounds %struct.disk, %struct.disk* %12, i32 0, i32 2
  store i32 255, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.disk*, %struct.disk** %2, align 8
  %16 = getelementptr inbounds %struct.disk, %struct.disk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.disk*, %struct.disk** %2, align 8
  %19 = getelementptr inbounds %struct.disk, %struct.disk* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 267382800, %20
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.disk*, %struct.disk** %2, align 8
  %25 = getelementptr inbounds %struct.disk, %struct.disk* %24, i32 0, i32 3
  store i32 255, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
