; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_negotiate_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_negotiate_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Local or link partner's advertised flow control settings are NULL. Local: %x, link partner: %x\0A\00", align 1
@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i32 0, align 4
@ixgbe_fc_full = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@ixgbe_fc_rx_pause = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Flow Control=RX PAUSE frames only\0A\00", align 1
@ixgbe_fc_tx_pause = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", align 1
@ixgbe_fc_none = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_negotiate_fc(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %7
  %22 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @ERROR_REPORT3(i32 %22, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 4
  store i32 %26, i32* %8, align 4
  br label %120

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %14, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ixgbe_fc_full, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i64, i64* @ixgbe_fc_full, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %57

51:                                               ; preds = %37
  %52 = load i8*, i8** @ixgbe_fc_rx_pause, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %44
  br label %118

58:                                               ; preds = %32, %27
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %15, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** @ixgbe_fc_tx_pause, align 8
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %117

84:                                               ; preds = %73, %68, %63, %58
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %15, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** @ixgbe_fc_rx_pause, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %116

110:                                              ; preds = %99, %94, %89, %84
  %111 = load i8*, i8** @ixgbe_fc_none, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %104
  br label %117

117:                                              ; preds = %116, %78
  br label %118

118:                                              ; preds = %117, %57
  %119 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %21
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @ERROR_REPORT3(i32, i8*, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
