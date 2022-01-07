; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_showflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_showflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@showflags.s = internal global [1000 x i8] zeroinitializer, align 16
@F_YEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"year \00", align 1
@F_MONTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"month \00", align 1
@F_DAYOFWEEK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dayofweek \00", align 1
@F_DAYOFMONTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"dayofmonth \00", align 1
@F_MODIFIERINDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"modifierindex \00", align 1
@F_MODIFIEROFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"modifieroffset \00", align 1
@F_SPECIALDAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"specialday \00", align 1
@F_ALLMONTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"allmonth \00", align 1
@F_ALLDAY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"allday \00", align 1
@F_VARIABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"variable \00", align 1
@F_CNY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"chinesenewyear \00", align 1
@F_PASKHA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"paskha \00", align 1
@F_EASTER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"easter \00", align 1
@F_FULLMOON = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"fullmoon \00", align 1
@F_NEWMOON = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"newmoon \00", align 1
@F_MAREQUINOX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"marequinox \00", align 1
@F_SEPEQUINOX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"sepequinox \00", align 1
@F_JUNSOLSTICE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"junsolstice \00", align 1
@F_DECSOLSTICE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"decsolstice \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @showflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @showflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), align 16
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @F_YEAR, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @F_MONTH, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @F_DAYOFWEEK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @F_DAYOFMONTH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @F_MODIFIERINDEX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @F_MODIFIEROFFSET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @F_SPECIALDAY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @F_ALLMONTH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @F_ALLDAY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @F_VARIABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @F_CNY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @F_PASKHA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @F_EASTER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @F_FULLMOON, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* @F_NEWMOON, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @F_MAREQUINOX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @F_SEPEQUINOX, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @F_JUNSOLSTICE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @F_DECSOLSTICE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 @strcat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %128
  ret i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @showflags.s, i64 0, i64 0)
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
