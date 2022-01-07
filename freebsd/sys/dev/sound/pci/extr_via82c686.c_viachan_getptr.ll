; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i64, i64, i32, i32, i32, %struct.via_dma_op*, %struct.via_info* }
%struct.via_dma_op = type { i32 }
%struct.via_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"viachan_getptr: len / base = %x / %x\0A\00", align 1
@SEGS_PER_CHAN = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"return ptr=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @viachan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @viachan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.via_chinfo*, align 8
  %6 = alloca %struct.via_info*, align 8
  %7 = alloca %struct.via_dma_op*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.via_chinfo*
  store %struct.via_chinfo* %15, %struct.via_chinfo** %5, align 8
  %16 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %17 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %16, i32 0, i32 6
  %18 = load %struct.via_info*, %struct.via_info** %17, align 8
  store %struct.via_info* %18, %struct.via_info** %6, align 8
  %19 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %20 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %23 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %22, i32 0, i32 5
  %24 = load %struct.via_dma_op*, %struct.via_dma_op** %23, align 8
  store %struct.via_dma_op* %24, %struct.via_dma_op** %7, align 8
  %25 = load %struct.via_info*, %struct.via_info** %6, align 8
  %26 = getelementptr inbounds %struct.via_info, %struct.via_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_mtxlock(i32 %27)
  %29 = load %struct.via_info*, %struct.via_info** %6, align 8
  %30 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %31 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @via_rd(%struct.via_info* %29, i32 %32, i32 4)
  store i64 %33, i64* %11, align 8
  %34 = load %struct.via_info*, %struct.via_info** %6, align 8
  %35 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %36 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @via_rd(%struct.via_info* %34, i32 %37, i32 4)
  store i64 %38, i64* %12, align 8
  %39 = load %struct.via_info*, %struct.via_info** %6, align 8
  %40 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %41 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @via_rd(%struct.via_info* %39, i32 %42, i32 4)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load %struct.via_info*, %struct.via_info** %6, align 8
  %49 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %50 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @via_rd(%struct.via_info* %48, i32 %51, i32 4)
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %47, %2
  %54 = load %struct.via_info*, %struct.via_info** %6, align 8
  %55 = getelementptr inbounds %struct.via_info, %struct.via_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_mtxunlock(i32 %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %59)
  %61 = call i32 @DEB(i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %62, %63
  %65 = udiv i64 %64, 4
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i64, i64* @SEGS_PER_CHAN, align 8
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %68, %53
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %73 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @sndbuf_getsize(i32 %74)
  %76 = mul nsw i64 %71, %75
  %77 = load i64, i64* @SEGS_PER_CHAN, align 8
  %78 = sdiv i64 %76, %77
  %79 = load i64, i64* %12, align 8
  %80 = sub nsw i64 %78, %79
  store i64 %80, i64* %9, align 8
  %81 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %82 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCMDIR_REC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i64, i64* %9, align 8
  %88 = and i64 %87, -32
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %86, %70
  %90 = load i64, i64* %9, align 8
  %91 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  %92 = call i32 @DEB(i32 %91)
  %93 = load i64, i64* %9, align 8
  ret i64 %93
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i64 @via_rd(%struct.via_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @sndbuf_getsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
