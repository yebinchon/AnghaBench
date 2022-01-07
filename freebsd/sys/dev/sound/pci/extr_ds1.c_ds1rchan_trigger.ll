; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1rchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1rchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i64, %struct.sc_info* }
%struct.sc_info = type { i32 }

@PCMTRIG_START = common dso_local global i32 0, align 4
@YDSXGR_MAPOFREC = common dso_local global i32 0, align 4
@DS1_RECPRIMARY = common dso_local global i64 0, align 8
@YDSXGR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ds1rchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1rchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_rchinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_rchinfo*
  store %struct.sc_rchinfo* %12, %struct.sc_rchinfo** %8, align 8
  %13 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %14 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %13, i32 0, i32 2
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PCMTRIG_COMMON(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PCMTRIG_START, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %26 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %28 = call i32 @ds_setuprch(%struct.sc_rchinfo* %27)
  %29 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_mtxlock(i32 %31)
  %33 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %34 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %35 = call i32 @ds_rd(%struct.sc_info* %33, i32 %34, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %37 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DS1_RECPRIMARY, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %46 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ds_wr(%struct.sc_info* %45, i32 %46, i32 %47, i32 4)
  %49 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %50 = load i32, i32* @YDSXGR_MODE, align 4
  %51 = call i32 @ds_wr(%struct.sc_info* %49, i32 %50, i32 3, i32 4)
  %52 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_mtxunlock(i32 %54)
  br label %84

56:                                               ; preds = %20
  %57 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %58 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_mtxlock(i32 %61)
  %63 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %64 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %65 = call i32 @ds_rd(%struct.sc_info* %63, i32 %64, i32 4)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %67 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DS1_RECPRIMARY, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 2, i32 1
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %77 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ds_wr(%struct.sc_info* %76, i32 %77, i32 %78, i32 4)
  %80 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %81 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @snd_mtxunlock(i32 %82)
  br label %84

84:                                               ; preds = %56, %24
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @ds_setuprch(%struct.sc_rchinfo*) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @ds_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
