; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_ident_num_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_ident_num_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32*)* @bhnd_nvram_ident_num_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_ident_num_string(i8* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %156

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %18
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %156

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %43, %40
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %47, %48
  %50 = icmp uge i64 %49, 2
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 48
  br i1 %57, label %58, label %77

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 120
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 88
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %58
  store i32 16, i32* %8, align 4
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 2
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %74, %66, %51, %46
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %156

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 48
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 8, i32* %8, align 4
  br label %95

94:                                               ; preds = %86
  store i32 10, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %142, %96
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %13, align 1
  %106 = load i8, i8* %13, align 1
  %107 = call i64 @bhnd_nv_isdigit(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i8, i8* %13, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %111, 48
  store i32 %112, i32* %12, align 4
  br label %134

113:                                              ; preds = %101
  %114 = load i8, i8* %13, align 1
  %115 = call i64 @bhnd_nv_isxdigit(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i8, i8* %13, align 1
  %119 = call i64 @bhnd_nv_isupper(i8 signext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i8, i8* %13, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 65
  %125 = add nsw i32 %124, 10
  store i32 %125, i32* %12, align 4
  br label %131

126:                                              ; preds = %117
  %127 = load i8, i8* %13, align 1
  %128 = sext i8 %127 to i32
  %129 = sub nsw i32 %128, 97
  %130 = add nsw i32 %129, 10
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %126, %121
  br label %133

132:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %156

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %109
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %156

139:                                              ; preds = %134
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %142

142:                                              ; preds = %139
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %10, align 8
  br label %97

145:                                              ; preds = %97
  %146 = load i64, i64* %11, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %156

149:                                              ; preds = %145
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  store i32 1, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %148, %138, %132, %82, %39, %17
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i64 @bhnd_nv_isdigit(i8 signext) #1

declare dso_local i64 @bhnd_nv_isxdigit(i8 signext) #1

declare dso_local i64 @bhnd_nv_isupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
