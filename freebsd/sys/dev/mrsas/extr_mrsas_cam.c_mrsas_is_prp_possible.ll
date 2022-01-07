; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_is_prp_possible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_is_prp_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { i32, %struct.mrsas_softc* }
%struct.mrsas_softc = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MR_DEFAULT_NVME_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_mpt_cmd*, %struct.TYPE_3__*, i32)* @mrsas_is_prp_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_is_prp_possible(%struct.mrsas_mpt_cmd* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.mrsas_mpt_cmd*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrsas_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mrsas_mpt_cmd* %0, %struct.mrsas_mpt_cmd** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %12, i32 0, i32 1
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %13, align 8
  store %struct.mrsas_softc* %14, %struct.mrsas_softc** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MR_DEFAULT_NVME_PAGE_SIZE, align 4
  %19 = call i32 @max(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %24, 5
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %51

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %30, 4
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 5
  %37 = icmp sle i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sub nsw i32 %43, %45
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49, %33, %28
  br label %51

51:                                               ; preds = %50, %27
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %141, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %144

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = srem i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = srem i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74, %64
  store i32 0, i32* %10, align 4
  %85 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %86 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %85, i32 0, i32 0
  %87 = call i32 @mrsas_atomic_inc(i32* %86)
  br label %144

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %59, %56
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %101, %107
  %109 = load i32, i32* %11, align 4
  %110 = srem i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  %113 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %114 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %113, i32 0, i32 0
  %115 = call i32 @mrsas_atomic_inc(i32* %114)
  br label %144

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %92, %89
  %118 = load i32, i32* %6, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = srem i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  %136 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %137 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %136, i32 0, i32 0
  %138 = call i32 @mrsas_atomic_inc(i32* %137)
  br label %144

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %120, %117
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %52

144:                                              ; preds = %135, %112, %84, %52
  %145 = load i32, i32* %10, align 4
  ret i32 %145
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mrsas_atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
