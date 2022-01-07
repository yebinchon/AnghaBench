; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_subr.c_uart_parse_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_subr.c_uart_parse_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_TAG_BD = common dso_local global i32 0, align 4
@UART_TAG_BR = common dso_local global i32 0, align 4
@UART_TAG_CH = common dso_local global i32 0, align 4
@UART_TAG_DB = common dso_local global i32 0, align 4
@UART_TAG_DT = common dso_local global i32 0, align 4
@UART_TAG_IO = common dso_local global i32 0, align 4
@UART_TAG_MM = common dso_local global i32 0, align 4
@UART_TAG_PA = common dso_local global i32 0, align 4
@UART_TAG_RS = common dso_local global i32 0, align 4
@UART_TAG_SB = common dso_local global i32 0, align 4
@UART_TAG_XO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @uart_parse_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_parse_tag(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 98
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 100
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @UART_TAG_BD, align 4
  store i32 %19, i32* %4, align 4
  br label %181

20:                                               ; preds = %11, %1
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 98
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 114
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @UART_TAG_BR, align 4
  store i32 %35, i32* %4, align 4
  br label %181

36:                                               ; preds = %27, %20
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 99
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i8**, i8*** %3, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 104
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @UART_TAG_CH, align 4
  store i32 %51, i32* %4, align 4
  br label %181

52:                                               ; preds = %43, %36
  %53 = load i8**, i8*** %3, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 100
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i8**, i8*** %3, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 98
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @UART_TAG_DB, align 4
  store i32 %67, i32* %4, align 4
  br label %181

68:                                               ; preds = %59, %52
  %69 = load i8**, i8*** %3, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 100
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i8**, i8*** %3, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 116
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @UART_TAG_DT, align 4
  store i32 %83, i32* %4, align 4
  br label %181

84:                                               ; preds = %75, %68
  %85 = load i8**, i8*** %3, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 105
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i8**, i8*** %3, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 111
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @UART_TAG_IO, align 4
  store i32 %99, i32* %4, align 4
  br label %181

100:                                              ; preds = %91, %84
  %101 = load i8**, i8*** %3, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 109
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i8**, i8*** %3, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 109
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @UART_TAG_MM, align 4
  store i32 %115, i32* %4, align 4
  br label %181

116:                                              ; preds = %107, %100
  %117 = load i8**, i8*** %3, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 112
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load i8**, i8*** %3, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 97
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @UART_TAG_PA, align 4
  store i32 %131, i32* %4, align 4
  br label %181

132:                                              ; preds = %123, %116
  %133 = load i8**, i8*** %3, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 114
  br i1 %138, label %139, label %148

139:                                              ; preds = %132
  %140 = load i8**, i8*** %3, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 115
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @UART_TAG_RS, align 4
  store i32 %147, i32* %4, align 4
  br label %181

148:                                              ; preds = %139, %132
  %149 = load i8**, i8*** %3, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 115
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load i8**, i8*** %3, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 98
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @UART_TAG_SB, align 4
  store i32 %163, i32* %4, align 4
  br label %181

164:                                              ; preds = %155, %148
  %165 = load i8**, i8*** %3, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 120
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load i8**, i8*** %3, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 111
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @UART_TAG_XO, align 4
  store i32 %179, i32* %4, align 4
  br label %181

180:                                              ; preds = %171, %164
  store i32 -1, i32* %2, align 4
  br label %197

181:                                              ; preds = %178, %162, %146, %130, %114, %98, %82, %66, %50, %34, %18
  %182 = load i8**, i8*** %3, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  store i8* %184, i8** %182, align 8
  %185 = load i8**, i8*** %3, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 58
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  store i32 -1, i32* %2, align 4
  br label %197

192:                                              ; preds = %181
  %193 = load i8**, i8*** %3, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %193, align 8
  %196 = load i32, i32* %4, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %192, %191, %180
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
