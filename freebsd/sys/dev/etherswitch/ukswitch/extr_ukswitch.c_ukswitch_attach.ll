; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ukswitch/extr_ukswitch.c_ukswitch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ukswitch/extr_ukswitch.c_ukswitch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukswitch_softc = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ukswitch\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"numports\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phymask\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"phyoffset\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cpuport\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@M_UKSWITCH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ukswitch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukswitch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ukswitch_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ukswitch_softc* @device_get_softc(i32 %6)
  store %struct.ukswitch_softc* %7, %struct.ukswitch_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %9, i32 0, i32 12
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %11, i32 0, i32 11
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_desc(i32 %19)
  %21 = call i32 @strlcpy(i32 %18, i32 %20, i32 4)
  %22 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %22, i32 0, i32 0
  store i32 6, i32* %23, align 8
  %24 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %24, i32 0, i32 1
  store i32 15, i32* %25, align 4
  %26 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %28, i32 0, i32 3
  store i32 -1, i32* %29, align 4
  %30 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %30, i32 0, i32 4
  store i32 100, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_name(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_get_unit(i32 %34)
  %36 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %36, i32 0, i32 0
  %38 = call i32 @resource_int_value(i32 %33, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_name(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %43, i32 0, i32 1
  %45 = call i32 @resource_int_value(i32 %40, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_get_name(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_get_unit(i32 %48)
  %50 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %50, i32 0, i32 2
  %52 = call i32 @resource_int_value(i32 %47, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_get_name(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_get_unit(i32 %55)
  %57 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %57, i32 0, i32 3
  %59 = call i32 @resource_int_value(i32 %54, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_name(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_get_unit(i32 %62)
  %64 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %64, i32 0, i32 4
  %66 = call i32 @resource_int_value(i32 %61, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %65)
  %67 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 100
  br i1 %70, label %71, label %79

71:                                               ; preds = %1
  %72 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 1000
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %77, i32 0, i32 4
  store i32 100, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71, %1
  %80 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %81 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %86 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  %89 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84, %79
  %94 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %98 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 8, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @M_UKSWITCH, align 4
  %104 = load i32, i32* @M_WAITOK, align 4
  %105 = load i32, i32* @M_ZERO, align 4
  %106 = or i32 %104, %105
  %107 = call i8* @malloc(i32 %102, i32 %103, i32 %106)
  %108 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %109 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %108, i32 0, i32 9
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %111 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 8, %113
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @M_UKSWITCH, align 4
  %117 = load i32, i32* @M_WAITOK, align 4
  %118 = load i32, i32* @M_ZERO, align 4
  %119 = or i32 %117, %118
  %120 = call i8* @malloc(i32 %115, i32 %116, i32 %119)
  %121 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %122 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %121, i32 0, i32 8
  store i8* %120, i8** %122, align 8
  %123 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = mul i64 8, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* @M_UKSWITCH, align 4
  %130 = load i32, i32* @M_WAITOK, align 4
  %131 = load i32, i32* @M_ZERO, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @malloc(i32 %128, i32 %129, i32 %132)
  %134 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %135 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @M_UKSWITCH, align 4
  %143 = load i32, i32* @M_WAITOK, align 4
  %144 = load i32, i32* @M_ZERO, align 4
  %145 = or i32 %143, %144
  %146 = call i8* @malloc(i32 %141, i32 %142, i32 %145)
  %147 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %150 = call i32 @ukswitch_attach_phys(%struct.ukswitch_softc* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %93
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %173

155:                                              ; preds = %93
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @bus_generic_probe(i32 %156)
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @bus_enumerate_hinted_children(i32 %158)
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @bus_generic_attach(i32 %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %173

166:                                              ; preds = %155
  %167 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %168 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %167, i32 0, i32 5
  %169 = call i32 @callout_init(i32* %168, i32 0)
  %170 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %4, align 8
  %171 = call i32 @ukswitch_tick(%struct.ukswitch_softc* %170)
  %172 = load i32, i32* %5, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %166, %164, %153
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.ukswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ukswitch_attach_phys(%struct.ukswitch_softc*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @ukswitch_tick(%struct.ukswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
