; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_search_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_search_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid_info = type { i32, %struct.videomode* }
%struct.videomode = type { i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.videomode* (%struct.edid_info*, %struct.videomode*)* @edid_search_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.videomode* @edid_search_mode(%struct.edid_info* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.videomode*, align 8
  %4 = alloca %struct.edid_info*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edid_info* %0, %struct.edid_info** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %8 = load %struct.videomode*, %struct.videomode** %5, align 8
  %9 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, 1000
  %12 = load %struct.videomode*, %struct.videomode** %5, align 8
  %13 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DIVIDE(i32 %11, i32 %14)
  %16 = load %struct.videomode*, %struct.videomode** %5, align 8
  %17 = getelementptr inbounds %struct.videomode, %struct.videomode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DIVIDE(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %90, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %23 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %20
  %27 = load %struct.videomode*, %struct.videomode** %5, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %31 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %30, i32 0, i32 1
  %32 = load %struct.videomode*, %struct.videomode** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.videomode, %struct.videomode* %32, i64 %34
  %36 = getelementptr inbounds %struct.videomode, %struct.videomode* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %29, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %26
  %40 = load %struct.videomode*, %struct.videomode** %5, align 8
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %44 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %43, i32 0, i32 1
  %45 = load %struct.videomode*, %struct.videomode** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.videomode, %struct.videomode* %45, i64 %47
  %49 = getelementptr inbounds %struct.videomode, %struct.videomode* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %42, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %55 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %54, i32 0, i32 1
  %56 = load %struct.videomode*, %struct.videomode** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.videomode, %struct.videomode* %56, i64 %58
  %60 = getelementptr inbounds %struct.videomode, %struct.videomode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 1000
  %63 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %64 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %63, i32 0, i32 1
  %65 = load %struct.videomode*, %struct.videomode** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.videomode, %struct.videomode* %65, i64 %67
  %69 = getelementptr inbounds %struct.videomode, %struct.videomode* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DIVIDE(i32 %62, i32 %70)
  %72 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %73 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %72, i32 0, i32 1
  %74 = load %struct.videomode*, %struct.videomode** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.videomode, %struct.videomode* %74, i64 %76
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @DIVIDE(i32 %71, i32 %79)
  %81 = icmp eq i32 %53, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %52
  %83 = load %struct.edid_info*, %struct.edid_info** %4, align 8
  %84 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %83, i32 0, i32 1
  %85 = load %struct.videomode*, %struct.videomode** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.videomode, %struct.videomode* %85, i64 %87
  store %struct.videomode* %88, %struct.videomode** %3, align 8
  br label %94

89:                                               ; preds = %52, %39, %26
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %20

93:                                               ; preds = %20
  store %struct.videomode* null, %struct.videomode** %3, align 8
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.videomode*, %struct.videomode** %3, align 8
  ret %struct.videomode* %95
}

declare dso_local i32 @DIVIDE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
