; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_obsolete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_obsolete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"-a option used without an argument; reverting to historical behavior\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"illegal option -- %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @obsolete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obsolete(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  br label %7

7:                                                ; preds = %187, %31, %1
  %8 = load i8**, i8*** %2, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %9, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %188

12:                                               ; preds = %7
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %188

25:                                               ; preds = %18, %12
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %7

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %187 [
    i32 97, label %37
    i32 106, label %65
    i32 111, label %101
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i8**, i8*** %2, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load i8**, i8*** %2, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i8**, i8*** %2, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %43
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 1, i8* %62, align 1
  %63 = call i32 @warnx(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %54, %48, %37
  br label %187

65:                                               ; preds = %32
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  switch i32 %69, label %95 [
    i32 49, label %70
    i32 50, label %82
    i32 0, label %94
  ]

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %96

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 49, i8* %79, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 0, i8* %81, align 1
  br label %100

82:                                               ; preds = %65
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %96

89:                                               ; preds = %82
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 50, i8* %91, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8 0, i8* %93, align 1
  br label %100

94:                                               ; preds = %65
  br label %100

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95, %88, %76
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %96, %94, %89, %77
  br label %187

101:                                              ; preds = %32
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %187

108:                                              ; preds = %101
  %109 = load i8**, i8*** %2, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  store i8** %110, i8*** %4, align 8
  br label %111

111:                                              ; preds = %181, %108
  %112 = load i8**, i8*** %4, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %184

115:                                              ; preds = %111
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 48
  br i1 %122, label %147, label %123

123:                                              ; preds = %115
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 49
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load i8**, i8*** %4, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 50
  br i1 %138, label %147, label %139

139:                                              ; preds = %131, %123
  %140 = load i8**, i8*** %4, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 46
  br i1 %146, label %147, label %148

147:                                              ; preds = %139, %131, %115
  br label %184

148:                                              ; preds = %139
  %149 = load i8**, i8*** %4, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strlen(i8* %150)
  store i64 %151, i64* %3, align 8
  %152 = load i64, i64* %3, align 8
  %153 = sub i64 %152, 2
  %154 = load i8**, i8*** %4, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  %157 = call i64 @strspn(i8* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i64 %153, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %184

160:                                              ; preds = %148
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 3
  %163 = call i8* @malloc(i64 %162)
  store i8* %163, i8** %6, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 @err(i32 1, i32* null)
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 45, i8* %169, align 1
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8 111, i8* %171, align 1
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = load i8**, i8*** %4, align 8
  %175 = load i8*, i8** %174, align 8
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 1
  %178 = call i32 @memmove(i8* %173, i8* %175, i64 %177)
  %179 = load i8*, i8** %6, align 8
  %180 = load i8**, i8*** %4, align 8
  store i8* %179, i8** %180, align 8
  br label %181

181:                                              ; preds = %167
  %182 = load i8**, i8*** %4, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %4, align 8
  br label %111

184:                                              ; preds = %159, %147, %111
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 -1
  store i8** %186, i8*** %2, align 8
  br label %187

187:                                              ; preds = %32, %184, %107, %100, %64
  br label %7

188:                                              ; preds = %24, %7
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
