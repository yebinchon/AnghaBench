; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_wrcd.c"
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
@CODEC_PODAT_SHIFT = common dso_local global i32 0, align 4
@CODEC_PODAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @es1371_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1371_wrcd(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.es_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.es_info*
  store %struct.es_info* %14, %struct.es_info** %12, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %27, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 4096
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.es_info*, %struct.es_info** %12, align 8
  %20 = load i32, i32* @ES1371_REG_CODEC, align 4
  %21 = load i32, i32* @CODEC_WIP, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @es_rd(%struct.es_info* %19, i32 %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %15

30:                                               ; preds = %25, %15
  %31 = load %struct.es_info*, %struct.es_info** %12, align 8
  %32 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %33 = call i32 @es_rd(%struct.es_info* %31, i32 %32, i32 4)
  store i32 %33, i32* %11, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.es_info*, %struct.es_info** %12, align 8
  %35 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ES1371_DIS_SRC, align 4
  %38 = load i32, i32* @ES1371_DIS_P1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ES1371_DIS_P2, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ES1371_DIS_R1, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %36, %43
  %45 = or i32 %44, 65536
  %46 = call i32 @es_wr(%struct.es_info* %34, i32 %35, i32 %45, i32 4)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %58, %30
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 4096
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.es_info*, %struct.es_info** %12, align 8
  %52 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %53 = call i32 @es_rd(%struct.es_info* %51, i32 %52, i32 4)
  %54 = and i32 %53, 8847360
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %61

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %47

61:                                               ; preds = %56, %47
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 4096
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.es_info*, %struct.es_info** %12, align 8
  %67 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %68 = call i32 @es_rd(%struct.es_info* %66, i32 %67, i32 4)
  %69 = and i32 %68, 8847360
  %70 = icmp eq i32 %69, 65536
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %62

76:                                               ; preds = %71, %62
  %77 = load %struct.es_info*, %struct.es_info** %12, align 8
  %78 = load i32, i32* @ES1371_REG_CODEC, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @CODEC_POADD_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @CODEC_POADD_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @CODEC_PODAT_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @CODEC_PODAT_MASK, align 4
  %88 = and i32 %86, %87
  %89 = or i32 %83, %88
  %90 = call i32 @es_wr(%struct.es_info* %77, i32 %78, i32 %89, i32 4)
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @es1371_wait_src_ready(i8* %91)
  %93 = load %struct.es_info*, %struct.es_info** %12, align 8
  %94 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @es_wr(%struct.es_info* %93, i32 %94, i32 %95, i32 4)
  ret i32 0
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
