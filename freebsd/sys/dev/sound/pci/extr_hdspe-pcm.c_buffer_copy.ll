; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_buffer_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_buffer_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i32, i32, i32*, i32, %struct.sc_pcminfo* }
%struct.sc_pcminfo = type { %struct.sc_info* }
%struct.sc_info = type { i32, i32*, i32* }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@HDSPE_CHANBUF_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @buffer_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_copy(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca %struct.sc_pcminfo*, align 8
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 6
  %13 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %12, align 8
  store %struct.sc_pcminfo* %13, %struct.sc_pcminfo** %3, align 8
  %14 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %15 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %14, i32 0, i32 0
  %16 = load %struct.sc_info*, %struct.sc_info** %15, align 8
  store %struct.sc_info* %16, %struct.sc_info** %4, align 8
  %17 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %18 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sndbuf_getready(i32 %19)
  %21 = sdiv i32 %20, 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCMDIR_PLAY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %29 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sndbuf_getreadyptr(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %34 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sndbuf_getfreeptr(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %7, align 4
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %8, align 4
  %42 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %43 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %47 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 8
  store i32 %49, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %154, %37
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %157

57:                                               ; preds = %50
  %58 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %59 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCMDIR_PLAY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %57
  %64 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %65 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @HDSPE_CHANBUF_SAMPLES, align 4
  %76 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %77 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = add nsw i32 %74, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %73, i64 %81
  store i32 %70, i32* %82, align 4
  %83 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %84 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @HDSPE_CHANBUF_SAMPLES, align 4
  %96 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %97 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = add nsw i32 %94, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %93, i64 %101
  store i32 %90, i32* %102, align 4
  br label %143

103:                                              ; preds = %57
  %104 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @HDSPE_CHANBUF_SAMPLES, align 4
  %109 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %110 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = add nsw i32 %107, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %118 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %124 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @HDSPE_CHANBUF_SAMPLES, align 4
  %128 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %129 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = add nsw i32 %126, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %125, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %137 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %135, i32* %142, align 4
  br label %143

143:                                              ; preds = %103, %63
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = srem i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 2
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %7, align 4
  %153 = srem i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %50

157:                                              ; preds = %50
  ret void
}

declare dso_local i32 @sndbuf_getready(i32) #1

declare dso_local i32 @sndbuf_getreadyptr(i32) #1

declare dso_local i32 @sndbuf_getfreeptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
