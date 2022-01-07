; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_ksz90x1_load_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_ksz90x1_load_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64 }

@MII_MODEL_MICREL_KSZ9031 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32)* @ksz90x1_load_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz90x1_load_values(%struct.mii_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i32 %8, i32 %9, i8* %10, i32 %11, i32 %12, i8* %13, i32 %14, i32 %15) #0 {
  %17 = alloca %struct.mii_softc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [1 x i32], align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %17, align 8
  store i32 %1, i32* %18, align 4
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i8* %4, i8** %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i8* %7, i8** %24, align 8
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i8* %10, i8** %27, align 8
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32 %14, i32* %31, align 4
  store i32 %15, i32* %32, align 4
  %36 = load %struct.mii_softc*, %struct.mii_softc** %17, align 8
  %37 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MII_MODEL_MICREL_KSZ9031, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %16
  %42 = load %struct.mii_softc*, %struct.mii_softc** %17, align 8
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @ksz9031_read(%struct.mii_softc* %42, i32 %43, i32 %44)
  store i32 %45, i32* %35, align 4
  br label %50

46:                                               ; preds = %16
  %47 = load %struct.mii_softc*, %struct.mii_softc** %17, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @ksz9021_read(%struct.mii_softc* %47, i32 %48)
  store i32 %49, i32* %35, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %18, align 4
  %52 = load i8*, i8** %21, align 8
  %53 = call i32 @OF_getproplen(i32 %51, i8* %52)
  store i32 %53, i32* %34, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load i32, i32* %18, align 4
  %57 = load i8*, i8** %21, align 8
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %59 = load i32, i32* %34, align 4
  %60 = call i32 @OF_getencprop(i32 %56, i8* %57, i32* %58, i32 %59)
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %23, align 4
  %63 = shl i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %35, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %35, align 4
  %67 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PS_TO_REG(i32 %68)
  %70 = load i32, i32* %22, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %23, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %35, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %35, align 4
  br label %76

76:                                               ; preds = %55, %50
  %77 = load i8*, i8** %24, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i32, i32* %18, align 4
  %81 = load i8*, i8** %24, align 8
  %82 = call i32 @OF_getproplen(i32 %80, i8* %81)
  store i32 %82, i32* %34, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load i32, i32* %18, align 4
  %86 = load i8*, i8** %24, align 8
  %87 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %88 = load i32, i32* %34, align 4
  %89 = call i32 @OF_getencprop(i32 %85, i8* %86, i32* %87, i32 %88)
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %26, align 4
  %92 = shl i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %35, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %35, align 4
  %96 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PS_TO_REG(i32 %97)
  %99 = load i32, i32* %25, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %26, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %35, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %35, align 4
  br label %105

105:                                              ; preds = %84, %79, %76
  %106 = load i8*, i8** %27, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i32, i32* %18, align 4
  %110 = load i8*, i8** %27, align 8
  %111 = call i32 @OF_getproplen(i32 %109, i8* %110)
  store i32 %111, i32* %34, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = load i32, i32* %18, align 4
  %115 = load i8*, i8** %27, align 8
  %116 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %117 = load i32, i32* %34, align 4
  %118 = call i32 @OF_getencprop(i32 %114, i8* %115, i32* %116, i32 %117)
  %119 = load i32, i32* %28, align 4
  %120 = load i32, i32* %29, align 4
  %121 = shl i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %35, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %35, align 4
  %125 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @PS_TO_REG(i32 %126)
  %128 = load i32, i32* %28, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %29, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %35, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %35, align 4
  br label %134

134:                                              ; preds = %113, %108, %105
  %135 = load i8*, i8** %30, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = load i32, i32* %18, align 4
  %139 = load i8*, i8** %30, align 8
  %140 = call i32 @OF_getproplen(i32 %138, i8* %139)
  store i32 %140, i32* %34, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %137
  %143 = load i32, i32* %18, align 4
  %144 = load i8*, i8** %30, align 8
  %145 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %146 = load i32, i32* %34, align 4
  %147 = call i32 @OF_getencprop(i32 %143, i8* %144, i32* %145, i32 %146)
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %32, align 4
  %150 = shl i32 %148, %149
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %35, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %35, align 4
  %154 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @PS_TO_REG(i32 %155)
  %157 = load i32, i32* %31, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %32, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %35, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %35, align 4
  br label %163

163:                                              ; preds = %142, %137, %134
  %164 = load %struct.mii_softc*, %struct.mii_softc** %17, align 8
  %165 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MII_MODEL_MICREL_KSZ9031, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load %struct.mii_softc*, %struct.mii_softc** %17, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %35, align 4
  %174 = call i32 @ksz9031_write(%struct.mii_softc* %170, i32 %171, i32 %172, i32 %173)
  br label %180

175:                                              ; preds = %163
  %176 = load %struct.mii_softc*, %struct.mii_softc** %17, align 8
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %35, align 4
  %179 = call i32 @ksz9021_write(%struct.mii_softc* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %169
  ret void
}

declare dso_local i32 @ksz9031_read(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @ksz9021_read(%struct.mii_softc*, i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @PS_TO_REG(i32) #1

declare dso_local i32 @ksz9031_write(%struct.mii_softc*, i32, i32, i32) #1

declare dso_local i32 @ksz9021_write(%struct.mii_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
