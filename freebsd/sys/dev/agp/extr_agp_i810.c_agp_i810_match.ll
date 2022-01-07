; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_match = type { i32 }

@PCIC_DISPLAY = common dso_local global i64 0, align 8
@PCIS_DISPLAY_VGA = common dso_local global i64 0, align 8
@PCIS_DISPLAY_OTHER = common dso_local global i64 0, align 8
@agp_i810_matches = common dso_local global %struct.agp_i810_match* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_i810_match* (i32)* @agp_i810_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_i810_match* @agp_i810_match(i32 %0) #0 {
  %2 = alloca %struct.agp_i810_match*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_class(i32 %6)
  %8 = load i64, i64* @PCIC_DISPLAY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @pci_get_subclass(i32 %11)
  %13 = load i64, i64* @PCIS_DISPLAY_VGA, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @pci_get_subclass(i32 %16)
  %18 = load i64, i64* @PCIS_DISPLAY_OTHER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store %struct.agp_i810_match* null, %struct.agp_i810_match** %2, align 8
  br label %60

21:                                               ; preds = %15, %10
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_get_devid(i32 %22)
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %43, %21
  %25 = load %struct.agp_i810_match*, %struct.agp_i810_match** @agp_i810_matches, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %25, i64 %27
  %29 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.agp_i810_match*, %struct.agp_i810_match** @agp_i810_matches, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %33, i64 %35
  %37 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %46

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %24

46:                                               ; preds = %41, %24
  %47 = load %struct.agp_i810_match*, %struct.agp_i810_match** @agp_i810_matches, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %47, i64 %49
  %51 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store %struct.agp_i810_match* null, %struct.agp_i810_match** %2, align 8
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.agp_i810_match*, %struct.agp_i810_match** @agp_i810_matches, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %56, i64 %58
  store %struct.agp_i810_match* %59, %struct.agp_i810_match** %2, align 8
  br label %60

60:                                               ; preds = %55, %54, %20
  %61 = load %struct.agp_i810_match*, %struct.agp_i810_match** %2, align 8
  ret %struct.agp_i810_match* %61
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
