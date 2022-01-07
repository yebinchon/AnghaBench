; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spicds_info = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32 }

@M_SPICDS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SPICDS_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s:spicds%d\00", align 1
@SPICDS_TYPE_AK4524 = common dso_local global i32 0, align 4
@AK452X_FORMAT_I2S = common dso_local global i32 0, align 4
@AK452X_FORMAT_256FSN = common dso_local global i32 0, align 4
@AK452X_FORMAT_1X = common dso_local global i32 0, align 4
@AK452X_DVC_DEMOFF = common dso_local global i32 0, align 4
@AK452X_DVC_ZTM1024 = common dso_local global i32 0, align 4
@AK452X_DVC_ZCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spicds_info* @spicds_create(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spicds_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spicds_info*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @M_SPICDS, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = call i64 @malloc(i32 56, i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.spicds_info*
  store %struct.spicds_info* %14, %struct.spicds_info** %10, align 8
  %15 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %16 = icmp eq %struct.spicds_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.spicds_info* null, %struct.spicds_info** %5, align 8
  br label %68

18:                                               ; preds = %4
  %19 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %20 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SPICDS_NAMELEN, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @device_get_nameunit(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snprintf(i32 %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %28 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %31 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snd_mtxcreate(i32 %29, i32 %32)
  %34 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %35 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %38 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %41 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %44 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %47 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @SPICDS_TYPE_AK4524, align 4
  %49 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %50 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %52 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @AK452X_FORMAT_I2S, align 4
  %54 = load i32, i32* @AK452X_FORMAT_256FSN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AK452X_FORMAT_1X, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %59 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @AK452X_DVC_DEMOFF, align 4
  %61 = load i32, i32* @AK452X_DVC_ZTM1024, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AK452X_DVC_ZCE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  %66 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.spicds_info*, %struct.spicds_info** %10, align 8
  store %struct.spicds_info* %67, %struct.spicds_info** %5, align 8
  br label %68

68:                                               ; preds = %18, %17
  %69 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  ret %struct.spicds_info* %69
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @snd_mtxcreate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
