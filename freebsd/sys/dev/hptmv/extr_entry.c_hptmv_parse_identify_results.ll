; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_parse_identify_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_parse_identify_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@IDEN_CAPACITY_1_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"IAL Error in IDENTIFY info: LBA not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%25s - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Capabilities\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"LBA supported\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"IAL Error in IDENTIFY info: DMA not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"DMA supported\00", align 1
@IDEN_VALID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"IAL Error in IDENTIFY info: not able to find PIO mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%25s - 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"PIO modes supported\00", align 1
@IDEN_PIO_MODE_SPPORTED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"IAL Error in IDENTIFY info: not able to find UDMA mode\0A\00", align 1
@IDEN_SUPPORTED_COMMANDS2 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"LBA48 addressing\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"supported\00", align 1
@MV_TRUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Not supported\00", align 1
@MV_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hptmv_parse_identify_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptmv_parse_identify_results(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* @IDEN_CAPACITY_1_OFFSET, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 512
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @KdPrint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = call i32 @KdPrint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* @IDEN_CAPACITY_1_OFFSET, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 256
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 @KdPrint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

27:                                               ; preds = %18
  %28 = call i32 @KdPrint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* @IDEN_VALID, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @KdPrint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

38:                                               ; preds = %29
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* @IDEN_PIO_MODE_SPPORTED, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KdPrint(i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* @IDEN_VALID, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = call i32 @KdPrint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

55:                                               ; preds = %38
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* @IDEN_SUPPORTED_COMMANDS2, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1024
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = call i32 @KdPrint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32, i32* @MV_TRUE, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %72

67:                                               ; preds = %55
  %68 = call i32 @KdPrint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %69 = load i32, i32* @MV_FALSE, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %53, %36, %25, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @KdPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
