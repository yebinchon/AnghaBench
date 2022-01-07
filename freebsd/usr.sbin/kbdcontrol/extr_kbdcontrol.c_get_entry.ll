; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@token = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@LSH = common dso_local global i32 0, align 4
@RSH = common dso_local global i32 0, align 4
@CLK = common dso_local global i32 0, align 4
@NLK = common dso_local global i32 0, align 4
@SLK = common dso_local global i32 0, align 4
@BTAB = common dso_local global i32 0, align 4
@LALT = common dso_local global i32 0, align 4
@LCTR = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@PREV = common dso_local global i32 0, align 4
@RCTR = common dso_local global i32 0, align 4
@RALT = common dso_local global i32 0, align 4
@ALK = common dso_local global i32 0, align 4
@ASH = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@RBT = common dso_local global i32 0, align 4
@DBG = common dso_local global i32 0, align 4
@SUSP = common dso_local global i32 0, align 4
@SPSC = common dso_local global i32 0, align 4
@PNC = common dso_local global i32 0, align 4
@LSHA = common dso_local global i32 0, align 4
@RSHA = common dso_local global i32 0, align 4
@LCTRA = common dso_local global i32 0, align 4
@RCTRA = common dso_local global i32 0, align 4
@LALTA = common dso_local global i32 0, align 4
@RALTA = common dso_local global i32 0, align 4
@HALT = common dso_local global i32 0, align 4
@PDWN = common dso_local global i32 0, align 4
@PASTE = common dso_local global i32 0, align 4
@number = common dso_local global i32 0, align 4
@L_ACC = common dso_local global i32 0, align 4
@L_FN = common dso_local global i32 0, align 4
@L_SCR = common dso_local global i32 0, align 4
@letter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entry() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @yylex()
  store i32 %2, i32* @token, align 4
  switch i32 %2, label %169 [
    i32 144, label %3
    i32 149, label %7
    i32 133, label %11
    i32 158, label %15
    i32 145, label %19
    i32 130, label %23
    i32 159, label %27
    i32 154, label %31
    i32 152, label %35
    i32 146, label %39
    i32 139, label %43
    i32 135, label %47
    i32 138, label %51
    i32 161, label %55
    i32 160, label %59
    i32 147, label %63
    i32 136, label %67
    i32 157, label %71
    i32 128, label %75
    i32 129, label %79
    i32 142, label %83
    i32 148, label %87
    i32 132, label %91
    i32 151, label %95
    i32 134, label %99
    i32 153, label %103
    i32 137, label %107
    i32 155, label %111
    i32 140, label %115
    i32 141, label %119
    i32 162, label %123
    i32 156, label %134
    i32 131, label %145
    i32 150, label %156
    i32 143, label %160
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @NOP, align 4
  %5 = load i32, i32* @SPECIAL, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %1, align 4
  br label %170

7:                                                ; preds = %0
  %8 = load i32, i32* @LSH, align 4
  %9 = load i32, i32* @SPECIAL, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %1, align 4
  br label %170

11:                                               ; preds = %0
  %12 = load i32, i32* @RSH, align 4
  %13 = load i32, i32* @SPECIAL, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %1, align 4
  br label %170

15:                                               ; preds = %0
  %16 = load i32, i32* @CLK, align 4
  %17 = load i32, i32* @SPECIAL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %1, align 4
  br label %170

19:                                               ; preds = %0
  %20 = load i32, i32* @NLK, align 4
  %21 = load i32, i32* @SPECIAL, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %1, align 4
  br label %170

23:                                               ; preds = %0
  %24 = load i32, i32* @SLK, align 4
  %25 = load i32, i32* @SPECIAL, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %1, align 4
  br label %170

27:                                               ; preds = %0
  %28 = load i32, i32* @BTAB, align 4
  %29 = load i32, i32* @SPECIAL, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %1, align 4
  br label %170

31:                                               ; preds = %0
  %32 = load i32, i32* @LALT, align 4
  %33 = load i32, i32* @SPECIAL, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %1, align 4
  br label %170

35:                                               ; preds = %0
  %36 = load i32, i32* @LCTR, align 4
  %37 = load i32, i32* @SPECIAL, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %1, align 4
  br label %170

39:                                               ; preds = %0
  %40 = load i32, i32* @NEXT, align 4
  %41 = load i32, i32* @SPECIAL, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %1, align 4
  br label %170

43:                                               ; preds = %0
  %44 = load i32, i32* @PREV, align 4
  %45 = load i32, i32* @SPECIAL, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %1, align 4
  br label %170

47:                                               ; preds = %0
  %48 = load i32, i32* @RCTR, align 4
  %49 = load i32, i32* @SPECIAL, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %1, align 4
  br label %170

51:                                               ; preds = %0
  %52 = load i32, i32* @RALT, align 4
  %53 = load i32, i32* @SPECIAL, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %1, align 4
  br label %170

55:                                               ; preds = %0
  %56 = load i32, i32* @ALK, align 4
  %57 = load i32, i32* @SPECIAL, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %1, align 4
  br label %170

59:                                               ; preds = %0
  %60 = load i32, i32* @ASH, align 4
  %61 = load i32, i32* @SPECIAL, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %1, align 4
  br label %170

63:                                               ; preds = %0
  %64 = load i32, i32* @META, align 4
  %65 = load i32, i32* @SPECIAL, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %1, align 4
  br label %170

67:                                               ; preds = %0
  %68 = load i32, i32* @RBT, align 4
  %69 = load i32, i32* @SPECIAL, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %1, align 4
  br label %170

71:                                               ; preds = %0
  %72 = load i32, i32* @DBG, align 4
  %73 = load i32, i32* @SPECIAL, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %1, align 4
  br label %170

75:                                               ; preds = %0
  %76 = load i32, i32* @SUSP, align 4
  %77 = load i32, i32* @SPECIAL, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %1, align 4
  br label %170

79:                                               ; preds = %0
  %80 = load i32, i32* @SPSC, align 4
  %81 = load i32, i32* @SPECIAL, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %1, align 4
  br label %170

83:                                               ; preds = %0
  %84 = load i32, i32* @PNC, align 4
  %85 = load i32, i32* @SPECIAL, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %1, align 4
  br label %170

87:                                               ; preds = %0
  %88 = load i32, i32* @LSHA, align 4
  %89 = load i32, i32* @SPECIAL, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %1, align 4
  br label %170

91:                                               ; preds = %0
  %92 = load i32, i32* @RSHA, align 4
  %93 = load i32, i32* @SPECIAL, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %1, align 4
  br label %170

95:                                               ; preds = %0
  %96 = load i32, i32* @LCTRA, align 4
  %97 = load i32, i32* @SPECIAL, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %1, align 4
  br label %170

99:                                               ; preds = %0
  %100 = load i32, i32* @RCTRA, align 4
  %101 = load i32, i32* @SPECIAL, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %1, align 4
  br label %170

103:                                              ; preds = %0
  %104 = load i32, i32* @LALTA, align 4
  %105 = load i32, i32* @SPECIAL, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %1, align 4
  br label %170

107:                                              ; preds = %0
  %108 = load i32, i32* @RALTA, align 4
  %109 = load i32, i32* @SPECIAL, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %1, align 4
  br label %170

111:                                              ; preds = %0
  %112 = load i32, i32* @HALT, align 4
  %113 = load i32, i32* @SPECIAL, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %1, align 4
  br label %170

115:                                              ; preds = %0
  %116 = load i32, i32* @PDWN, align 4
  %117 = load i32, i32* @SPECIAL, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %1, align 4
  br label %170

119:                                              ; preds = %0
  %120 = load i32, i32* @PASTE, align 4
  %121 = load i32, i32* @SPECIAL, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %1, align 4
  br label %170

123:                                              ; preds = %0
  %124 = load i32, i32* @number, align 4
  %125 = call i32 @ACC(i32 %124)
  %126 = load i32, i32* @L_ACC, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 -1, i32* %1, align 4
  br label %170

129:                                              ; preds = %123
  %130 = load i32, i32* @number, align 4
  %131 = call i32 @ACC(i32 %130)
  %132 = load i32, i32* @SPECIAL, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %1, align 4
  br label %170

134:                                              ; preds = %0
  %135 = load i32, i32* @number, align 4
  %136 = call i32 @F(i32 %135)
  %137 = load i32, i32* @L_FN, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 -1, i32* %1, align 4
  br label %170

140:                                              ; preds = %134
  %141 = load i32, i32* @number, align 4
  %142 = call i32 @F(i32 %141)
  %143 = load i32, i32* @SPECIAL, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %1, align 4
  br label %170

145:                                              ; preds = %0
  %146 = load i32, i32* @number, align 4
  %147 = call i32 @S(i32 %146)
  %148 = load i32, i32* @L_SCR, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 -1, i32* %1, align 4
  br label %170

151:                                              ; preds = %145
  %152 = load i32, i32* @number, align 4
  %153 = call i32 @S(i32 %152)
  %154 = load i32, i32* @SPECIAL, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %1, align 4
  br label %170

156:                                              ; preds = %0
  %157 = load i64, i64* @letter, align 8
  %158 = trunc i64 %157 to i8
  %159 = zext i8 %158 to i32
  store i32 %159, i32* %1, align 4
  br label %170

160:                                              ; preds = %0
  %161 = load i32, i32* @number, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @number, align 4
  %165 = icmp sgt i32 %164, 1114111
  br i1 %165, label %166, label %167

166:                                              ; preds = %163, %160
  store i32 -1, i32* %1, align 4
  br label %170

167:                                              ; preds = %163
  %168 = load i32, i32* @number, align 4
  store i32 %168, i32* %1, align 4
  br label %170

169:                                              ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %170

170:                                              ; preds = %169, %167, %166, %156, %151, %150, %140, %139, %129, %128, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3
  %171 = load i32, i32* %1, align 4
  ret i32 %171
}

declare dso_local i32 @yylex(...) #1

declare dso_local i32 @ACC(i32) #1

declare dso_local i32 @F(i32) #1

declare dso_local i32 @S(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
