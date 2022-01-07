; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@YDSXGR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"timeout irq\0A\00", align 1
@YDSXGR_CTRLSELECT = common dso_local global i32 0, align 4
@DS1_CHANS = common dso_local global i32 0, align 4
@YDSXGR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ds_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sc_info*
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @snd_mtxlock(i32 %10)
  %12 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %13 = load i32, i32* @YDSXGR_STATUS, align 4
  %14 = call i32 @ds_rd(%struct.sc_info* %12, i32 %13, i32 4)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 32768
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, -2147450880
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %124

27:                                               ; preds = %23
  %28 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %29 = load i32, i32* @YDSXGR_STATUS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, -2147450880
  %32 = call i32 @ds_wr(%struct.sc_info* %28, i32 %29, i32 %31, i32 4)
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = load i32, i32* @YDSXGR_CTRLSELECT, align 4
  %35 = call i32 @ds_rd(%struct.sc_info* %33, i32 %34, i32 4)
  %36 = and i32 %35, 1
  %37 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %72, %27
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DS1_CHANS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  %54 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_mtxunlock(i32 %56)
  %58 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @chn_intr(i32 %65)
  %67 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %68 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_mtxlock(i32 %69)
  br label %71

71:                                               ; preds = %53, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %39

75:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %108, %75
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %81 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  %90 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %91 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_mtxunlock(i32 %92)
  %94 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @chn_intr(i32 %101)
  %103 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %104 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @snd_mtxlock(i32 %105)
  br label %107

107:                                              ; preds = %89, %79
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %76

111:                                              ; preds = %76
  %112 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %113 = load i32, i32* @YDSXGR_MODE, align 4
  %114 = call i32 @ds_rd(%struct.sc_info* %112, i32 %113, i32 4)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %119 = load i32, i32* @YDSXGR_MODE, align 4
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, 2
  %122 = call i32 @ds_wr(%struct.sc_info* %118, i32 %119, i32 %121, i32 4)
  br label %123

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123, %23
  %125 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %126 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @snd_mtxunlock(i32 %127)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @ds_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
