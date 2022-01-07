; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_check_alt_mac_addr_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_check_alt_mac_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.e1000_hw.0*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.1 = type opaque
%struct.TYPE_6__ = type { i64 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"e1000_check_alt_mac_addr_generic\00", align 1
@NVM_COMPAT = common dso_local global i32 0, align 4
@e1000_82571 = common dso_local global i64 0, align 8
@e1000_82573 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_82580 = common dso_local global i64 0, align 8
@NVM_ALT_MAC_ADDR_PTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@E1000_FUNC_1 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN1 = common dso_local global i64 0, align 8
@E1000_FUNC_2 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN2 = common dso_local global i64 0, align 8
@E1000_FUNC_3 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Ignoring Alternate Mac Address with MC bit set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @NVM_COMPAT, align 4
  %25 = call i64 %21(%struct.e1000_hw.1* %23, i32 %24, i32 1, i32* %8)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

30:                                               ; preds = %1
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_82571, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @e1000_82573, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %30
  %45 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %45, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

46:                                               ; preds = %37
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_82580, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %54, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

55:                                               ; preds = %46
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %59, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = bitcast %struct.e1000_hw* %61 to %struct.e1000_hw.1*
  %63 = load i32, i32* @NVM_ALT_MAC_ADDR_PTR, align 4
  %64 = call i64 %60(%struct.e1000_hw.1* %62, i32 %63, i32 1, i32* %7)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i64, i64* %5, align 8
  store i64 %69, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

70:                                               ; preds = %55
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 65535
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %70
  %77 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %77, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

78:                                               ; preds = %73
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @E1000_FUNC_1, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN1, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @E1000_FUNC_2, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN2, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @E1000_FUNC_3, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %111, %104
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %153, %117
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %4, align 4
  %125 = ashr i32 %124, 1
  %126 = add nsw i32 %123, %125
  store i32 %126, i32* %6, align 4
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %130, align 8
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = bitcast %struct.e1000_hw* %132 to %struct.e1000_hw.1*
  %134 = load i32, i32* %6, align 4
  %135 = call i64 %131(%struct.e1000_hw.1* %133, i32 %134, i32 1, i32* %8)
  store i64 %135, i64* %5, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %122
  %139 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i64, i64* %5, align 8
  store i64 %140, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

141:                                              ; preds = %122
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, 255
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %15, i64 %145
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %8, align 4
  %148 = ashr i32 %147, 8
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %15, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %4, align 4
  br label %118

156:                                              ; preds = %118
  %157 = getelementptr inbounds i32, i32* %15, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %163, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

164:                                              ; preds = %156
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %166 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32)** %168, align 8
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %171 = bitcast %struct.e1000_hw* %170 to %struct.e1000_hw.0*
  %172 = call i32 %169(%struct.e1000_hw.0* %171, i32* %15, i32 0)
  %173 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %173, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %174

174:                                              ; preds = %164, %161, %138, %76, %67, %53, %44, %28
  %175 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i64, i64* %2, align 8
  ret i64 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUGFUNC(i8*) #2

declare dso_local i32 @DEBUGOUT(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
