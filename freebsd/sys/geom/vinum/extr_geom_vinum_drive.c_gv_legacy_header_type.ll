; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_drive.c_gv_legacy_header_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_drive.c_gv_legacy_header_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GV_LEGACY_POWERPC = common dso_local global i32 0, align 4
@GV_LEGACY_SPARC64 = common dso_local global i32 0, align 4
@GV_LEGACY_I386 = common dso_local global i32 0, align 4
@GV_LEGACY_AMD64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @gv_legacy_header_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv_legacy_header_type(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @GV_LEGACY_POWERPC, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @GV_LEGACY_SPARC64, align 4
  store i32 %14, i32* %8, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @GV_LEGACY_I386, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @GV_LEGACY_AMD64, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 12
  store i64* %20, i64** %6, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %18
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 16
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %26
  store i32 100, i32* %9, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 120
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load i64*, i64** %4, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 84
  store i64* %52, i64** %6, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %56, %44, %31, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
