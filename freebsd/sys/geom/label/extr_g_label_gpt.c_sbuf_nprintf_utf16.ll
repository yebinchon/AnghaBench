; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_gpt.c_sbuf_nprintf_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_gpt.c_sbuf_nprintf_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@LITTLE_ENDIAN = common dso_local global i64 0, align 8
@BIG_ENDIAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i64*, i64)* @sbuf_nprintf_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbuf_nprintf_utf16(%struct.sbuf* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @LITTLE_ENDIAN, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %163, %102, %97, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %164

20:                                               ; preds = %18
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @BIG_ENDIAN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @be16toh(i64 %26)
  br label %32

28:                                               ; preds = %20
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @le16toh(i64 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i8* [ %27, %24 ], [ %31, %28 ]
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 63488
  %41 = icmp eq i32 %40, 55296
  br i1 %41, label %42, label %86

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @BIG_ENDIAN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @be16toh(i64 %51)
  br label %57

53:                                               ; preds = %45
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @le16toh(i64 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i8* [ %52, %49 ], [ %56, %53 ]
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %9, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %6, align 8
  br label %65

64:                                               ; preds = %42
  store i64 65533, i64* %9, align 8
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = and i64 %70, 64512
  %72 = icmp eq i64 %71, 56320
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 1023
  %76 = shl i32 %75, 10
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %9, align 8
  %79 = and i64 %78, 1023
  %80 = add nsw i64 %77, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 65536
  store i32 %83, i32* %8, align 4
  br label %85

84:                                               ; preds = %69, %65
  store i32 65533, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %73
  br label %105

86:                                               ; preds = %32
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 65534
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @BIG_ENDIAN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* @LITTLE_ENDIAN, align 8
  br label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @BIG_ENDIAN, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  store i64 %98, i64* %7, align 8
  br label %11

99:                                               ; preds = %86
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 65279
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %11

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 128
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %163

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 2048
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 6
  %119 = or i32 192, %118
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 63
  %122 = or i32 128, %121
  %123 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %122)
  br label %162

124:                                              ; preds = %112
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 65536
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %129, 12
  %131 = or i32 224, %130
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %132, 6
  %134 = and i32 %133, 63
  %135 = or i32 128, %134
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 63
  %138 = or i32 128, %137
  %139 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %135, i32 %138)
  br label %161

140:                                              ; preds = %124
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 2097152
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = ashr i32 %145, 18
  %147 = or i32 240, %146
  %148 = load i32, i32* %8, align 4
  %149 = ashr i32 %148, 12
  %150 = and i32 %149, 63
  %151 = or i32 128, %150
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 6
  %154 = and i32 %153, 63
  %155 = or i32 128, %154
  %156 = load i32, i32* %8, align 4
  %157 = and i32 %156, 63
  %158 = or i32 128, %157
  %159 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %151, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %143, %140
  br label %161

161:                                              ; preds = %160, %127
  br label %162

162:                                              ; preds = %161, %115
  br label %163

163:                                              ; preds = %162, %108
  br label %11

164:                                              ; preds = %18
  ret void
}

declare dso_local i8* @be16toh(i64) #1

declare dso_local i8* @le16toh(i64) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
