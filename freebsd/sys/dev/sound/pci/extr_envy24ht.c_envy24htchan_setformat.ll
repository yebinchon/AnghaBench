; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24htchan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24htchan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envy24ht_emldma = type { i64, i32, i32 }
%struct.sc_chinfo = type { i64, i64, i32, i32, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@envy24ht_pemltab = common dso_local global %struct.envy24ht_emldma* null, align 8
@envy24ht_remltab = common dso_local global %struct.envy24ht_emldma* null, align 8
@ENVY24HT_SAMPLE_NUM = common dso_local global i32 0, align 4
@ENVY24HT_PLAY_BUFUNIT = common dso_local global i32 0, align 4
@ENVY24HT_REC_BUFUNIT = common dso_local global i32 0, align 4
@bcnt = common dso_local global i32 0, align 4
@bsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @envy24htchan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24htchan_setformat(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca %struct.envy24ht_emldma*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %13, %struct.sc_chinfo** %8, align 8
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 7
  %16 = load %struct.sc_info*, %struct.sc_info** %15, align 8
  store %struct.sc_info* %16, %struct.sc_info** %9, align 8
  %17 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_mtxlock(i32 %19)
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCMDIR_PLAY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** @envy24ht_pemltab, align 8
  store %struct.envy24ht_emldma* %27, %struct.envy24ht_emldma** %10, align 8
  br label %30

28:                                               ; preds = %3
  %29 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** @envy24ht_remltab, align 8
  store %struct.envy24ht_emldma* %29, %struct.envy24ht_emldma** %10, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %32 = icmp eq %struct.envy24ht_emldma* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_mtxunlock(i32 %36)
  store i32 -1, i32* %4, align 4
  br label %146

38:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %40, i64 %42
  %44 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %48, i64 %50
  %52 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %39

61:                                               ; preds = %56, %39
  %62 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %62, i64 %64
  %66 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snd_mtxunlock(i32 %72)
  store i32 -1, i32* %4, align 4
  br label %146

74:                                               ; preds = %61
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %77 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %78, i64 %80
  %82 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %85 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %87 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %89, i64 %91
  %93 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %88, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %74
  %97 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %98 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %100, i64 %102
  %104 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %99, %105
  %107 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %108 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %126

111:                                              ; preds = %74
  %112 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %112, i64 %114
  %116 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %119 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %117, %120
  %122 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %123 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %111, %96
  %127 = load %struct.envy24ht_emldma*, %struct.envy24ht_emldma** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %127, i64 %129
  %131 = getelementptr inbounds %struct.envy24ht_emldma, %struct.envy24ht_emldma* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %134 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %136 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ENVY24HT_SAMPLE_NUM, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %141 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %143 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @snd_mtxunlock(i32 %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %126, %69, %33
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
