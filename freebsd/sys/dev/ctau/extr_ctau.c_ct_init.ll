; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ct_init.tlen = internal global i64 182, align 8
@ct_init.tvec = internal constant [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 114, i32 178 }, %struct.TYPE_4__ { i32 182, i32 182 }], align 16
@ct_init.tvec2 = internal constant [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 50, i32 178 }, %struct.TYPE_4__ { i32 182, i32 182 }], align 16
@ct_init.tau = internal global [23 x i8] c"\9B\99q0@\EC0111111111111111\B7", align 16
@ct_init.e1 = internal global [23 x i8] c"\9B\99q0@\ECp%1%!tedp%1%!ted\E6", align 16
@ct_init.e1_2 = internal global [23 x i8] c"\9B\99q0@\ECp%1%!ted`a511`ad\E6", align 16
@ct_init.e1_3 = internal global [23 x i8] c"\9B\99q0@\EC`a511`ad`a511`ad\E6", align 16
@ct_init.e1_4 = internal global [23 x i8] c"\9B\99q0@\EC`a511`adp%1%!ted\E6", align 16
@ct_init.g703 = internal global [23 x i8] c"\9B\99q0@\ECp%1%!te u%1%!ted\E6", align 16
@ct_init.g703_2 = internal global [23 x i8] c"\9B\99q0@\ECp%1%!te ea511`ad\E6", align 16
@ct_init.g703_3 = internal global [23 x i8] c"\9B\99q0@\EC`a511`a ea511`ad\E6", align 16
@ct_init.g703_4 = internal global [23 x i8] c"\9B\99q0@\EC`a511`a u%1%!ted\E6", align 16
@B_TAU = common dso_local global i32 0, align 4
@BSR3_ZERO = common dso_local global i32 0, align 4
@BSR0_T703 = common dso_local global i8 0, align 1
@B_TAU2_G703 = common dso_local global i32 0, align 4
@BSR0_TE1 = common dso_local global i8 0, align 1
@B_TAU2 = common dso_local global i32 0, align 4
@E1SR_REV = common dso_local global i32 0, align 4
@B_TAU2_E1D = common dso_local global i32 0, align 4
@B_TAU2_E1 = common dso_local global i32 0, align 4
@B_TAU_G703C = common dso_local global i32 0, align 4
@B_TAU_E1D = common dso_local global i32 0, align 4
@B_TAU_E1C = common dso_local global i32 0, align 4
@B_TAU_E1 = common dso_local global i32 0, align 4
@B_TAU_G703 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_init(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, %struct.TYPE_4__* %7, i8* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  store i8* %8, i8** %18, align 8
  %23 = load i32, i32* @B_TAU, align 4
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @BSR3(i32 %24)
  %26 = call i32 @inb(i32 %25)
  %27 = load i32, i32* @BSR3_ZERO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 8192000, i32 10000000
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %20, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @ct_probe2_board(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %9
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %18, align 8
  %39 = call i64 @ct_download2(i32 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @BSR0(i32 %42)
  %44 = call i32 @inb(i32 %43)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %21, align 1
  %46 = load i8, i8* %21, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @BSR0_T703, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @B_TAU2_G703, align 4
  store i32 %53, i32* %19, align 4
  br label %76

54:                                               ; preds = %41
  %55 = load i8, i8* %21, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @BSR0_TE1, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @B_TAU2, align 4
  store i32 %62, i32* %19, align 4
  br label %75

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @E1SR(i32 %64)
  %66 = call i32 @inb(i32 %65)
  %67 = load i32, i32* @E1SR_REV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @B_TAU2_E1D, align 4
  store i32 %71, i32* %19, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @B_TAU2_E1, align 4
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %61
  br label %76

76:                                               ; preds = %75, %52
  br label %175

77:                                               ; preds = %36, %9
  %78 = load i32, i32* %12, align 4
  %79 = load i64, i64* @ct_init.tlen, align 8
  %80 = call i64 @ct_download(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.tau, i64 0, i64 0), i64 %79, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %87 = call i64 @ct_download(i32 %83, i8* %84, i64 %85, %struct.TYPE_4__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @B_TAU, align 4
  store i32 %90, i32* %19, align 4
  br label %127

91:                                               ; preds = %82
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @BSR0(i32 %92)
  %94 = call i32 @inb(i32 %93)
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %22, align 1
  %96 = load i8, i8* %22, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @BSR0_T703, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* @B_TAU_G703C, align 4
  store i32 %103, i32* %19, align 4
  br label %126

104:                                              ; preds = %91
  %105 = load i8, i8* %22, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @BSR0_TE1, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @B_TAU, align 4
  store i32 %112, i32* %19, align 4
  br label %125

113:                                              ; preds = %104
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @E1SR(i32 %114)
  %116 = call i32 @inb(i32 %115)
  %117 = load i32, i32* @E1SR_REV, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @B_TAU_E1D, align 4
  store i32 %121, i32* %19, align 4
  br label %124

122:                                              ; preds = %113
  %123 = load i32, i32* @B_TAU_E1C, align 4
  store i32 %123, i32* %19, align 4
  br label %124

124:                                              ; preds = %122, %120
  br label %125

125:                                              ; preds = %124, %111
  br label %126

126:                                              ; preds = %125, %102
  br label %127

127:                                              ; preds = %126, %89
  br label %174

128:                                              ; preds = %77
  %129 = load i32, i32* %12, align 4
  %130 = load i64, i64* @ct_init.tlen, align 8
  %131 = call i64 @ct_download(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.e1, i64 0, i64 0), i64 %130, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = load i64, i64* @ct_init.tlen, align 8
  %136 = call i64 @ct_download(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.e1_2, i64 0, i64 0), i64 %135, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = load i64, i64* @ct_init.tlen, align 8
  %141 = call i64 @ct_download(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.e1_3, i64 0, i64 0), i64 %140, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %12, align 4
  %145 = load i64, i64* @ct_init.tlen, align 8
  %146 = call i64 @ct_download(i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.e1_4, i64 0, i64 0), i64 %145, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143, %138, %133, %128
  %149 = load i32, i32* @B_TAU_E1, align 4
  store i32 %149, i32* %19, align 4
  br label %173

150:                                              ; preds = %143
  %151 = load i32, i32* %12, align 4
  %152 = load i64, i64* @ct_init.tlen, align 8
  %153 = call i64 @ct_download(i32 %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.g703, i64 0, i64 0), i64 %152, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = load i64, i64* @ct_init.tlen, align 8
  %158 = call i64 @ct_download(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.g703_2, i64 0, i64 0), i64 %157, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = load i64, i64* @ct_init.tlen, align 8
  %163 = call i64 @ct_download(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.g703_3, i64 0, i64 0), i64 %162, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %12, align 4
  %167 = load i64, i64* @ct_init.tlen, align 8
  %168 = call i64 @ct_download(i32 %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ct_init.g703_4, i64 0, i64 0), i64 %167, %struct.TYPE_4__* getelementptr inbounds ([2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @ct_init.tvec2, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165, %160, %155, %150
  %171 = load i32, i32* @B_TAU_G703, align 4
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %170, %165
  br label %173

173:                                              ; preds = %172, %148
  br label %174

174:                                              ; preds = %173, %127
  br label %175

175:                                              ; preds = %174, %76
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i64, i64* %20, align 8
  %183 = call i32 @ct_init_board(i32* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i64 %182)
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BSR3(i32) #1

declare dso_local i64 @ct_probe2_board(i32) #1

declare dso_local i64 @ct_download2(i32, i8*) #1

declare dso_local i32 @BSR0(i32) #1

declare dso_local i32 @E1SR(i32) #1

declare dso_local i64 @ct_download(i32, i8*, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @ct_init_board(i32*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
