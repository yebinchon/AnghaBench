; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24chan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24chan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sc_chinfo = type { i32, i32, i32, i64, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@ENVY24_PLAY_BUFUNIT = common dso_local global i32 0, align 4
@ENVY24_REC_BUFUNIT = common dso_local global i32 0, align 4
@sc = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @envy24chan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24chan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %13, %struct.sc_chinfo** %7, align 8
  store i32 2147483647, i32* %9, align 4
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i64 @abs(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i64 @abs(i32 %28)
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %9, align 4
  br label %34

33:                                               ; preds = %21
  br label %38

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %8, align 4
  br label %18

38:                                               ; preds = %33, %18
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %41 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %39, %42
  %44 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %45 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %47 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCMDIR_PLAY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %38
  %52 = load i32, i32* @ENVY24_PLAY_BUFUNIT, align 4
  %53 = sdiv i32 %52, 4
  %54 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %55 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %65

58:                                               ; preds = %38
  %59 = load i32, i32* @ENVY24_REC_BUFUNIT, align 4
  %60 = sdiv i32 %59, 4
  %61 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %62 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %67 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCMDIR_PLAY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %73 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load i32, i32* @ENVY24_PLAY_BUFUNIT, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %11, align 4
  br label %85

78:                                               ; preds = %65
  %79 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %80 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 4
  %83 = load i32, i32* @ENVY24_REC_BUFUNIT, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %87 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = mul i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %92 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = udiv i32 %93, %94
  store i32 %95, i32* %10, align 4
  %96 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %97 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @sndbuf_resize(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
