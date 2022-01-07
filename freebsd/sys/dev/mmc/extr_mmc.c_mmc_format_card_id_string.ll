; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_format_card_id_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_format_card_id_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_ivars = type { i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s%s %s %d.%d SN %08X MFG %02d/%04d by %d %s\00", align 1
@mode_sd = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"MMC\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_ivars*)* @mmc_format_card_id_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_format_card_id_string(%struct.mmc_ivars* %0) #0 {
  %2 = alloca %struct.mmc_ivars*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_ivars* %0, %struct.mmc_ivars** %2, align 8
  %6 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 255
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 31
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 127
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 31
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 127
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %25, %22, %19, %1
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %35 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %36 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %42 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %47 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @mode_sd, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %63 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %64 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %69 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %70 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %74 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 4
  %78 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %79 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  %83 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %84 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %88 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %92 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mmc_ivars*, %struct.mmc_ivars** %2, align 8
  %96 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %68, i32 %72, i32 %77, i32 %82, i32 %86, i32 %90, i32 %94, i8* %98, i8* %99)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
