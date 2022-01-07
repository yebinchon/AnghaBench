; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_std_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_std_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%dx%dx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.videomode*)* @edid_std_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edid_std_timing(i32* %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.videomode*, align 8
  %10 = alloca [80 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %40, label %20

20:                                               ; preds = %15, %2
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25, %20
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %25, %15
  store i32 0, i32* %3, align 4
  br label %86

41:                                               ; preds = %35, %30
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @EDID_STD_TIMING_HRES(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @EDID_STD_TIMING_RATIO(i32* %44)
  switch i32 %45, label %59 [
    i32 131, label %46
    i32 129, label %50
    i32 128, label %54
    i32 130, label %58
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = mul i32 %47, 10
  %49 = udiv i32 %48, 16
  store i32 %49, i32* %7, align 4
  br label %63

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = mul i32 %51, 3
  %53 = udiv i32 %52, 4
  store i32 %53, i32* %7, align 4
  br label %63

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = mul i32 %55, 4
  %57 = udiv i32 %56, 5
  store i32 %57, i32* %7, align 4
  br label %63

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %41, %58
  %60 = load i32, i32* %6, align 4
  %61 = mul i32 %60, 9
  %62 = udiv i32 %61, 16
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %54, %50, %46
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @EDID_STD_TIMING_VFREQ(i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @snprintf(i8* %66, i32 80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %72 = call %struct.videomode* @edid_mode_lookup_list(i8* %71)
  store %struct.videomode* %72, %struct.videomode** %9, align 8
  %73 = icmp ne %struct.videomode* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.videomode*, %struct.videomode** %5, align 8
  %76 = load %struct.videomode*, %struct.videomode** %9, align 8
  %77 = bitcast %struct.videomode* %75 to i8*
  %78 = bitcast %struct.videomode* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  br label %85

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.videomode*, %struct.videomode** %5, align 8
  %84 = call i32 @vesagtf_mode(i32 %80, i32 %81, i32 %82, %struct.videomode* %83)
  br label %85

85:                                               ; preds = %79, %74
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %40
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @EDID_STD_TIMING_HRES(i32*) #1

declare dso_local i32 @EDID_STD_TIMING_RATIO(i32*) #1

declare dso_local i32 @EDID_STD_TIMING_VFREQ(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.videomode* @edid_mode_lookup_list(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vesagtf_mode(i32, i32, i32, %struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
