; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_check_blocks_with_parity1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_check_blocks_with_parity1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"PBF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"QM\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"XSDM\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"XCM\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"XSEMI\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"DOORBELLQ\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"NIG\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"VAUX PCI CORE\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"USDM\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"UCM\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"USEMI\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"UPB\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CSDM\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"CCM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32, i32*, i32)* @bxe_check_blocks_with_parity1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_check_blocks_with_parity1(%struct.bxe_softc* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %177, %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %180

16:                                               ; preds = %13
  %17 = load i32, i32* %11, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %12, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %176

23:                                               ; preds = %16
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %171 [
    i32 138, label %25
    i32 137, label %34
    i32 136, label %43
    i32 129, label %52
    i32 130, label %61
    i32 128, label %70
    i32 140, label %79
    i32 139, label %88
    i32 131, label %97
    i32 141, label %108
    i32 133, label %117
    i32 135, label %126
    i32 132, label %135
    i32 134, label %144
    i32 142, label %153
    i32 143, label %162
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = call i32 @bxe_print_next_block(%struct.bxe_softc* %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  br label %171

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = call i32 @bxe_print_next_block(%struct.bxe_softc* %38, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  br label %171

43:                                               ; preds = %23
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = call i32 @bxe_print_next_block(%struct.bxe_softc* %47, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %43
  br label %171

52:                                               ; preds = %23
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = call i32 @bxe_print_next_block(%struct.bxe_softc* %56, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %52
  br label %171

61:                                               ; preds = %23
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = call i32 @bxe_print_next_block(%struct.bxe_softc* %65, i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %61
  br label %171

70:                                               ; preds = %23
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = call i32 @bxe_print_next_block(%struct.bxe_softc* %74, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %70
  br label %171

79:                                               ; preds = %23
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = call i32 @bxe_print_next_block(%struct.bxe_softc* %83, i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %79
  br label %171

88:                                               ; preds = %23
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = call i32 @bxe_print_next_block(%struct.bxe_softc* %92, i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %88
  br label %171

97:                                               ; preds = %23
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  %104 = call i32 @bxe_print_next_block(%struct.bxe_softc* %101, i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  br label %171

108:                                              ; preds = %23
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = call i32 @bxe_print_next_block(%struct.bxe_softc* %112, i32 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %108
  br label %171

117:                                              ; preds = %23
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  %124 = call i32 @bxe_print_next_block(%struct.bxe_softc* %121, i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %117
  br label %171

126:                                              ; preds = %23
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = call i32 @bxe_print_next_block(%struct.bxe_softc* %130, i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %126
  br label %171

135:                                              ; preds = %23
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = call i32 @bxe_print_next_block(%struct.bxe_softc* %139, i32 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %135
  br label %171

144:                                              ; preds = %23
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = call i32 @bxe_print_next_block(%struct.bxe_softc* %148, i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %152

152:                                              ; preds = %147, %144
  br label %171

153:                                              ; preds = %23
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  %160 = call i32 @bxe_print_next_block(%struct.bxe_softc* %157, i32 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %161

161:                                              ; preds = %156, %153
  br label %171

162:                                              ; preds = %23
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  %169 = call i32 @bxe_print_next_block(%struct.bxe_softc* %166, i32 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %162
  br label %171

171:                                              ; preds = %23, %170, %161, %152, %143, %134, %125, %116, %105, %96, %87, %78, %69, %60, %51, %42, %33
  %172 = load i32, i32* %12, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %7, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %171, %16
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %13

180:                                              ; preds = %13
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @bxe_print_next_block(%struct.bxe_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
