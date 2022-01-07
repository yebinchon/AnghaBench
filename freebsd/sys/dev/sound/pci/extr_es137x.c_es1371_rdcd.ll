; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i32 }

@ES1371_REG_CODEC = common dso_local global i32 0, align 4
@CODEC_WIP = common dso_local global i32 0, align 4
@ES1371_REG_SMPRATE = common dso_local global i32 0, align 4
@ES1371_DIS_SRC = common dso_local global i32 0, align 4
@ES1371_DIS_P1 = common dso_local global i32 0, align 4
@ES1371_DIS_P2 = common dso_local global i32 0, align 4
@ES1371_DIS_R1 = common dso_local global i32 0, align 4
@CODEC_POADD_SHIFT = common dso_local global i32 0, align 4
@CODEC_POADD_MASK = common dso_local global i32 0, align 4
@CODEC_PORD = common dso_local global i32 0, align 4
@CODEC_RDY = common dso_local global i32 0, align 4
@CODEC_PIDAT_MASK = common dso_local global i32 0, align 4
@CODEC_PIDAT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @es1371_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1371_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.es_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.es_info*
  store %struct.es_info* %12, %struct.es_info** %10, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %25, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 4096
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.es_info*, %struct.es_info** %10, align 8
  %18 = load i32, i32* @ES1371_REG_CODEC, align 4
  %19 = call i32 @es_rd(%struct.es_info* %17, i32 %18, i32 4)
  %20 = load i32, i32* @CODEC_WIP, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %13

28:                                               ; preds = %23, %13
  %29 = load %struct.es_info*, %struct.es_info** %10, align 8
  %30 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %31 = call i32 @es_rd(%struct.es_info* %29, i32 %30, i32 4)
  store i32 %31, i32* %9, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.es_info*, %struct.es_info** %10, align 8
  %33 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ES1371_DIS_SRC, align 4
  %36 = load i32, i32* @ES1371_DIS_P1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ES1371_DIS_P2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ES1371_DIS_R1, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %34, %41
  %43 = or i32 %42, 65536
  %44 = call i32 @es_wr(%struct.es_info* %32, i32 %33, i32 %43, i32 4)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %56, %28
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 4096
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.es_info*, %struct.es_info** %10, align 8
  %50 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %51 = call i32 @es_rd(%struct.es_info* %49, i32 %50, i32 4)
  %52 = and i32 %51, 8847360
  store i32 %52, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %45

59:                                               ; preds = %54, %45
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 4096
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load %struct.es_info*, %struct.es_info** %10, align 8
  %65 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %66 = call i32 @es_rd(%struct.es_info* %64, i32 %65, i32 4)
  %67 = and i32 %66, 8847360
  store i32 %67, i32* %8, align 4
  %68 = icmp eq i32 %67, 65536
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %60

74:                                               ; preds = %69, %60
  %75 = load %struct.es_info*, %struct.es_info** %10, align 8
  %76 = load i32, i32* @ES1371_REG_CODEC, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CODEC_POADD_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* @CODEC_POADD_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @CODEC_PORD, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @es_wr(%struct.es_info* %75, i32 %76, i32 %83, i32 4)
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @es1371_wait_src_ready(i8* %85)
  %87 = load %struct.es_info*, %struct.es_info** %10, align 8
  %88 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @es_wr(%struct.es_info* %87, i32 %88, i32 %89, i32 4)
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %103, %74
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 4096
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.es_info*, %struct.es_info** %10, align 8
  %96 = load i32, i32* @ES1371_REG_CODEC, align 4
  %97 = call i32 @es_rd(%struct.es_info* %95, i32 %96, i32 4)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @CODEC_RDY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %106

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %91

106:                                              ; preds = %101, %91
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @CODEC_PIDAT_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @CODEC_PIDAT_SHIFT, align 4
  %111 = ashr i32 %109, %110
  ret i32 %111
}

declare dso_local i32 @es_rd(%struct.es_info*, i32, i32) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @es1371_wait_src_ready(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
