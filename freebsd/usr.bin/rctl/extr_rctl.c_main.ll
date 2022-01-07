; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ahlnru\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"at most one of -a, -l, -r, or -u may be specified\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %32 [
    i32 97, label %25
    i32 104, label %26
    i32 108, label %27
    i32 110, label %28
    i32 114, label %29
    i32 117, label %30
    i32 63, label %31
  ]

25:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %34

26:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %34

27:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %34

28:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %34

29:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %34

30:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %34

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %23, %31
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %30, %29, %28, %27, %26, %25
  br label %18

35:                                               ; preds = %18
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @show_rules(i8* %68, i8* %69, i32 %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %157

73:                                               ; preds = %57
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %73, %54
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %152, %75
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %155

80:                                               ; preds = %76
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %14, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %14, align 8
  %93 = call i8* @expand_rule(i8* %92, i32 0)
  store i8* %93, i8** %13, align 8
  br label %97

94:                                               ; preds = %88, %80
  %95 = load i8*, i8** %14, align 8
  %96 = call i8* @expand_rule(i8* %95, i32 1)
  store i8* %96, i8** %13, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** %13, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %152

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @add_rule(i8* %107, i8* %108)
  store i32 %109, i32* %17, align 4
  br label %143

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i8*, i8** %13, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @show_limits(i8* %114, i8* %115, i32 %116, i32 %117)
  store i32 %118, i32* %17, align 4
  br label %142

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 @remove_rule(i8* %123, i8* %124)
  store i32 %125, i32* %17, align 4
  br label %141

126:                                              ; preds = %119
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8*, i8** %13, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @show_usage(i8* %130, i8* %131, i32 %132)
  store i32 %133, i32* %17, align 4
  br label %140

134:                                              ; preds = %126
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @show_rules(i8* %135, i8* %136, i32 %137, i32 %138)
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %134, %129
  br label %141

141:                                              ; preds = %140, %122
  br label %142

142:                                              ; preds = %141, %113
  br label %143

143:                                              ; preds = %142, %106
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %149, %100
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %76

155:                                              ; preds = %76
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %66
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @show_rules(i8*, i8*, i32, i32) #1

declare dso_local i8* @expand_rule(i8*, i32) #1

declare dso_local i32 @add_rule(i8*, i8*) #1

declare dso_local i32 @show_limits(i8*, i8*, i32, i32) #1

declare dso_local i32 @remove_rule(i8*, i8*) #1

declare dso_local i32 @show_usage(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
