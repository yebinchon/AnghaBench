; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_setch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_setch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@samplerates = common dso_local global i32* null, align 8
@NM_RATE_MASK = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@NM_RATE_BITS_16 = common dso_local global i32 0, align 4
@NM_RATE_STEREO = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@NM_PLAYBACK_REG_OFFSET = common dso_local global i64 0, align 8
@NM_RECORD_REG_OFFSET = common dso_local global i64 0, align 8
@NM_RATE_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_chinfo*)* @nm_setch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_setch(%struct.sc_chinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_chinfo*, align 8
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %3, align 8
  %7 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %8 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %7, i32 0, i32 3
  %9 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  store %struct.sc_info* %9, %struct.sc_info** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** @samplerates, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @samplerates, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %21, %27
  %29 = sdiv i32 %28, 2
  %30 = icmp slt i32 %16, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %36

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %10

36:                                               ; preds = %31, %10
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %97

40:                                               ; preds = %36
  %41 = load i32*, i32** @samplerates, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %47 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %50 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @nm_loadcoeff(%struct.sc_info* %48, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @NM_RATE_MASK, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %60 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AFMT_16BIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %40
  %66 = load i32, i32* @NM_RATE_BITS_16, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %40
  %70 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %71 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AFMT_CHANNEL(i32 %72)
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @NM_RATE_STEREO, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.sc_chinfo*, %struct.sc_chinfo** %3, align 8
  %81 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PCMDIR_PLAY, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i64, i64* @NM_PLAYBACK_REG_OFFSET, align 8
  br label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @NM_RECORD_REG_OFFSET, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  store i64 %90, i64* %5, align 8
  %91 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @NM_RATE_REG_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @nm_wr(%struct.sc_info* %91, i64 %94, i32 %95, i32 1)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %39
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @nm_loadcoeff(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @nm_wr(%struct.sc_info*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
