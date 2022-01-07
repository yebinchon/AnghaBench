; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_host_interface_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_host_interface_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hic_hdr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_host_interface_command\00", align 1
@IXGBE_HI_MAX_BLOCK_BYTE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Buffer length failure buffersize=%d.\0A\00", align 1
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i64 0, align 8
@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@IXGBE_FLEX_MNG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Buffer not large enough for reply message.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ixgbe_hic_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.ixgbe_hic_hdr*
  store %struct.ixgbe_hic_hdr* %19, %struct.ixgbe_hic_hdr** %13, align 8
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IXGBE_HI_MAX_BLOCK_BYTE_LENGTH, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %5
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %30, i64* %6, align 8
  br label %178

31:                                               ; preds = %23
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.1*
  %39 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %40 = call i64 %36(%struct.ixgbe_hw.1* %38, i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* %15, align 8
  store i64 %44, i64* %6, align 8
  br label %178

45:                                               ; preds = %31
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw* %46, i32* %47, i32 %48, i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %167

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %167

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = ashr i32 %59, 2
  store i32 %60, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %79, %58
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %67 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @IXGBE_LE32_TO_CPUS(i32* %77)
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %61

82:                                               ; preds = %61
  %83 = load %struct.ixgbe_hic_hdr*, %struct.ixgbe_hic_hdr** %13, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hic_hdr, %struct.ixgbe_hic_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %124

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 2
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %95 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 @IXGBE_LE32_TO_CPUS(i32* %105)
  br label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %88

110:                                              ; preds = %88
  %111 = load %struct.ixgbe_hic_hdr*, %struct.ixgbe_hic_hdr** %13, align 8
  %112 = getelementptr inbounds %struct.ixgbe_hic_hdr, %struct.ixgbe_hic_hdr* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = shl i32 %115, 3
  %117 = and i32 %116, 3840
  %118 = load %struct.ixgbe_hic_hdr*, %struct.ixgbe_hic_hdr** %13, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hic_hdr, %struct.ixgbe_hic_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %117, %120
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 8
  store i32 %123, i32* %12, align 4
  br label %128

124:                                              ; preds = %82
  %125 = load %struct.ixgbe_hic_hdr*, %struct.ixgbe_hic_hdr** %13, align 8
  %126 = getelementptr inbounds %struct.ixgbe_hic_hdr, %struct.ixgbe_hic_hdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %124, %110
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %167

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %134, %135
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %140, i64* %15, align 8
  br label %167

141:                                              ; preds = %132
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 3
  %144 = ashr i32 %143, 2
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %163, %141
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %145
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %151 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %150, i32 %151, i32 %152)
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i32 @IXGBE_LE32_TO_CPUS(i32* %161)
  br label %163

163:                                              ; preds = %149
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %145

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %166, %138, %131, %57, %53
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %169 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %171, align 8
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %174 = bitcast %struct.ixgbe_hw* %173 to %struct.ixgbe_hw.0*
  %175 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %176 = call i32 %172(%struct.ixgbe_hw.0* %174, i32 %175)
  %177 = load i64, i64* %15, align 8
  store i64 %177, i64* %6, align 8
  br label %178

178:                                              ; preds = %167, %43, %27
  %179 = load i64, i64* %6, align 8
  ret i64 %179
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw*, i32*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_LE32_TO_CPUS(i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
