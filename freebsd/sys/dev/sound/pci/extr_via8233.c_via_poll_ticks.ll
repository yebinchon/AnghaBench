; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_poll_ticks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_poll_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { %struct.via_chinfo*, %struct.via_chinfo* }
%struct.via_chinfo = type { i64, i32, i32, i32* }

@hz = common dso_local global i32 0, align 4
@NDXSCHANS = common dso_local global i32 0, align 4
@NMSGDCHANS = common dso_local global i32 0, align 4
@NWRCHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_info*)* @via_poll_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_poll_ticks(%struct.via_info* %0) #0 {
  %2 = alloca %struct.via_info*, align 8
  %3 = alloca %struct.via_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.via_info* %0, %struct.via_info** %2, align 8
  %7 = load i32, i32* @hz, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %66, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NDXSCHANS, align 4
  %11 = load i32, i32* @NMSGDCHANS, align 4
  %12 = add nsw i32 %10, %11
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %8
  %15 = load %struct.via_info*, %struct.via_info** %2, align 8
  %16 = getelementptr inbounds %struct.via_info, %struct.via_info* %15, i32 0, i32 1
  %17 = load %struct.via_chinfo*, %struct.via_chinfo** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %17, i64 %19
  store %struct.via_chinfo* %20, %struct.via_chinfo** %3, align 8
  %21 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %22 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %27 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %14
  br label %66

31:                                               ; preds = %25
  %32 = load i32, i32* @hz, align 4
  %33 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %34 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %38 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @sndbuf_getalign(i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %43 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sndbuf_getspd(i32 %44)
  %46 = mul nsw i32 %41, %45
  %47 = sdiv i32 %36, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 2
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @hz, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @hz, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %31
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %8

69:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %126, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @NWRCHANS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %70
  %75 = load %struct.via_info*, %struct.via_info** %2, align 8
  %76 = getelementptr inbounds %struct.via_info, %struct.via_info* %75, i32 0, i32 0
  %77 = load %struct.via_chinfo*, %struct.via_chinfo** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %77, i64 %79
  store %struct.via_chinfo* %80, %struct.via_chinfo** %3, align 8
  %81 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %82 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %74
  %86 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %87 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %74
  br label %126

91:                                               ; preds = %85
  %92 = load i32, i32* @hz, align 4
  %93 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %94 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %98 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @sndbuf_getalign(i32 %99)
  %101 = trunc i64 %100 to i32
  %102 = load %struct.via_chinfo*, %struct.via_chinfo** %3, align 8
  %103 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @sndbuf_getspd(i32 %104)
  %106 = mul nsw i32 %101, %105
  %107 = sdiv i32 %96, %106
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 2
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @hz, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %91
  %114 = load i32, i32* @hz, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %91
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 1, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %119
  br label %126

126:                                              ; preds = %125, %90
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %70

129:                                              ; preds = %70
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @sndbuf_getalign(i32) #1

declare dso_local i32 @sndbuf_getspd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
