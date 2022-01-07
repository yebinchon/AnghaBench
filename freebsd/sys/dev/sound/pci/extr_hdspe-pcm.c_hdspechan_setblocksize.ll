; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspechan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspe_latency = type { i32, i32 }
%struct.sc_pcminfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32, i32 }
%struct.sc_chinfo = type { i32, %struct.sc_pcminfo* }

@HDSPE_LAT_BYTES_MAX = common dso_local global i32 0, align 4
@HDSPE_LAT_BYTES_MIN = common dso_local global i32 0, align 4
@latency_map = common dso_local global %struct.hdspe_latency* null, align 8
@HDSPE_LAT_MASK = common dso_local global i32 0, align 4
@HDSPE_CONTROL_REG = common dso_local global i32 0, align 4
@HDSPE_CHANBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @hdspechan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspechan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdspe_latency*, align 8
  %8 = alloca %struct.sc_pcminfo*, align 8
  %9 = alloca %struct.sc_chinfo*, align 8
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %14, %struct.sc_chinfo** %9, align 8
  %15 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %16 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %15, i32 0, i32 1
  %17 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %16, align 8
  store %struct.sc_pcminfo* %17, %struct.sc_pcminfo** %8, align 8
  %18 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %8, align 8
  %19 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %18, i32 0, i32 1
  %20 = load %struct.sc_info*, %struct.sc_info** %19, align 8
  store %struct.sc_info* %20, %struct.sc_info** %10, align 8
  store %struct.hdspe_latency* null, %struct.hdspe_latency** %7, align 8
  %21 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %22 = call i32 @hdspe_running(%struct.sc_info* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %170

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HDSPE_LAT_BYTES_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @HDSPE_LAT_BYTES_MAX, align 4
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HDSPE_LAT_BYTES_MIN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @HDSPE_LAT_BYTES_MIN, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %64, %38
  %42 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %42, i64 %44
  %46 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %50, i64 %52
  %54 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %59, i64 %61
  store %struct.hdspe_latency* %62, %struct.hdspe_latency** %7, align 8
  br label %63

63:                                               ; preds = %58, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load %struct.hdspe_latency*, %struct.hdspe_latency** %7, align 8
  %69 = icmp eq %struct.hdspe_latency* %68, null
  br i1 %69, label %70, label %121

70:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %117, %70
  %72 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %72, i64 %74
  %76 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %71
  %80 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %80, i64 %82
  store %struct.hdspe_latency* %83, %struct.hdspe_latency** %7, align 8
  %84 = load %struct.hdspe_latency*, %struct.hdspe_latency** %7, align 8
  %85 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %87, i64 %90
  %92 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %79
  %96 = load %struct.hdspe_latency*, %struct.hdspe_latency** @latency_map, align 8
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %96, i64 %99
  %101 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hdspe_latency*, %struct.hdspe_latency** %7, align 8
  %104 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = ashr i32 %106, 1
  br label %109

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108, %95
  %110 = phi i32 [ %107, %95 ], [ 0, %108 ]
  %111 = add nsw i32 %86, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %120

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %71

120:                                              ; preds = %115, %71
  br label %121

121:                                              ; preds = %120, %67
  %122 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %123 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_mtxlock(i32 %124)
  %126 = load i32, i32* @HDSPE_LAT_MASK, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %129 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.hdspe_latency*, %struct.hdspe_latency** %7, align 8
  %133 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @hdspe_encode_latency(i32 %134)
  %136 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %141 = load i32, i32* @HDSPE_CONTROL_REG, align 4
  %142 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %143 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @hdspe_write_4(%struct.sc_info* %140, i32 %141, i32 %144)
  %146 = load %struct.hdspe_latency*, %struct.hdspe_latency** %7, align 8
  %147 = getelementptr inbounds %struct.hdspe_latency, %struct.hdspe_latency* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %150 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %152 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @snd_mtxunlock(i32 %153)
  %155 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %156 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @HDSPE_CHANBUF_SIZE, align 4
  %159 = mul nsw i32 %158, 2
  %160 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %161 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %162, 4
  %164 = sdiv i32 %159, %163
  %165 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, 4
  %169 = call i32 @sndbuf_resize(i32 %157, i32 %164, i32 %168)
  br label %170

170:                                              ; preds = %121, %24
  %171 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %172 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @sndbuf_getblksz(i32 %173)
  ret i32 %174
}

declare dso_local i32 @hdspe_running(%struct.sc_info*) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @hdspe_encode_latency(i32) #1

declare dso_local i32 @hdspe_write_4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
