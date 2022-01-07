; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhd_geom = type { i32, i32, i64 }

@VHD_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vhd_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhd_resize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhd_geom, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %1, %24
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @vhd_geometry(i32 %7, %struct.vhd_geom* %3)
  %9 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %3, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %11, %13
  %15 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %3, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %14, %16
  %18 = load i32, i32* @VHD_SECTOR_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %34

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %26, %28
  %30 = load i32, i32* @VHD_SECTOR_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %6

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @vhd_geometry(i32, %struct.vhd_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
