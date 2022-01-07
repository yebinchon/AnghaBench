; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_split_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_split_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" \09\0D\0A,\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"start pass %d: <%s>\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"   pass %d arg %d: <%s>\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ac is %d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d: <%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32*)* @split_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @split_arg(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8** null, i8*** %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %164

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %132, %15
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp ne i8** %19, null
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i32, ...) @ND(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %105, %18
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @strchr(i8* %35, i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %34, %30
  %44 = phi i1 [ false, %30 ], [ %42, %34 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %30

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %106

53:                                               ; preds = %48
  %54 = load i8**, i8*** %7, align 8
  %55 = icmp ne i8** %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i32 (i8*, i32, ...) @ND(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58, i8* %62)
  %64 = load i8**, i8*** %7, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %53
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %70, i8** %74, align 8
  br label %75

75:                                               ; preds = %66, %53
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %94, %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @strchr(i8* %83, i8 signext %88)
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %82, %78
  %93 = phi i1 [ false, %78 ], [ %91, %82 ]
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %78

97:                                               ; preds = %92
  %98 = load i8**, i8*** %7, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %100, %97
  br label %25

106:                                              ; preds = %52, %25
  %107 = load i8**, i8*** %7, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %131, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (i8*, i32, ...) @ND(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 8
  %119 = add i64 %114, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8** @calloc(i32 1, i32 %120)
  store i8** %121, i8*** %7, align 8
  %122 = load i8**, i8*** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = bitcast i8** %126 to i8*
  store i8* %127, i8** %6, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @strcpy(i8* %128, i8* %129)
  br label %132

131:                                              ; preds = %106
  br label %133

132:                                              ; preds = %109
  br label %18

133:                                              ; preds = %131
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %146, %133
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = load i8**, i8*** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @NED(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %139, i8* %144)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %134

149:                                              ; preds = %134
  %150 = load i8**, i8*** %7, align 8
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8*, i8** %150, i64 %153
  store i8* null, i8** %154, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = load i8**, i8*** %7, align 8
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  store i8* %155, i8** %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %5, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i8**, i8*** %7, align 8
  store i8** %163, i8*** %3, align 8
  br label %164

164:                                              ; preds = %149, %14
  %165 = load i8**, i8*** %3, align 8
  ret i8** %165
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ND(i8*, i32, ...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @NED(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
