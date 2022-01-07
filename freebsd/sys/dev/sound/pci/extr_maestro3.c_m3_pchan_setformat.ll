; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"m3_pchan_setformat(dac=%d, format=0x%x{%s-%s})\0A\00", align 1
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"16bit\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STEREO\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MONO\00", align 1
@SRC3_MODE_OFFSET = common dso_local global i64 0, align 8
@SRC3_WORD_LENGTH_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @m3_pchan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pchan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_pchinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %11, %struct.sc_pchinfo** %7, align 8
  %12 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %13 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %12, i32 0, i32 3
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %8, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %16 = call i32 @M3_LOCK(%struct.sc_info* %15)
  %17 = load i32, i32* @CHANGE, align 4
  %18 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %19 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AFMT_U8, align 4
  %24 = load i32, i32* @AFMT_S8, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @AFMT_CHANNEL(i32 %30)
  %32 = icmp sgt i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %35 = call i32 @M3_DEBUG(i32 %17, i8* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @AFMT_CHANNEL(i32 %36)
  %38 = icmp sgt i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  store i32 %40, i32* %9, align 4
  %41 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %42 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %43 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SRC3_MODE_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @m3_wr_assp_data(%struct.sc_info* %41, i64 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @AFMT_U8, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %3
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @AFMT_S8, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %3
  %59 = phi i1 [ true, %3 ], [ %57, %53 ]
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %9, align 4
  %62 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %63 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %64 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SRC3_WORD_LENGTH_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @m3_wr_assp_data(%struct.sc_info* %62, i64 %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %7, align 8
  %72 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %74 = call i32 @M3_UNLOCK(%struct.sc_info* %73)
  ret i32 0
}

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @m3_wr_assp_data(%struct.sc_info*, i64, i32) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
