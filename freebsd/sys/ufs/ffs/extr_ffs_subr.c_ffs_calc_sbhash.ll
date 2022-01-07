; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_calc_sbhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_calc_sbhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32, i32 }

@CK_SUPERBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_calc_sbhash(%struct.fs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %3, align 8
  %6 = load %struct.fs*, %struct.fs** %3, align 8
  %7 = getelementptr inbounds %struct.fs, %struct.fs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CK_SUPERBLOCK, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.fs*, %struct.fs** %3, align 8
  %14 = getelementptr inbounds %struct.fs, %struct.fs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.fs*, %struct.fs** %3, align 8
  %18 = getelementptr inbounds %struct.fs, %struct.fs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.fs*, %struct.fs** %3, align 8
  %21 = getelementptr inbounds %struct.fs, %struct.fs* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.fs*, %struct.fs** %3, align 8
  %23 = bitcast %struct.fs* %22 to i8*
  %24 = load %struct.fs*, %struct.fs** %3, align 8
  %25 = getelementptr inbounds %struct.fs, %struct.fs* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @calculate_crc32c(i64 -1, i8* %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.fs*, %struct.fs** %3, align 8
  %30 = getelementptr inbounds %struct.fs, %struct.fs* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @calculate_crc32c(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
