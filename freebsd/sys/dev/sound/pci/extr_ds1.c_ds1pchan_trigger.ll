; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1pchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1pchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@PCMTRIG_START = common dso_local global i32 0, align 4
@YDSXGR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ds1pchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1pchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_pchinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %12, %struct.sc_pchinfo** %8, align 8
  %13 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %14 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %13, i32 0, i32 4
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PCMTRIG_COMMON(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %22 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AFMT_CHANNEL(i32 %23)
  %25 = icmp sgt i32 %24, 1
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PCMTRIG_START, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %20
  %32 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %33 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %35 = call i32 @ds_setuppch(%struct.sc_pchinfo* %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %37 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %38 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ds_enapslot(%struct.sc_info* %36, i32 %39, i32 1)
  %41 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %42 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %43 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ds_enapslot(%struct.sc_info* %41, i32 %44, i32 %45)
  %47 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snd_mtxlock(i32 %49)
  %51 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %52 = load i32, i32* @YDSXGR_MODE, align 4
  %53 = call i32 @ds_wr(%struct.sc_info* %51, i32 %52, i32 3, i32 4)
  %54 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_mtxunlock(i32 %56)
  br label %71

58:                                               ; preds = %20
  %59 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %60 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %62 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %63 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ds_enapslot(%struct.sc_info* %61, i32 %64, i32 0)
  %66 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %67 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %68 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ds_enapslot(%struct.sc_info* %66, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %58, %31
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @ds_setuppch(%struct.sc_pchinfo*) #1

declare dso_local i32 @ds_enapslot(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
