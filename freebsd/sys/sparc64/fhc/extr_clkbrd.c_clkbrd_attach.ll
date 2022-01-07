; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_clkbrd.c_clkbrd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_clkbrd.c_clkbrd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkbrd_softc = type { i32*, i32, i32, i32*, i32*, i8*, i32, i32** }

@CLKBRD_CF = common dso_local global i32 0, align 4
@CLKBRD_CLKVER = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not allocate resource %d\0A\00", align 1
@CLKBRD_HAS_CLKVER = common dso_local global i32 0, align 4
@CLKBRD_CLK = common dso_local global i64 0, align 8
@CLK_STS1 = common dso_local global i32 0, align 4
@CLK_STS1_SLOTS_MASK = common dso_local global i32 0, align 4
@CLKVER_SLOTS = common dso_local global i32 0, align 4
@CLKVER_SLOTS_MASK = common dso_local global i32 0, align 4
@CLKVER_SLOTS_PLUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Sun Enterprise Exx00 machine: %d slots\0A\00", align 1
@CLK_CTRL = common dso_local global i32 0, align 4
@clkbrd_led_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"clockboard\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @clkbrd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clkbrd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkbrd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.clkbrd_softc* @device_get_softc(i32 %8)
  store %struct.clkbrd_softc* %9, %struct.clkbrd_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %12 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @CLKBRD_CF, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %102, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CLKBRD_CLKVER, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %105

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %21 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %27 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %31 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = call i32* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %35, i32 %36)
  %38 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %39 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %38, i32 0, i32 7
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* %37, i32** %43, align 8
  %44 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %45 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %44, i32 0, i32 7
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %18
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @CLKBRD_CLKVER, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %58 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %189

62:                                               ; preds = %52
  br label %102

63:                                               ; preds = %18
  %64 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %65 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %64, i32 0, i32 7
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rman_get_bustag(i32* %70)
  %72 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %73 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %79 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %78, i32 0, i32 7
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @rman_get_bushandle(i32* %84)
  %86 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %87 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @CLKBRD_CLKVER, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %63
  %96 = load i32, i32* @CLKBRD_HAS_CLKVER, align 4
  %97 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %98 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %63
  br label %102

102:                                              ; preds = %101, %62
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %14

105:                                              ; preds = %14
  store i32 4, i32* %6, align 4
  %106 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %107 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @CLKBRD_CLK, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %113 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @CLKBRD_CLK, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CLK_STS1, align 4
  %119 = call i8* @bus_space_read_1(i32 %111, i32 %117, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @CLK_STS1_SLOTS_MASK, align 4
  %123 = and i32 %121, %122
  switch i32 %123, label %162 [
    i32 130, label %124
    i32 128, label %125
    i32 129, label %126
  ]

124:                                              ; preds = %105
  store i32 16, i32* %6, align 4
  br label %162

125:                                              ; preds = %105
  store i32 8, i32* %6, align 4
  br label %162

126:                                              ; preds = %105
  %127 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %128 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CLKBRD_HAS_CLKVER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %126
  %134 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %135 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @CLKBRD_CLKVER, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %142 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* @CLKBRD_CLKVER, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CLKVER_SLOTS, align 4
  %149 = call i8* @bus_space_read_1(i32 %140, i32 %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %133
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @CLKVER_SLOTS_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @CLKVER_SLOTS_PLUS, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 5, i32* %6, align 4
  br label %160

160:                                              ; preds = %159, %153, %133
  br label %161

161:                                              ; preds = %160, %126
  br label %162

162:                                              ; preds = %161, %105, %125, %124
  %163 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %164 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @device_printf(i32 %165, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %169 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @CLKBRD_CLK, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %175 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @CLKBRD_CLK, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CLK_CTRL, align 4
  %181 = call i8* @bus_space_read_1(i32 %173, i32 %179, i32 %180)
  %182 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %183 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* @clkbrd_led_func, align 4
  %185 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %186 = call i32 @led_create(i32 %184, %struct.clkbrd_softc* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %187 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %188 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  store i32 0, i32* %2, align 4
  br label %193

189:                                              ; preds = %56
  %190 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %4, align 8
  %191 = call i32 @clkbrd_free_resources(%struct.clkbrd_softc* %190)
  %192 = load i32, i32* @ENXIO, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %189, %162
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.clkbrd_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i8* @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @led_create(i32, %struct.clkbrd_softc*, i8*) #1

declare dso_local i32 @clkbrd_free_resources(%struct.clkbrd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
