; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_elantech_init_synaptics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_elantech_init_synaptics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"elantech\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Elantech Touchpad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*)* @elantech_init_synaptics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_init_synaptics(%struct.psm_softc* %0) #0 {
  %2 = alloca %struct.psm_softc*, align 8
  store %struct.psm_softc* %0, %struct.psm_softc** %2, align 8
  %3 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %4 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %8 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 19
  store i32 %6, i32* %9, align 4
  %10 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %11 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %15 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 18
  store i32 %13, i32* %16, align 8
  %17 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %18 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %22 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 17
  store i32 %20, i32* %23, align 4
  %24 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %25 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %29 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 16
  store i32 %27, i32* %30, align 8
  %31 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %32 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 15
  store i64 0, i64* %33, align 8
  %34 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %38 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %41 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %45 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 14
  store i32 %43, i32* %46, align 8
  %47 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %48 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %52 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 13
  store i64 %50, i64* %53, align 8
  %54 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %55 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %58 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %64 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  br label %70

66:                                               ; preds = %1
  %67 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %68 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %72 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i32 1, i32* %73, align 4
  %74 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %75 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %78 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32 1, i32* %79, align 8
  %80 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %81 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %85 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  store i32 %83, i32* %86, align 4
  %87 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %88 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %92 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 8
  store i32 %90, i32* %93, align 8
  %94 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %95 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 9
  store i32 1, i32* %96, align 4
  %97 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %98 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 11
  store i64 0, i64* %99, align 8
  %100 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %101 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 10
  store i64 0, i64* %102, align 8
  %103 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %104 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 27
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %224

108:                                              ; preds = %70
  %109 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %110 = call i32 @synaptics_sysctl_create_tree(%struct.psm_softc* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %112 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %116 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %119 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %123 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %126 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %129 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store i32 7, i32* %130, align 4
  %131 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %132 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  store i32 1, i32* %133, align 8
  %134 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %135 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 26
  store i64 0, i64* %136, align 8
  %137 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %138 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 25
  store i64 0, i64* %139, align 8
  %140 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %141 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 24
  store i64 0, i64* %142, align 8
  %143 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %144 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 23
  store i64 0, i64* %145, align 8
  %146 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %147 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 22
  store i64 0, i64* %148, align 8
  %149 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %150 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 21
  store i64 0, i64* %151, align 8
  %152 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %153 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 20
  store i64 0, i64* %154, align 8
  %155 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %156 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 19
  store i64 0, i64* %157, align 8
  %158 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %159 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 5
  store i32 200, i32* %160, align 4
  %161 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %162 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  store i32 3, i32* %163, align 8
  %164 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %165 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 7
  store i32 6, i32* %166, align 4
  %167 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %168 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 8
  store i32 10, i32* %169, align 8
  %170 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %171 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 9
  store i32 30, i32* %172, align 4
  %173 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %174 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 10
  store i32 25, i32* %175, align 8
  %176 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %177 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 18
  store i64 0, i64* %178, align 8
  %179 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %180 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 17
  store i64 0, i64* %181, align 8
  %182 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %183 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 11
  store i32 15, i32* %184, align 4
  %185 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %186 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 12
  store i32 30, i32* %187, align 8
  %188 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %189 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 13
  store i32 50, i32* %190, align 4
  %191 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %192 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %108
  %197 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %198 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 4
  %202 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %203 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 14
  store i32 %201, i32* %204, align 8
  %205 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %206 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %208, 11
  %210 = sdiv i32 %209, 25
  %211 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %212 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 15
  store i32 %210, i32* %213, align 4
  %214 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %215 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %217, 14
  %219 = sdiv i32 %218, 25
  %220 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %221 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 16
  store i32 %219, i32* %222, align 8
  br label %223

223:                                              ; preds = %196, %108
  br label %224

224:                                              ; preds = %223, %70
  ret void
}

declare dso_local i32 @synaptics_sysctl_create_tree(%struct.psm_softc*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
