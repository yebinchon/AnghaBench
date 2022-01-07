; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_bootcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_bootcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_parms = type { i64, i32, i32 }
%struct.g_part_mbr_table = type { i64 }

@MBRSIZE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DOSDSNOFF = common dso_local global i64 0, align 8
@DOSPARTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_mbr_bootcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_bootcode(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca %struct.g_part_mbr_table*, align 8
  %7 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %8 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %9 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MBRSIZE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %17 = bitcast %struct.g_part_table* %16 to %struct.g_part_mbr_table*
  store %struct.g_part_mbr_table* %17, %struct.g_part_mbr_table** %6, align 8
  %18 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %6, align 8
  %19 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DOSDSNOFF, align 8
  %22 = add nsw i64 %20, %21
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %26 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %6, align 8
  %29 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @DOSPARTOFF, align 4
  %32 = call i32 @bcopy(i32 %27, i64 %30, i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %15
  %36 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %37 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %6, align 8
  %43 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DOSDSNOFF, align 8
  %46 = add nsw i64 %44, %45
  %47 = inttoptr i64 %46 to i64*
  store i64 %41, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %35, %15
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @bcopy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
