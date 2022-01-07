; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_set_default_fc_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_set_default_fc_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_set_default_fc_generic\00", align 1
@e1000_i350 = common dso_local global i64 0, align 8
@NVM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_WORD0F_PAUSE_MASK = common dso_local global i32 0, align 4
@e1000_fc_none = common dso_local global i32 0, align 4
@NVM_WORD0F_ASM_DIR = common dso_local global i32 0, align 4
@e1000_fc_tx_pause = common dso_local global i32 0, align 4
@e1000_fc_full = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_set_default_fc_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_i350, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @NVM_82580_LAN_FUNC_OFFSET(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i64 %24(%struct.e1000_hw.0* %26, i32 %29, i32 1, i32* %5)
  store i64 %30, i64* %4, align 8
  br label %41

31:                                               ; preds = %1
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.0*
  %39 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %40 = call i64 %36(%struct.e1000_hw.0* %38, i32 %39, i32 1, i32* %5)
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %31, %14
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %76

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NVM_WORD0F_PAUSE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @e1000_fc_none, align 4
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %74

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NVM_WORD0F_PAUSE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @NVM_WORD0F_ASM_DIR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @e1000_fc_tx_pause, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @e1000_fc_full, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %44
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @NVM_82580_LAN_FUNC_OFFSET(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
