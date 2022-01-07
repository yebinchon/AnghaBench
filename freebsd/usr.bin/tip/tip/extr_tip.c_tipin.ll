; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_tipin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_tipin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRIPT = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@STRIP_PAR = common dso_local global i32 0, align 4
@ESCAPE = common dso_local global i32 0, align 4
@noesc = common dso_local global i32 0, align 4
@cumode = common dso_local global i32 0, align 4
@RAISECHAR = common dso_local global i32 0, align 4
@RAISE = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@HALFDUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@FORCE = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tipin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 1, i32* %1, align 4
  %4 = load i32, i32* @SCRIPT, align 4
  %5 = call i32 @value(i32 %4)
  %6 = call i64 @boolean(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @sleep(i32 1)
  %10 = call i32 (...) @setscript()
  br label %11

11:                                               ; preds = %8, %0
  br label %12

12:                                               ; preds = %11, %42, %54, %78, %130
  %13 = call i32 (...) @getchar()
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %131

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @STRIP_PAR, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @ESCAPE, align 4
  %24 = call i32 @value(i32 %23)
  %25 = call i32 @character(i32 %24)
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %18
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, i32* @noesc, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = call i32 (...) @escape()
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %131

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %12

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %30
  br label %93

45:                                               ; preds = %27, %18
  %46 = load i32, i32* @cumode, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @RAISECHAR, align 4
  %51 = call i32 @value(i32 %50)
  %52 = call i32 @character(i32 %51)
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @RAISE, align 4
  %56 = call i32 @value(i32 %55)
  %57 = load i32, i32* @RAISE, align 4
  %58 = call i32 @value(i32 %57)
  %59 = call i64 @boolean(i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @setboolean(i32 %56, i32 %62)
  br label %12

64:                                               ; preds = %48, %45
  %65 = load i32, i32* %2, align 4
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  store i32 1, i32* %1, align 4
  %68 = load i32, i32* %2, align 4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %3, align 1
  %70 = load i32, i32* @FD, align 4
  %71 = call i32 @parwrite(i32 %70, i8* %3, i32 1)
  %72 = load i32, i32* @HALFDUPLEX, align 4
  %73 = call i32 @value(i32 %72)
  %74 = call i64 @boolean(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  br label %12

79:                                               ; preds = %64
  %80 = load i32, i32* @cumode, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @FORCE, align 4
  %85 = call i32 @value(i32 %84)
  %86 = call i32 @character(i32 %85)
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 (...) @getchar()
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %82, %79
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %44
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @EOF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %131

98:                                               ; preds = %93
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @STRIP_PAR, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %2, align 4
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @EOL, align 4
  %104 = call i32 @value(i32 %103)
  %105 = call i32 @any(i32 %102, i32 %104)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* @RAISE, align 4
  %107 = call i32 @value(i32 %106)
  %108 = call i64 @boolean(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %98
  %111 = load i32, i32* %2, align 4
  %112 = call i64 @islower(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @toupper(i32 %115) #3
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %110, %98
  %118 = load i32, i32* %2, align 4
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %3, align 1
  %120 = load i32, i32* @FD, align 4
  %121 = call i32 @parwrite(i32 %120, i8* %3, i32 1)
  %122 = load i32, i32* @HALFDUPLEX, align 4
  %123 = call i32 @value(i32 %122)
  %124 = call i64 @boolean(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i8, i8* %3, align 1
  %128 = sext i8 %127 to i32
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %117
  br label %12

131:                                              ; preds = %97, %38, %17
  ret void
}

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @setscript(...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @character(i32) #1

declare dso_local i32 @escape(...) #1

declare dso_local i32 @setboolean(i32, i32) #1

declare dso_local i32 @parwrite(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @any(i32, i32) #1

declare dso_local i64 @islower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
