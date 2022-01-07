; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_poll_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_poll_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i64, i32, i32, i32, i32, i64, %struct.via_info*, i32* }
%struct.via_info = type { i32 }

@VIA_RP_CURRENT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_chinfo*)* @via_poll_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_poll_channel(%struct.via_chinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via_chinfo*, align 8
  %4 = alloca %struct.via_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.via_chinfo* %0, %struct.via_chinfo** %3, align 8
  %11 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %12 = icmp eq %struct.via_chinfo* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %15 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %20 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %1
  store i32 0, i32* %2, align 4
  br label %86

24:                                               ; preds = %18
  %25 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %26 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %25, i32 0, i32 6
  %27 = load %struct.via_info*, %struct.via_info** %26, align 8
  store %struct.via_info* %27, %struct.via_info** %4, align 8
  %28 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %29 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %32 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.via_info*, %struct.via_info** %4, align 8
  %36 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %37 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VIA_RP_CURRENT_COUNT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @via_rd(%struct.via_info* %35, i64 %40, i32 4)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 24
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 16777215
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %49 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %10, align 4
  %56 = srem i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %58 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %66 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %71 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = srem i32 %73, %74
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %78 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %86

82:                                               ; preds = %24
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %85 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %81, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @via_rd(%struct.via_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
