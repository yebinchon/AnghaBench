; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_insert_mac_addr_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_insert_mac_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ixgbe_insert_mac_addr_generic.NO_EMPTY_RAR_FOUND = internal constant i64 4294967295, align 8
@.str = private unnamed_addr constant [30 x i8] c"ixgbe_insert_mac_addr_generic\00", align 1
@IXGBE_RAH_AV = common dso_local global i64 0, align 8
@IXGBE_ERR_INVALID_MAC_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_insert_mac_addr_generic(%struct.ixgbe_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 4294967295, i64* %8, align 8
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %17, %21
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 24
  %32 = or i32 %27, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %36, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %81, %3
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %43
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @IXGBE_RAH(i64 %52)
  %54 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %51, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* @IXGBE_RAH_AV, align 8
  %56 = load i64, i64* %11, align 8
  %57 = and i64 %55, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 4294967295
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %8, align 8
  br label %80

64:                                               ; preds = %59, %50
  %65 = load i64, i64* %11, align 8
  %66 = and i64 %65, 65535
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @IXGBE_RAL(i64 %71)
  %73 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %70, i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %84

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %43

84:                                               ; preds = %77, %43
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %85, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @ixgbe_set_vmdq(%struct.ixgbe_hw* %92, i64 %93, i64 %94)
  br label %138

96:                                               ; preds = %84
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 4294967295
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %9, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @IXGBE_RAH_AV, align 8
  %106 = call i32 @ixgbe_set_rar(%struct.ixgbe_hw* %101, i64 %102, i32* %103, i64 %104, i64 %105)
  br label %137

107:                                              ; preds = %96
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %108, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %107
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @IXGBE_RAH_AV, align 8
  %120 = call i32 @ixgbe_set_rar(%struct.ixgbe_hw* %115, i64 %116, i32* %117, i64 %118, i64 %119)
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %136

126:                                              ; preds = %107
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %129 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %127, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i64, i64* @IXGBE_ERR_INVALID_MAC_ADDR, align 8
  store i64 %134, i64* %4, align 8
  br label %147

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135, %114
  br label %137

137:                                              ; preds = %136, %99
  br label %138

138:                                              ; preds = %137, %91
  %139 = load i64, i64* %9, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %143 = load i64, i64* %9, align 8
  %144 = call i32 @ixgbe_clear_vmdq(%struct.ixgbe_hw* %142, i64 %143, i32 0)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i64, i64* %9, align 8
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %145, %133
  %148 = load i64, i64* %4, align 8
  ret i64 %148
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @IXGBE_RAL(i64) #1

declare dso_local i32 @ixgbe_set_vmdq(%struct.ixgbe_hw*, i64, i64) #1

declare dso_local i32 @ixgbe_set_rar(%struct.ixgbe_hw*, i64, i32*, i64, i64) #1

declare dso_local i32 @ixgbe_clear_vmdq(%struct.ixgbe_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
