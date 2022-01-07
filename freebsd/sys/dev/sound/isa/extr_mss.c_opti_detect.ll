; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opticard = type { i32, i32, i32, i32, i32 }
%struct.mss_info = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@opti_detect.cards = internal constant [3 x %struct.opticard] [%struct.opticard { i32 128, i32 0, i32 228, i32 3983, i32 3598 }, %struct.opticard { i32 129, i32 3, i32 229, i32 3980, i32 0 }, %struct.opticard zeroinitializer], align 16
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mss_info*)* @opti_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opti_detect(i32 %0, %struct.mss_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mss_info* %1, %struct.mss_info** %5, align 8
  %7 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %8 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %7, i32 0, i32 0
  store i32 3, i32* %8, align 8
  %9 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %10 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %9, i32 0, i32 1
  store i32 4, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %131, %2
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.opticard, %struct.opticard* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %134

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.opticard, %struct.opticard* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %25 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.opticard, %struct.opticard* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %32 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.opticard, %struct.opticard* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %39 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.opticard, %struct.opticard* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %46 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.opticard, %struct.opticard* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %18
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SYS_RES_IOPORT, align 4
  %56 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %57 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %56, i32 0, i32 1
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.opticard, %struct.opticard* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x %struct.opticard], [3 x %struct.opticard]* @opti_detect.cards, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.opticard, %struct.opticard* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @RF_ACTIVE, align 4
  %70 = call i8* @bus_alloc_resource(i32 %54, i32 %55, i32* %57, i32 %62, i32 %68, i32 1, i32 %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %73 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %72, i32 0, i32 7
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %53, %18
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SYS_RES_IOPORT, align 4
  %77 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %78 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %77, i32 0, i32 0
  %79 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %80 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %83 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 9
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = call i8* @bus_alloc_resource(i32 %75, i32 %76, i32* %78, i32 %81, i32 %85, i32 9, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %90 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %89, i32 0, i32 6
  store i32* %88, i32** %90, align 8
  %91 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %92 = call i32 @opti_read(%struct.mss_info* %91, i32 1)
  %93 = icmp ne i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %135

95:                                               ; preds = %74
  %96 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %97 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SYS_RES_IOPORT, align 4
  %103 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %104 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %107 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_release_resource(i32 %101, i32 %102, i32 %105, i32* %108)
  br label %110

110:                                              ; preds = %100, %95
  %111 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %112 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %111, i32 0, i32 7
  store i32* null, i32** %112, align 8
  %113 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %114 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @SYS_RES_IOPORT, align 4
  %120 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %121 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %124 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @bus_release_resource(i32 %118, i32 %119, i32 %122, i32* %125)
  br label %127

127:                                              ; preds = %117, %110
  %128 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %129 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %128, i32 0, i32 6
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %11

134:                                              ; preds = %11
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %94
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i8* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @opti_read(%struct.mss_info*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
