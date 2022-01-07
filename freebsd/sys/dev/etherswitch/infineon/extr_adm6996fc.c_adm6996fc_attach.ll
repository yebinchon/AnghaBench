; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996fc_softc = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"adm6996fc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@M_ADM6996FC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adm6996fc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adm6996fc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.adm6996fc_softc* @device_get_softc(i32 %6)
  store %struct.adm6996fc_softc* %7, %struct.adm6996fc_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 4
  %11 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %11, i32 0, i32 10
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_desc(i32 %19)
  %21 = call i32 @strlcpy(i32 %18, i32 %20, i32 4)
  %22 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %22, i32 0, i32 0
  store i32 6, i32* %23, align 8
  %24 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %25 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %24, i32 0, i32 1
  store i32 31, i32* %25, align 4
  %26 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %26, i32 0, i32 2
  store i32 5, i32* %27, align 8
  %28 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %28, i32 0, i32 3
  store i32 100, i32* %29, align 4
  %30 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 16, i32* %32, align 4
  %33 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %34 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @M_ADM6996FC, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @malloc(i32 %44, i32 %45, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %52 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @M_ADM6996FC, align 4
  %60 = load i32, i32* @M_WAITOK, align 4
  %61 = load i32, i32* @M_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @malloc(i32 %58, i32 %59, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %66 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %65, i32 0, i32 5
  store i32* %64, i32** %66, align 8
  %67 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %68 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 8, %70
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @M_ADM6996FC, align 4
  %74 = load i32, i32* @M_WAITOK, align 4
  %75 = load i32, i32* @M_ZERO, align 4
  %76 = or i32 %74, %75
  %77 = call i8* @malloc(i32 %72, i32 %73, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %80 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %79, i32 0, i32 6
  store i32* %78, i32** %80, align 8
  %81 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %82 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @M_ADM6996FC, align 4
  %88 = load i32, i32* @M_WAITOK, align 4
  %89 = load i32, i32* @M_ZERO, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @malloc(i32 %86, i32 %87, i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %94 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %93, i32 0, i32 7
  store i32* %92, i32** %94, align 8
  %95 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %96 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %114, label %99

99:                                               ; preds = %1
  %100 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %101 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %106 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %111 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109, %104, %99, %1
  %115 = load i32, i32* @ENOMEM, align 4
  store i32 %115, i32* %5, align 4
  br label %138

116:                                              ; preds = %109
  %117 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %118 = call i32 @adm6996fc_attach_phys(%struct.adm6996fc_softc* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %138

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @bus_generic_probe(i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @bus_enumerate_hinted_children(i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @bus_generic_attach(i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %138

132:                                              ; preds = %122
  %133 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %134 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %133, i32 0, i32 8
  %135 = call i32 @callout_init(i32* %134, i32 0)
  %136 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %137 = call i32 @adm6996fc_tick(%struct.adm6996fc_softc* %136)
  store i32 0, i32* %2, align 4
  br label %184

138:                                              ; preds = %131, %121, %114
  %139 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %140 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %145 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* @M_ADM6996FC, align 4
  %148 = call i32 @free(i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %151 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %156 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @M_ADM6996FC, align 4
  %159 = call i32 @free(i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %162 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %167 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @M_ADM6996FC, align 4
  %170 = call i32 @free(i32* %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %160
  %172 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %173 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %4, align 8
  %178 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @M_ADM6996FC, align 4
  %181 = call i32 @free(i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %176, %171
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %132
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @adm6996fc_attach_phys(%struct.adm6996fc_softc*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @adm6996fc_tick(%struct.adm6996fc_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
