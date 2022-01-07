; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_softc = type { i32**, i32*, i32, i32**, i32**, i32*, i32**, i32* }

@IO_MAX = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@DRQ_MAX = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@IRQ_MAX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbc_softc*)* @release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_resource(%struct.sbc_softc* %0) #0 {
  %2 = alloca %struct.sbc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.sbc_softc* %0, %struct.sbc_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %44, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IO_MAX, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %9, i32 0, i32 6
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %8
  %18 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %29, i32 0, i32 6
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_release_resource(i32 %20, i32 %21, i32 %28, i32* %35)
  %37 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %37, i32 0, i32 6
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %17, %8
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %4

47:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %88, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @DRQ_MAX, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %53, i32 0, i32 4
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %87

61:                                               ; preds = %52
  %62 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SYS_RES_DRQ, align 4
  %66 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %73, i32 0, i32 4
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %72, i32* %79)
  %81 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %82 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %81, i32 0, i32 4
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %61, %52
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %48

91:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %166, %91
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @IRQ_MAX, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %169

96:                                               ; preds = %92
  %97 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %98 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %165

105:                                              ; preds = %96
  %106 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %107 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %105
  %115 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %119 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %125, i32 0, i32 3
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @bus_teardown_intr(i32 %117, i32* %124, i32* %131)
  br label %133

133:                                              ; preds = %114, %105
  %134 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %135 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %134, i32 0, i32 3
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  store i32* null, i32** %139, align 8
  %140 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %141 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SYS_RES_IRQ, align 4
  %144 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %145 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %152 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @bus_release_resource(i32 %142, i32 %143, i32 %150, i32* %157)
  %159 = load %struct.sbc_softc*, %struct.sbc_softc** %2, align 8
  %160 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %159, i32 0, i32 0
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %133, %96
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %92

169:                                              ; preds = %92
  ret i32 0
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
