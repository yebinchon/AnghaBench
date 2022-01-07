; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_keyboard.c_keyboard_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_keyboard.c_keyboard_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@col = common dso_local global i32 0, align 4
@curscr = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@line = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @keyboard_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyboard_dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ERR, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @EINTR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %175

12:                                               ; preds = %7
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %15, 65
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 90
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = load i32, i32* @col, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @CTRL(i8 signext 108)
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @curscr, align 4
  %32 = call i32 @wrefresh(i32 %31)
  store i32 0, i32* %2, align 4
  br label %175

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CTRL(i8 signext 103)
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (...) @status()
  store i32 0, i32* %2, align 4
  br label %175

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 58
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %175

43:                                               ; preds = %39
  %44 = load i32, i32* @CMDLINE, align 4
  %45 = call i32 @move(i32 %44, i32 0)
  %46 = call i32 (...) @clrtoeol()
  br label %47

47:                                               ; preds = %43, %23
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (...) @erasechar()
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* @col, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* @col, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @line, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 58
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %175

64:                                               ; preds = %57, %54
  %65 = load i32, i32* @col, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @col, align 4
  br label %139

67:                                               ; preds = %51, %47
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @CTRL(i8 signext 119)
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %122

71:                                               ; preds = %67
  %72 = load i32, i32* @col, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %122

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i32, i32* @col, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* @col, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i8*, i8** @line, align 8
  %81 = load i32, i32* @col, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isspace(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %79, %75
  %88 = phi i1 [ false, %75 ], [ %86, %79 ]
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %75

90:                                               ; preds = %87
  %91 = load i32, i32* @col, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @col, align 4
  br label %93

93:                                               ; preds = %118, %90
  %94 = load i32, i32* @col, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* @col, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i8*, i8** @line, align 8
  %99 = load i32, i32* @col, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %97, %93
  %107 = phi i1 [ false, %93 ], [ %105, %97 ]
  br i1 %107, label %108, label %119

108:                                              ; preds = %106
  %109 = load i32, i32* @col, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i8*, i8** @line, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 58
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 1, i32* %2, align 4
  br label %175

118:                                              ; preds = %111, %108
  br label %93

119:                                              ; preds = %106
  %120 = load i32, i32* @col, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @col, align 4
  br label %139

122:                                              ; preds = %71, %67
  %123 = load i32, i32* %3, align 4
  %124 = call i32 (...) @killchar()
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %127 = load i32, i32* @col, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  store i32 0, i32* @col, align 4
  %130 = load i8*, i8** @line, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 58
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @col, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @col, align 4
  br label %138

138:                                              ; preds = %135, %129
  br label %139

139:                                              ; preds = %138, %119, %64
  %140 = load i32, i32* @CMDLINE, align 4
  %141 = load i32, i32* @col, align 4
  %142 = call i32 @move(i32 %140, i32 %141)
  %143 = call i32 (...) @clrtoeol()
  store i32 0, i32* %2, align 4
  br label %175

144:                                              ; preds = %126, %122
  %145 = load i32, i32* %3, align 4
  %146 = call i64 @isprint(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %151, label %164

151:                                              ; preds = %148, %144
  %152 = load i32, i32* %3, align 4
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** @line, align 8
  %155 = load i32, i32* @col, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 %153, i8* %157, align 1
  %158 = load i32, i32* @CMDLINE, align 4
  %159 = load i32, i32* @col, align 4
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @mvaddch(i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* @col, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @col, align 4
  br label %164

164:                                              ; preds = %151, %148
  %165 = load i32, i32* @col, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %3, align 4
  %169 = icmp ne i32 %168, 13
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* %3, align 4
  %172 = icmp ne i32 %171, 10
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %164
  store i32 0, i32* %2, align 4
  br label %175

174:                                              ; preds = %170, %167
  store i32 1, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %173, %139, %117, %63, %42, %37, %30, %11
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @CTRL(i8 signext) #2

declare dso_local i32 @wrefresh(i32) #2

declare dso_local i32 @status(...) #2

declare dso_local i32 @move(i32, i32) #2

declare dso_local i32 @clrtoeol(...) #2

declare dso_local i32 @erasechar(...) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @killchar(...) #2

declare dso_local i64 @isprint(i32) #2

declare dso_local i32 @mvaddch(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
