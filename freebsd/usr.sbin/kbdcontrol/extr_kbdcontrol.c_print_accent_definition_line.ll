; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_print_accent_definition_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_print_accent_definition_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acc_t = type { i64, i32** }

@.str = private unnamed_addr constant [7 x i8] c"  %-6s\00", align 1
@acc_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"'%c'  \00", align 1
@hex = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%03d  \00", align 1
@NUM_ACCENTCHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A             \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"( '%c' \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"(0x%02x \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"( %03d \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"'%c' ) \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0x%02x) \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%03d ) \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.acc_t*)* @print_accent_definition_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_accent_definition_line(i32* %0, i32 %1, %struct.acc_t* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acc_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.acc_t* %2, %struct.acc_t** %6, align 8
  %9 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %10 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %149

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i8**, i8*** @acc_names, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %23 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @isascii(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %14
  %29 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %30 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @isprint(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %38 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %57

41:                                               ; preds = %28, %14
  %42 = load i64, i64* @hex, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %47 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %56

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %53 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %35
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %143, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NUM_ACCENTCHARS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %146

62:                                               ; preds = %58
  %63 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %64 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %146

75:                                               ; preds = %62
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = srem i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78, %75
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @isascii(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @isprint(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %109

97:                                               ; preds = %89, %85
  %98 = load i64, i64* @hex, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  br label %108

104:                                              ; preds = %97
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %93
  %110 = load %struct.acc_t*, %struct.acc_t** %6, align 8
  %111 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @isascii(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  %124 = call i64 @isprint(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %128)
  br label %142

130:                                              ; preds = %122, %109
  %131 = load i64, i64* @hex, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  br label %141

137:                                              ; preds = %130
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %58

146:                                              ; preds = %74, %58
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %13
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
