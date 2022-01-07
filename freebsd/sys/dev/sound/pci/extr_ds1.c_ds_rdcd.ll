; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 }

@YDSXGR_SECSTATUSDATA = common dso_local global i32 0, align 4
@YDSXGR_PRISTATUSDATA = common dso_local global i32 0, align 4
@YDSXG_AC97READCMD = common dso_local global i32 0, align 4
@YDSXGR_AC97CMDADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ds_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.sc_info*
  store %struct.sc_info* %15, %struct.sc_info** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 256
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %26, %22 ], [ 0, %27 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @YDSXGR_SECSTATUSDATA, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @YDSXGR_PRISTATUSDATA, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %85

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @YDSXG_AC97READCMD, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %51 = load i32, i32* @YDSXGR_AC97CMDADR, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @ds_wr(%struct.sc_info* %50, i32 %51, i32 %52, i32 2)
  %54 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @ds_cdbusy(%struct.sc_info* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %85

59:                                               ; preds = %44
  %60 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 11
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %77, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 600
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @ds_rd(%struct.sc_info* %74, i32 %75, i32 2)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %70

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %64, %59
  %82 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ds_rd(%struct.sc_info* %82, i32 %83, i32 2)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %58, %43
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i64 @ds_cdbusy(%struct.sc_info*, i32) #1

declare dso_local i32 @ds_rd(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
