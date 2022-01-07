; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_pba_string_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_pba_string_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"ixgbe_read_pba_string_generic\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PBA string buffer was null\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_PBANUM0_PTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@IXGBE_PBANUM1_PTR = common dso_local global i32 0, align 4
@IXGBE_PBANUM_PTR_GUARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"NVM PBA number is not stored as string\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"PBA string buffer too small\0A\00", align 1
@IXGBE_ERR_NO_SPACE = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"NVM PBA number section invalid length\0A\00", align 1
@IXGBE_ERR_PBA_SECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_pba_string_generic(%struct.ixgbe_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %4, align 8
  br label %228

19:                                               ; preds = %3
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.0*
  %27 = load i32, i32* @IXGBE_PBANUM0_PTR, align 4
  %28 = call i64 %24(%struct.ixgbe_hw.0* %26, i32 %27, i32* %9)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  br label %228

34:                                               ; preds = %19
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.0*
  %42 = load i32, i32* @IXGBE_PBANUM1_PTR, align 4
  %43 = call i64 %39(%struct.ixgbe_hw.0* %41, i32 %42, i32* %10)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %228

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IXGBE_PBANUM_PTR_GUARD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %143

53:                                               ; preds = %49
  %54 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 11
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i64, i64* @IXGBE_ERR_NO_SPACE, align 8
  store i64 %59, i64* %4, align 8
  br label %228

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 15
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 8
  %68 = and i32 %67, 15
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 15
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, 12
  %82 = and i32 %81, 15
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 15
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32 45, i32* %91, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = ashr i32 %94, 4
  %96 = and i32 %95, 15
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, 15
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 9
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  store i32 0, i32* %104, align 4
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %138, %60
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 10
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 10
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 48
  store i32 %121, i32* %119, align 4
  br label %137

122:                                              ; preds = %108
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 16
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 55
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %129, %122
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %105

141:                                              ; preds = %105
  %142 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %142, i64* %4, align 8
  br label %228

143:                                              ; preds = %49
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %147, align 8
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %150 = bitcast %struct.ixgbe_hw* %149 to %struct.ixgbe_hw.0*
  %151 = load i32, i32* %10, align 4
  %152 = call i64 %148(%struct.ixgbe_hw.0* %150, i32 %151, i32* %12)
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143
  %156 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %157 = load i64, i64* %8, align 8
  store i64 %157, i64* %4, align 8
  br label %228

158:                                              ; preds = %143
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 65535
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161, %158
  %165 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i64, i64* @IXGBE_ERR_PBA_SECTION, align 8
  store i64 %166, i64* %4, align 8
  br label %228

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %12, align 4
  %170 = mul nsw i32 %169, 2
  %171 = sub nsw i32 %170, 1
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %175 = load i64, i64* @IXGBE_ERR_NO_SPACE, align 8
  store i64 %175, i64* %4, align 8
  br label %228

176:                                              ; preds = %167
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %181

181:                                              ; preds = %218, %176
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %221

185:                                              ; preds = %181
  %186 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %187 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %189, align 8
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %192 = bitcast %struct.ixgbe_hw* %191 to %struct.ixgbe_hw.0*
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %193, %194
  %196 = call i64 %190(%struct.ixgbe_hw.0* %192, i32 %195, i32* %9)
  store i64 %196, i64* %8, align 8
  %197 = load i64, i64* %8, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %185
  %200 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i64, i64* %8, align 8
  store i64 %201, i64* %4, align 8
  br label %228

202:                                              ; preds = %185
  %203 = load i32, i32* %9, align 4
  %204 = ashr i32 %203, 8
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %11, align 4
  %207 = mul nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load i32, i32* %9, align 4
  %211 = and i32 %210, 255
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %11, align 4
  %214 = mul nsw i32 %213, 2
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  store i32 %211, i32* %217, align 4
  br label %218

218:                                              ; preds = %202
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %181

221:                                              ; preds = %181
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* %11, align 4
  %224 = mul nsw i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 0, i32* %226, align 4
  %227 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %227, i64* %4, align 8
  br label %228

228:                                              ; preds = %221, %199, %173, %164, %155, %141, %57, %46, %31, %16
  %229 = load i64, i64* %4, align 8
  ret i64 %229
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
