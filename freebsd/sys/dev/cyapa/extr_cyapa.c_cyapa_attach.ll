; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.cyapa_softc* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cyapa_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cyapa\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%5.5s-%6.6s-%2.2s buttons=%c%c%c res=%dx%d\0A\00", align 1
@CYAPA_FNGR_LEFT = common dso_local global i32 0, align 4
@CYAPA_FNGR_MIDDLE = common dso_local global i32 0, align 4
@CYAPA_FNGR_RIGHT = common dso_local global i32 0, align 4
@MOUSE_IF_PS2 = common dso_local global i32 0, align 4
@MOUSE_MOUSE = common dso_local global i32 0, align 4
@MOUSE_MODEL_INTELLI = common dso_local global i32 0, align 4
@MOUSE_PROTO_PS2 = common dso_local global i32 0, align 4
@MOUSE_PS2_PACKETSIZE = common dso_local global i32 0, align 4
@cyapa_start = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cyapa_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cyapa%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cyapa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa_softc*, align 8
  %5 = alloca %struct.cyapa_cap, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cyapa_softc* @device_get_softc(i32 %8)
  store %struct.cyapa_softc* %9, %struct.cyapa_softc** %4, align 8
  %10 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %11 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_unit(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @iicbus_get_addr(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @init_device(i32 %16, %struct.cyapa_cap* %5, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %184

21:                                               ; preds = %1
  %22 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %23 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %22, i32 0, i32 7
  %24 = load i32, i32* @MTX_DEF, align 4
  %25 = call i32 @mtx_init(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %28 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %30 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %33 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %32, i32 0, i32 7
  %34 = call i32 @knlist_init_mtx(i32* %31, i32* %33)
  %35 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 4
  %38 = and i32 %37, 3840
  %39 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %38, %40
  %42 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %43 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = and i32 %46, 3840
  %48 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %47, %49
  %51 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %52 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 4
  %56 = and i32 %55, 3840
  %57 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %56, %58
  %60 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %61 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = and i32 %64, 3840
  %66 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %65, %67
  %69 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %70 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %74 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 76, i32 45
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CYAPA_FNGR_MIDDLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 77, i32 45
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %5, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CYAPA_FNGR_RIGHT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 82, i32 45
  %105 = trunc i32 %104 to i8
  %106 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %107 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %110 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %79, i32 %81, i8 signext %89, i8 signext %97, i8 signext %105, i32 %108, i32 %111)
  %113 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %114 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 5, i32* %115, align 8
  %116 = load i32, i32* @MOUSE_IF_PS2, align 4
  %117 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %118 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @MOUSE_MOUSE, align 4
  %121 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %122 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %121, i32 0, i32 11
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @MOUSE_MODEL_INTELLI, align 4
  %125 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %126 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %125, i32 0, i32 11
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %130 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @MOUSE_PROTO_PS2, align 4
  %133 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %134 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %133, i32 0, i32 10
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  store i32 %132, i32* %135, align 8
  %136 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %137 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %136, i32 0, i32 10
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 100, i32* %138, align 8
  %139 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %140 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %139, i32 0, i32 10
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 4, i32* %141, align 4
  %142 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %143 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %142, i32 0, i32 10
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %146 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %145, i32 0, i32 10
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @MOUSE_PS2_PACKETSIZE, align 4
  %149 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %150 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @cyapa_start, align 4
  %153 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %154 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %157 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %160 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  %162 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %163 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %162, i32 0, i32 8
  %164 = call i64 @config_intrhook_establish(%struct.TYPE_10__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %21
  %167 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %168 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %167, i32 0, i32 7
  %169 = call i32 @mtx_destroy(i32* %168)
  %170 = load i32, i32* @ENOMEM, align 4
  store i32 %170, i32* %2, align 4
  br label %184

171:                                              ; preds = %21
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @UID_ROOT, align 4
  %174 = load i32, i32* @GID_WHEEL, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call %struct.TYPE_9__* @make_dev(i32* @cyapa_cdevsw, i32 %172, i32 %173, i32 %174, i32 384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  %177 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %178 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %177, i32 0, i32 6
  store %struct.TYPE_9__* %176, %struct.TYPE_9__** %178, align 8
  %179 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %180 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %181 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %180, i32 0, i32 6
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store %struct.cyapa_softc* %179, %struct.cyapa_softc** %183, align 8
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %171, %166, %19
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.cyapa_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i64 @init_device(i32, %struct.cyapa_cap*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i8 signext, i8 signext, i8 signext, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_10__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local %struct.TYPE_9__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
