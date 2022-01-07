; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_dump_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"  NOP, \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  LSH, \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  RSH, \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"  CLK, \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  NLK, \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"  SLK, \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" BTAB, \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" LALT, \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" LCTR, \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" NEXT, \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" PREV, \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" RCTR, \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" RALT, \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"  ALK, \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"  ASH, \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" META, \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"  RBT, \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"  DBG, \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" SUSP, \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c" SPSC, \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"  PNC, \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" LSHA, \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" RSHA, \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"LCTRA, \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"RCTRA, \00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"LALTA, \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"RALTA, \00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c" HALT, \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c" PDWN, \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"PASTE, \00", align 1
@F_FN = common dso_local global i32 0, align 4
@L_FN = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c" F(%2d),\00", align 1
@F_SCR = common dso_local global i32 0, align 4
@L_SCR = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c" S(%2d),\00", align 1
@F_ACC = common dso_local global i32 0, align 4
@L_ACC = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c" %-4s, \00", align 1
@acc_names_u = common dso_local global i8** null, align 8
@.str.33 = private unnamed_addr constant [10 x i8] c" 0x%02X, \00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c" '\\'', \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c" '\\\\', \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"  '%c', \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SPECIAL, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %125

7:                                                ; preds = %1
  %8 = load i32, i32* @SPECIAL, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %73 [
    i32 142, label %13
    i32 147, label %15
    i32 132, label %17
    i32 154, label %19
    i32 143, label %21
    i32 130, label %23
    i32 155, label %25
    i32 151, label %27
    i32 149, label %29
    i32 144, label %31
    i32 138, label %33
    i32 134, label %35
    i32 137, label %37
    i32 157, label %39
    i32 156, label %41
    i32 145, label %43
    i32 135, label %45
    i32 153, label %47
    i32 128, label %49
    i32 129, label %51
    i32 139, label %53
    i32 146, label %55
    i32 131, label %57
    i32 148, label %59
    i32 133, label %61
    i32 150, label %63
    i32 136, label %65
    i32 152, label %67
    i32 140, label %69
    i32 141, label %71
  ]

13:                                               ; preds = %7
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %124

15:                                               ; preds = %7
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %124

17:                                               ; preds = %7
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %124

19:                                               ; preds = %7
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %124

21:                                               ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %124

23:                                               ; preds = %7
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %124

25:                                               ; preds = %7
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %124

27:                                               ; preds = %7
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %124

29:                                               ; preds = %7
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %124

31:                                               ; preds = %7
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %124

33:                                               ; preds = %7
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %124

35:                                               ; preds = %7
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %124

37:                                               ; preds = %7
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %124

39:                                               ; preds = %7
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %124

41:                                               ; preds = %7
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %124

43:                                               ; preds = %7
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %124

45:                                               ; preds = %7
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %124

47:                                               ; preds = %7
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %124

49:                                               ; preds = %7
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %124

51:                                               ; preds = %7
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %124

53:                                               ; preds = %7
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  br label %124

55:                                               ; preds = %7
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %124

57:                                               ; preds = %7
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  br label %124

59:                                               ; preds = %7
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  br label %124

61:                                               ; preds = %7
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %124

63:                                               ; preds = %7
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  br label %124

65:                                               ; preds = %7
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %124

67:                                               ; preds = %7
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  br label %124

69:                                               ; preds = %7
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  br label %124

71:                                               ; preds = %7
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  br label %124

73:                                               ; preds = %7
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @F_FN, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @L_FN, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @F_FN, align 4
  %84 = sub nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 %85)
  br label %123

87:                                               ; preds = %77, %73
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @F_SCR, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @L_SCR, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @F_SCR, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 %99)
  br label %122

101:                                              ; preds = %91, %87
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @F_ACC, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @L_ACC, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i8**, i8*** @acc_names_u, align 8
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @F_ACC, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* %116)
  br label %121

118:                                              ; preds = %105, %101
  %119 = load i32, i32* %2, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %109
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122, %81
  br label %124

124:                                              ; preds = %123, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  br label %152

125:                                              ; preds = %1
  %126 = load i32, i32* %2, align 4
  %127 = icmp eq i32 %126, 39
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  br label %151

130:                                              ; preds = %125
  %131 = load i32, i32* %2, align 4
  %132 = icmp eq i32 %131, 92
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0))
  br label %150

135:                                              ; preds = %130
  %136 = load i32, i32* %2, align 4
  %137 = call i64 @isascii(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i32, i32* %2, align 4
  %141 = call i64 @isprint(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %2, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32 %144)
  br label %149

146:                                              ; preds = %139, %135
  %147 = load i32, i32* %2, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %128
  br label %152

152:                                              ; preds = %151, %124
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
