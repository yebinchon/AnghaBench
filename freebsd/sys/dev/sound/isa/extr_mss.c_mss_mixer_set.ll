; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_mixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.mss_info = type { i32 }

@opti931_devices = common dso_local global %struct.TYPE_6__** null, align 8
@opti930_devices = common dso_local global %struct.TYPE_6__** null, align 8
@mix_devices = common dso_local global %struct.TYPE_6__** null, align 8
@LEFT_CHN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nbits = 0 for dev %d\0A\00", align 1
@RIGHT_CHN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"LEFT: dev %d reg %d old 0x%02x new 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"RIGHT: dev %d reg %d old 0x%02x new 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mss_info*, i32, i32, i32)* @mss_mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_mixer_set(%struct.mss_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mss_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__***, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mss_info*, %struct.mss_info** %6, align 8
  %15 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %19 [
    i32 128, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %4
  store %struct.TYPE_6__*** @opti931_devices, %struct.TYPE_6__**** %11, align 8
  br label %20

18:                                               ; preds = %4
  store %struct.TYPE_6__*** @opti930_devices, %struct.TYPE_6__**** %11, align 8
  br label %20

19:                                               ; preds = %4
  store %struct.TYPE_6__*** @mix_devices, %struct.TYPE_6__**** %11, align 8
  br label %20

20:                                               ; preds = %19, %18, %17
  %21 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i64, i64* @LEFT_CHN, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @DEB(i32 %34)
  store i32 -1, i32* %5, align 4
  br label %148

36:                                               ; preds = %20
  %37 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* @RIGHT_CHN, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %36
  %51 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* @LEFT_CHN, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  %61 = load %struct.mss_info*, %struct.mss_info** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ad_read(%struct.mss_info* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %50
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, 128
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 127
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ]
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %50
  %78 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* @LEFT_CHN, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @change_bits(%struct.TYPE_6__*** %78, i32* %13, i32 %79, i64 %80, i32 %81)
  %83 = load %struct.mss_info*, %struct.mss_info** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @ad_write(%struct.mss_info* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = call i32 @DEB(i32 %91)
  %93 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i64, i64* @RIGHT_CHN, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %77
  %105 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %106 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %106, i64 %108
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i64, i64* @RIGHT_CHN, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %10, align 4
  %115 = load %struct.mss_info*, %struct.mss_info** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ad_read(%struct.mss_info* %115, i32 %116)
  store i32 %117, i32* %13, align 4
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %131

120:                                              ; preds = %104
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, 128
  br label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, 127
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i32 [ %125, %123 ], [ %128, %126 ]
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %104
  %132 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %11, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i64, i64* @RIGHT_CHN, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @change_bits(%struct.TYPE_6__*** %132, i32* %13, i32 %133, i64 %134, i32 %135)
  %137 = load %struct.mss_info*, %struct.mss_info** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @ad_write(%struct.mss_info* %137, i32 %138, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = call i32 @DEB(i32 %145)
  br label %147

147:                                              ; preds = %131, %77
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %32
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

declare dso_local i32 @change_bits(%struct.TYPE_6__***, i32*, i32, i64, i32) #1

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
