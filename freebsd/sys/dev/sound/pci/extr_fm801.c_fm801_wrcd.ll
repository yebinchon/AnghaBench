; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_wrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"fm801_wrcd reg 0x%x val 0x%x\0A\00", align 1
@TIMO = common dso_local global i32 0, align 4
@FM_CODEC_CMD = common dso_local global i32 0, align 4
@FM_CODEC_CMD_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fm801 rdcd: 1 - DELAY\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"fm801 wrcd: read codec busy\0A\00", align 1
@FM_CODEC_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"fm801 wrcd: 2 - DELAY\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"fm801 wrcd release reg 0x%x val 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @fm801_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_wrcd(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fm801_info*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.fm801_info*
  store %struct.fm801_info* %13, %struct.fm801_info** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %33, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @TIMO, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.fm801_info*, %struct.fm801_info** %10, align 8
  %23 = load i32, i32* @FM_CODEC_CMD, align 4
  %24 = call i32 @fm801_rd(%struct.fm801_info* %22, i32 %23, i32 2)
  %25 = load i32, i32* @FM_CODEC_CMD_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = call i32 @DELAY(i32 10000)
  %32 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %17

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @TIMO, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %80

42:                                               ; preds = %36
  %43 = load %struct.fm801_info*, %struct.fm801_info** %10, align 8
  %44 = load i32, i32* @FM_CODEC_DATA, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @fm801_wr(%struct.fm801_info* %43, i32 %44, i32 %45, i32 2)
  %47 = load %struct.fm801_info*, %struct.fm801_info** %10, align 8
  %48 = load i32, i32* @FM_CODEC_CMD, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @fm801_wr(%struct.fm801_info* %47, i32 %48, i32 %49, i32 2)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %67, %42
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @TIMO, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.fm801_info*, %struct.fm801_info** %10, align 8
  %57 = load i32, i32* @FM_CODEC_CMD, align 4
  %58 = call i32 @fm801_rd(%struct.fm801_info* %56, i32 %57, i32 2)
  %59 = load i32, i32* @FM_CODEC_CMD_BUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %55, %51
  %63 = phi i1 [ false, %51 ], [ %61, %55 ]
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = call i32 @DELAY(i32 10000)
  %66 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %51

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @TIMO, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %74, %40
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @fm801_rd(%struct.fm801_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fm801_wr(%struct.fm801_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
