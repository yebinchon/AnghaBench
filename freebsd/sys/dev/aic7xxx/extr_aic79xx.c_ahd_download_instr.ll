; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_download_instr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_download_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%union.ins_formats = type { %struct.ins_format1 }
%struct.ins_format1 = type { i32, i32, i64 }
%struct.ins_format3 = type { i32 }

@seqprog = common dso_local global i32* null, align 8
@SEQRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unknown opcode encountered in seq program\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32, i64*)* @ahd_download_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_download_instr(%struct.ahd_softc* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %union.ins_formats, align 8
  %8 = alloca %struct.ins_format1*, align 8
  %9 = alloca %struct.ins_format3*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %14 = load i32*, i32** @seqprog, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @aic_le32toh(i32 %19)
  %21 = bitcast %union.ins_formats* %7 to i32*
  store i32 %20, i32* %21, align 8
  %22 = bitcast %union.ins_formats* %7 to %struct.ins_format1*
  store %struct.ins_format1* %22, %struct.ins_format1** %8, align 8
  store %struct.ins_format3* null, %struct.ins_format3** %9, align 8
  %23 = bitcast %union.ins_formats* %7 to %struct.ins_format1*
  %24 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %89 [
    i32 135, label %27
    i32 137, label %27
    i32 134, label %27
    i32 138, label %27
    i32 133, label %27
    i32 132, label %27
    i32 136, label %27
    i32 131, label %27
    i32 130, label %36
    i32 140, label %36
    i32 128, label %36
    i32 141, label %36
    i32 142, label %36
    i32 139, label %36
    i32 129, label %53
  ]

27:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %28 = bitcast %union.ins_formats* %7 to %struct.ins_format3*
  store %struct.ins_format3* %28, %struct.ins_format3** %9, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %30 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %31 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ahd_resolve_seqaddr(%struct.ahd_softc* %29, i32 %32)
  %34 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %35 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %3, %3, %3, %3, %3, %3, %27
  %37 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %38 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i64*, i64** %6, align 8
  %43 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %44 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %49 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %52 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %3, %50
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 31
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %13, align 4
  %60 = bitcast %union.ins_formats* %7 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %57
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = bitcast %union.ins_formats* %7 to %struct.ins_format1*
  %78 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = bitcast %union.ins_formats* %7 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @aic_htole32(i32 %81)
  %83 = bitcast %union.ins_formats* %7 to i32*
  store i32 %82, i32* %83, align 8
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %85 = load i32, i32* @SEQRAM, align 4
  %86 = bitcast %union.ins_formats* %7 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ahd_outsb(%struct.ahd_softc* %84, i32 %85, i32 %87, i32 4)
  br label %91

89:                                               ; preds = %3
  %90 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %79
  ret void
}

declare dso_local i32 @aic_le32toh(i32) #1

declare dso_local i32 @ahd_resolve_seqaddr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_htole32(i32) #1

declare dso_local i32 @ahd_outsb(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
