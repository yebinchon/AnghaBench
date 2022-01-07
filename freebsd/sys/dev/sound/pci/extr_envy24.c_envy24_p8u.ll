; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_p8u.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_p8u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENVY24_PLAY_CHNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @envy24_p8u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_p8u(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
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
  %15 = call i32 @sndbuf_getready(i32 %14)
  %16 = sdiv i32 %15, 2
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
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %5, align 8
  %26 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %27 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sndbuf_getreadyptr(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  %32 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %33 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %37 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %40 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %44 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %98, %1
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %47
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = xor i32 %57, 128
  %59 = shl i32 %58, 24
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ENVY24_PLAY_CHNUM, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %59, i32* %68, align 4
  %69 = load i64*, i64** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = xor i32 %75, 128
  %77 = shl i32 %76, 24
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ENVY24_PLAY_CHNUM, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %77, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = srem i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = srem i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %51
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %47

101:                                              ; preds = %47
  ret void
}

declare dso_local i32 @sndbuf_getready(i32) #1

declare dso_local i32 @sndbuf_getreadyptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
