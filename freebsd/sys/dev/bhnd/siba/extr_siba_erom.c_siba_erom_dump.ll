; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_erom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.siba_admatch = type { i64, i64 }

@SIBA_CFG0_IDHIGH = common dso_local global i32 0, align 4
@SIBA_CFG0_IDLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"siba core %u:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09vendor:\090x%04x\0A\00", align 1
@IDH_VENDOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\09device:\090x%04x\0A\00", align 1
@IDH_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\09rev:\090x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\09sbrev:\090x%02x\0A\00", align 1
@IDL_SBREV = common dso_local global i32 0, align 4
@IDL_NRADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"\09nraddr\090x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"addrspace %zu unsupported\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"failed to decode address match register value 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\09addrspace %zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09\09addr: 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09\09size: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @siba_erom_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_erom_dump(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.siba_erom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.siba_admatch, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = bitcast i32* %13 to %struct.siba_erom*
  store %struct.siba_erom* %14, %struct.siba_erom** %3, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %101, %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.siba_erom*, %struct.siba_erom** %3, align 8
  %18 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %104

22:                                               ; preds = %15
  %23 = load %struct.siba_erom*, %struct.siba_erom** %3, align 8
  %24 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @SIBA_CFG0_IDHIGH, align 4
  %27 = call i64 @SB0_REG_ABS(i32 %26)
  %28 = call i32 @siba_eio_read_4(%struct.TYPE_2__* %24, i64 %25, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.siba_erom*, %struct.siba_erom** %3, align 8
  %30 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @SIBA_CFG0_IDLOW, align 4
  %33 = call i64 @SB0_REG_ABS(i32 %32)
  %34 = call i32 @siba_eio_read_4(%struct.TYPE_2__* %30, i64 %31, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IDH_VENDOR, align 4
  %39 = call i32 @SIBA_REG_GET(i32 %37, i32 %38)
  %40 = sext i32 %39 to i64
  %41 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IDH_DEVICE, align 4
  %44 = call i32 @SIBA_REG_GET(i32 %42, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @SIBA_IDH_CORE_REV(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @IDL_SBREV, align 4
  %53 = call i32 @SIBA_REG_GET(i32 %51, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IDL_NRADDR, align 4
  %58 = call i32 @SIBA_REG_GET(i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %60)
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %97, %22
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @siba_admatch_offset(i64 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %73)
  br label %100

75:                                               ; preds = %67
  %76 = load %struct.siba_erom*, %struct.siba_erom** %3, align 8
  %77 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %76, i32 0, i32 0
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @siba_eio_read_4(%struct.TYPE_2__* %77, i64 %78, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @siba_parse_admatch(i32 %81, %struct.siba_admatch* %10)
  store i32 %82, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i64 %86)
  br label %97

88:                                               ; preds = %75
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 %89)
  %91 = getelementptr inbounds %struct.siba_admatch, %struct.siba_admatch* %10, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %92)
  %94 = getelementptr inbounds %struct.siba_admatch, %struct.siba_admatch* %10, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %88, %84
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %62

100:                                              ; preds = %72, %62
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %15

104:                                              ; preds = %15
  ret i32 0
}

declare dso_local i32 @siba_eio_read_4(%struct.TYPE_2__*, i64, i64) #1

declare dso_local i64 @SB0_REG_ABS(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @SIBA_REG_GET(i32, i32) #1

declare dso_local i32 @SIBA_IDH_CORE_REV(i32) #1

declare dso_local i64 @siba_admatch_offset(i64) #1

declare dso_local i32 @siba_parse_admatch(i32, %struct.siba_admatch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
