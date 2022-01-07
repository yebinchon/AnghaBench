; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic_softc = type { i32*, i32, i32**, i32*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ATPIC_MASTER = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ATPIC_SLAVE = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@atpic_intr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atpic_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atpic_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atpic_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.atpic_softc* @device_get_softc(i32 %6)
  store %struct.atpic_softc* %7, %struct.atpic_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %10 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %13 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @ATPIC_MASTER, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_IOPORT, align 4
  %19 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @ATPIC_MASTER, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %28 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* @ATPIC_MASTER, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* %26, i32** %31, align 8
  %32 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %33 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* @ATPIC_MASTER, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %112

40:                                               ; preds = %1
  %41 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %42 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @ATPIC_SLAVE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_IOPORT, align 4
  %48 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %49 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @ATPIC_SLAVE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i8* @bus_alloc_resource_any(i32 %46, i32 %47, i32* %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %57 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* @ATPIC_SLAVE, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  store i32* %55, i32** %60, align 8
  %61 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %62 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* @ATPIC_SLAVE, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %40
  br label %112

69:                                               ; preds = %40
  %70 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %71 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SYS_RES_IRQ, align 4
  %74 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %75 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %74, i32 0, i32 1
  %76 = load i32, i32* @RF_ACTIVE, align 4
  %77 = call i8* @bus_alloc_resource_any(i32 %72, i32 %73, i32* %75, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %80 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %82 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %112

86:                                               ; preds = %69
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %89 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @INTR_TYPE_MISC, align 4
  %92 = load i32, i32* @INTR_MPSAFE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @atpic_intr, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %97 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %96, i32 0, i32 4
  %98 = call i32 @bus_setup_intr(i32 %87, i32* %90, i32 %93, i32* null, i32 %94, i32 %95, i32* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %112

102:                                              ; preds = %86
  %103 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %104 = load i64, i64* @ATPIC_SLAVE, align 8
  %105 = call i32 @atpic_init(%struct.atpic_softc* %103, i64 %104)
  %106 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %107 = load i64, i64* @ATPIC_MASTER, align 8
  %108 = call i32 @atpic_init(%struct.atpic_softc* %106, i64 %107)
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @powerpc_register_pic(i32 %109, i32 0, i32 16, i32 0, i32 %110)
  store i32 0, i32* %2, align 4
  br label %177

112:                                              ; preds = %101, %85, %68, %39
  %113 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %114 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @SYS_RES_IRQ, align 4
  %120 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %121 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %124 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @bus_release_resource(i32 %118, i32 %119, i32 %122, i32* %125)
  br label %127

127:                                              ; preds = %117, %112
  %128 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %129 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @ATPIC_SLAVE, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %151

135:                                              ; preds = %127
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @SYS_RES_IOPORT, align 4
  %138 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %139 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @ATPIC_SLAVE, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %145 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %144, i32 0, i32 2
  %146 = load i32**, i32*** %145, align 8
  %147 = load i64, i64* @ATPIC_SLAVE, align 8
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @bus_release_resource(i32 %136, i32 %137, i32 %143, i32* %149)
  br label %151

151:                                              ; preds = %135, %127
  %152 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %153 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %152, i32 0, i32 2
  %154 = load i32**, i32*** %153, align 8
  %155 = load i64, i64* @ATPIC_MASTER, align 8
  %156 = getelementptr inbounds i32*, i32** %154, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %151
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @SYS_RES_IOPORT, align 4
  %162 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %163 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @ATPIC_MASTER, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.atpic_softc*, %struct.atpic_softc** %4, align 8
  %169 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %168, i32 0, i32 2
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* @ATPIC_MASTER, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @bus_release_resource(i32 %160, i32 %161, i32 %167, i32* %173)
  br label %175

175:                                              ; preds = %159, %151
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %102
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.atpic_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @atpic_init(%struct.atpic_softc*, i64) #1

declare dso_local i32 @powerpc_register_pic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
