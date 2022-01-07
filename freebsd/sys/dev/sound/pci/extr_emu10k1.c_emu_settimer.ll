; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_settimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_settimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.sc_rchinfo*, %struct.sc_pchinfo* }
%struct.sc_rchinfo = type { i32, i32, i64 }
%struct.sc_pchinfo = type { i32, i32, i64 }

@EMU_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @emu_settimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_settimer(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca %struct.sc_pchinfo*, align 8
  %4 = alloca %struct.sc_rchinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %45, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 3
  %17 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %17, i64 %19
  store %struct.sc_pchinfo* %20, %struct.sc_pchinfo** %3, align 8
  %21 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %3, align 8
  %22 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %14
  %26 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %3, align 8
  %27 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %3, align 8
  %30 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @sndbuf_getalign(i64 %31)
  %33 = mul nsw i32 %28, %32
  %34 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %3, align 8
  %35 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %25
  br label %44

44:                                               ; preds = %43, %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 2
  %55 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %55, i64 %57
  store %struct.sc_rchinfo* %58, %struct.sc_rchinfo** %4, align 8
  %59 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %4, align 8
  %60 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %52
  %64 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %4, align 8
  %65 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %4, align 8
  %68 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @sndbuf_getalign(i64 %69)
  %71 = mul nsw i32 %66, %70
  %72 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %4, align 8
  %73 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %71, %74
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %63
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %49

86:                                               ; preds = %49
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @RANGE(i32 %87, i32 48, i32 9600)
  %89 = load i32, i32* %7, align 4
  %90 = sdiv i32 48000, %89
  %91 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %94 = load i32, i32* @EMU_TIMER, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 1023
  %99 = call i32 @emu_wr(%struct.sc_info* %93, i32 %94, i32 %98, i32 2)
  %100 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %101 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  ret i32 %102
}

declare dso_local i32 @sndbuf_getalign(i64) #1

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
