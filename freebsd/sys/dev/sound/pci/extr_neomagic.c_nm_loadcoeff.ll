; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_loadcoeff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_loadcoeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@coefficientSizes = common dso_local global i32* null, align 8
@coefficients = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32, i32)* @nm_loadcoeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_loadcoeff(%struct.sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PCMDIR_PLAY, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 28, i32 540
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PCMDIR_REC, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32*, i32** @coefficientSizes, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %32, %22
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp sgt i32 %29, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** @coefficientSizes, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %28

40:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32*, i32** @coefficients, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nm_wrbuf(%struct.sc_info* %46, i64 %52, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %68 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @nm_wr(%struct.sc_info* %65, i32 %66, i64 %69, i32 4)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PCMDIR_PLAY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 4
  %81 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %82 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i32 @nm_wr(%struct.sc_info* %78, i32 %80, i64 %86, i32 4)
  ret i32 0
}

declare dso_local i32 @nm_wrbuf(%struct.sc_info*, i64, i32, i32) #1

declare dso_local i32 @nm_wr(%struct.sc_info*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
