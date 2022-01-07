; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_r16sl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_r16sl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENVY24HT_CHAN_REC_ADC1 = common dso_local global i32 0, align 4
@ENVY24HT_REC_CHNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @envy24ht_r16sl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_r16sl(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sndbuf_getfree(i32 %14)
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %18 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %5, align 8
  %26 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %27 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sndbuf_getfreeptr(i32 %28)
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 2
  %33 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %34 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %38 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %9, align 4
  %41 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %42 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %46 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ENVY24HT_CHAN_REC_ADC1, align 4
  %49 = sub nsw i32 %47, %48
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %96, %1
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ENVY24HT_REC_CHNUM, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @ENVY24HT_REC_CHNUM, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = srem i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = srem i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %55
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %51

99:                                               ; preds = %51
  ret void
}

declare dso_local i32 @sndbuf_getfree(i32) #1

declare dso_local i32 @sndbuf_getfreeptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
