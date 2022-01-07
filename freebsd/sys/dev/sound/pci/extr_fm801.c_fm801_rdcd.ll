; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_info = type { i32 }

@TIMO = common dso_local global i32 0, align 4
@FM_CODEC_CMD = common dso_local global i32 0, align 4
@FM_CODEC_CMD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fm801 rdcd: 1 - DELAY\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"fm801 rdcd: codec busy\0A\00", align 1
@FM_CODEC_CMD_READ = common dso_local global i32 0, align 4
@FM_CODEC_CMD_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"fm801 rdcd: 2 - DELAY\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fm801 rdcd: write codec invalid\0A\00", align 1
@FM_CODEC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @fm801_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm801_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fm801_info*
  store %struct.fm801_info* %11, %struct.fm801_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @TIMO, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %18 = load i32, i32* @FM_CODEC_CMD, align 4
  %19 = call i32 @fm801_rd(%struct.fm801_info* %17, i32 %18, i32 2)
  %20 = load i32, i32* @FM_CODEC_CMD_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = call i32 @DELAY(i32 10000)
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %12

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @TIMO, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %74

37:                                               ; preds = %31
  %38 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %39 = load i32, i32* @FM_CODEC_CMD, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FM_CODEC_CMD_READ, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @fm801_wr(%struct.fm801_info* %38, i32 %39, i32 %42, i32 2)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %61, %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @TIMO, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %50 = load i32, i32* @FM_CODEC_CMD, align 4
  %51 = call i32 @fm801_rd(%struct.fm801_info* %49, i32 %50, i32 2)
  %52 = load i32, i32* @FM_CODEC_CMD_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %48, %44
  %57 = phi i1 [ false, %44 ], [ %55, %48 ]
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = call i32 @DELAY(i32 10000)
  %60 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %44

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @TIMO, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %74

70:                                               ; preds = %64
  %71 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %72 = load i32, i32* @FM_CODEC_DATA, align 4
  %73 = call i32 @fm801_rd(%struct.fm801_info* %71, i32 %72, i32 2)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %68, %35
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @fm801_rd(%struct.fm801_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fm801_wr(%struct.fm801_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
