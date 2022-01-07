; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_setup_rambuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_setup_rambuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32 }

@B2_E_0 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"RAM buffer size : %dKB\0A\00", align 1
@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Port %d : Rx Queue %dKB(0x%08x:0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Port %d : Tx Queue %dKB(0x%08x:0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_softc*)* @mskc_setup_rambuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mskc_setup_rambuffer(%struct.msk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msk_softc* %0, %struct.msk_softc** %3, align 8
  %6 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %7 = load i32, i32* @B2_E_0, align 4
  %8 = call i32 @CSR_READ_1(%struct.msk_softc* %6, i32 %7)
  %9 = mul nsw i32 %8, 4
  %10 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %11 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %16 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %19 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %24 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %168

28:                                               ; preds = %22
  %29 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %30 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %31 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %35 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 1024
  %38 = mul nsw i32 %37, 2
  %39 = sdiv i32 %38, 3
  %40 = call i32 @rounddown(i32 %39, i32 1024)
  %41 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %42 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %44 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 1024
  %47 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %48 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %52 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %164, %28
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %56 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %167

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %62 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %69 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %74 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %80 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %89 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %96 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %94, %97
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %101 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %100, i32 0, i32 7
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %107 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  %114 = load i64, i64* @bootverbose, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %59
  %117 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %118 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %122 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 1024
  %125 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %126 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %133 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %124, i32 %131, i32 %138)
  %140 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %141 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %145 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %146, 1024
  %148 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %149 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %156 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %147, i32 %154, i32 %161)
  br label %163

163:                                              ; preds = %116, %59
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %53

167:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %27
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @CSR_READ_1(%struct.msk_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @rounddown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
