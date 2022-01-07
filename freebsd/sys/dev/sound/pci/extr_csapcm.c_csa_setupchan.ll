; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_setupchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_setupchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_chinfo = type { i64, i32, i32, i32, %struct.csa_info* }
%struct.csa_info = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@BA1_PBA = common dso_local global i32 0, align 4
@BA1_PFIE = common dso_local global i32 0, align 4
@AFMT_SIGNED = common dso_local global i32 0, align 4
@AFMT_BIGENDIAN = common dso_local global i32 0, align 4
@AFMT_8BIT = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@BA1_PDTC = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i64 0, align 8
@BA1_CBA = common dso_local global i32 0, align 4
@BA1_CIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csa_chinfo*)* @csa_setupchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csa_setupchan(%struct.csa_chinfo* %0) #0 {
  %2 = alloca %struct.csa_chinfo*, align 8
  %3 = alloca %struct.csa_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csa_chinfo* %0, %struct.csa_chinfo** %2, align 8
  %7 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %8 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %7, i32 0, i32 4
  %9 = load %struct.csa_info*, %struct.csa_info** %8, align 8
  store %struct.csa_info* %9, %struct.csa_info** %3, align 8
  %10 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %11 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %10, i32 0, i32 1
  store i32* %11, i32** %4, align 8
  %12 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %13 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCMDIR_PLAY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %121

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @BA1_PBA, align 4
  %20 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %21 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sndbuf_getbufaddr(i32 %22)
  %24 = call i32 @csa_writemem(i32* %18, i32 %19, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @BA1_PFIE, align 4
  %27 = call i32 @csa_readmem(i32* %25, i32 %26)
  %28 = and i32 %27, -61504
  %29 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %30 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %32 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AFMT_SIGNED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %17
  %38 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %39 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 32768
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %17
  %43 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %44 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AFMT_BIGENDIAN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %51 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 16384
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %56 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @AFMT_CHANNEL(i32 %57)
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %62 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 8192
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %67 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AFMT_8BIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %74 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 4096
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %65
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @BA1_PFIE, align 4
  %80 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %81 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @csa_writemem(i32* %78, i32 %79, i32 %82)
  store i32 4, i32* %6, align 4
  %84 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %85 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @AFMT_16BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %77
  %94 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %95 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @AFMT_CHANNEL(i32 %96)
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  %101 = shl i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %6, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @BA1_PDTC, align 4
  %107 = call i32 @csa_readmem(i32* %105, i32 %106)
  %108 = and i32 %107, -512
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* @BA1_PDTC, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @csa_writemem(i32* %112, i32 %113, i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %118 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @csa_setplaysamplerate(i32* %116, i32 %119)
  br label %149

121:                                              ; preds = %1
  %122 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %123 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PCMDIR_REC, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @BA1_CBA, align 4
  %130 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %131 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @sndbuf_getbufaddr(i32 %132)
  %134 = call i32 @csa_writemem(i32* %128, i32 %129, i32 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @BA1_CIE, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* @BA1_CIE, align 4
  %139 = call i32 @csa_readmem(i32* %137, i32 %138)
  %140 = and i32 %139, -64
  %141 = or i32 %140, 1
  %142 = call i32 @csa_writemem(i32* %135, i32 %136, i32 %141)
  %143 = load i32*, i32** %4, align 8
  %144 = load %struct.csa_chinfo*, %struct.csa_chinfo** %2, align 8
  %145 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @csa_setcapturesamplerate(i32* %143, i32 %146)
  br label %148

148:                                              ; preds = %127, %121
  br label %149

149:                                              ; preds = %148, %102
  ret i32 0
}

declare dso_local i32 @csa_writemem(i32*, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @csa_readmem(i32*, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @csa_setplaysamplerate(i32*, i32) #1

declare dso_local i32 @csa_setcapturesamplerate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
