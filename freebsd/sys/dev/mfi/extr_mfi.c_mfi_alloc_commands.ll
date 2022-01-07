; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_alloc_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_alloc_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, %struct.mfi_command*, i32, i32, i32, i64, i32*, i64, i64 }
%struct.mfi_command = type { i32, i32, %struct.mfi_softc*, i64, i32*, %union.mfi_frame*, i64 }
%union.mfi_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_MFIBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MFI_SENSE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to allocate %d command blocks, only allocated %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*)* @mfi_alloc_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_alloc_commands(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.mfi_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  %7 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 48, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @M_MFIBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.mfi_command* @malloc(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %18, i32 0, i32 2
  store %struct.mfi_command* %17, %struct.mfi_command** %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %145, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %148

26:                                               ; preds = %20
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %27, i32 0, i32 2
  %29 = load %struct.mfi_command*, %struct.mfi_command** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %29, i64 %31
  store %struct.mfi_command* %32, %struct.mfi_command** %4, align 8
  %33 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add i64 %35, %41
  %43 = inttoptr i64 %42 to %union.mfi_frame*
  %44 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %45 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %44, i32 0, i32 5
  store %union.mfi_frame* %43, %union.mfi_frame** %45, align 8
  %46 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %48, %54
  %56 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %57 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %60 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %59, i32 0, i32 5
  %61 = load %union.mfi_frame*, %union.mfi_frame** %60, align 8
  %62 = bitcast %union.mfi_frame* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %71 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %70, i32 0, i32 4
  store i32* %69, i32** %71, align 8
  %72 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @MFI_SENSE_LEN, align 4
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %81 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %83 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %84 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %83, i32 0, i32 2
  store %struct.mfi_softc* %82, %struct.mfi_softc** %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %87 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %92 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %91, i32 0, i32 1
  %93 = call i64 @bus_dmamap_create(i32 %90, i32 0, i32* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %26
  %96 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %96, i32 0, i32 5
  %98 = call i32 @mtx_lock(i32* %97)
  %99 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %100 = call i32 @mfi_release_command(%struct.mfi_command* %99)
  %101 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %101, i32 0, i32 5
  %103 = call i32 @mtx_unlock(i32* %102)
  br label %144

104:                                              ; preds = %26
  %105 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %106 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %109 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %112)
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %132, %104
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %120 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %119, i32 0, i32 2
  %121 = load %struct.mfi_command*, %struct.mfi_command** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %121, i64 %123
  store %struct.mfi_command* %124, %struct.mfi_command** %4, align 8
  %125 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %126 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %129 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bus_dmamap_destroy(i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %114

135:                                              ; preds = %114
  %136 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %137 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %136, i32 0, i32 2
  %138 = load %struct.mfi_command*, %struct.mfi_command** %137, align 8
  %139 = load i32, i32* @M_MFIBUF, align 4
  %140 = call i32 @free(%struct.mfi_command* %138, i32 %139)
  %141 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %142 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %141, i32 0, i32 2
  store %struct.mfi_command* null, %struct.mfi_command** %142, align 8
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %2, align 4
  br label %149

144:                                              ; preds = %95
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %20

148:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %135
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.mfi_command* @malloc(i32, i32, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @free(%struct.mfi_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
