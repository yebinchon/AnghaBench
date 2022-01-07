; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ruleset.c_pf_anchor_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ruleset.c_pf_anchor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.pf_ruleset = type { %struct.TYPE_2__* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pf_anchor_setup: .. beyond root\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"pf_anchor_setup: ruleset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_anchor_setup(%struct.pf_rule* %0, %struct.pf_ruleset* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_rule*, align 8
  %6 = alloca %struct.pf_ruleset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pf_ruleset*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %5, align 8
  store %struct.pf_ruleset* %1, %struct.pf_ruleset** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %12 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %11, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %12, align 8
  %13 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %14 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %16 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %167

22:                                               ; preds = %3
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = call i64 @rs_malloc(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %167

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i32, i32* @MAXPATHLEN, align 4
  %40 = call i32 @strlcpy(i8* %36, i8* %38, i32 %39)
  br label %129

41:                                               ; preds = %29
  %42 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %43 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %45 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp eq %struct.TYPE_2__* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %50 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48, %41
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 0, i8* %59, align 1
  br label %69

60:                                               ; preds = %48
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %63 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @MAXPATHLEN, align 4
  %68 = call i32 @strlcpy(i8* %61, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %108, %69
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br label %88

88:                                               ; preds = %82, %76, %70
  %89 = phi i1 [ false, %76 ], [ false, %70 ], [ %87, %82 ]
  br i1 %89, label %90, label %115

90:                                               ; preds = %88
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @rs_free(i8* %97)
  store i32 1, i32* %4, align 4
  br label %167

99:                                               ; preds = %90
  %100 = load i8*, i8** %9, align 8
  %101 = call i8* @strrchr(i8* %100, i8 signext 47)
  store i8* %101, i8** %8, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i8*, i8** %8, align 8
  store i8 0, i8* %104, align 1
  br label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %105, %103
  %109 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %110 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  store i8* %114, i8** %7, align 8
  br label %70

115:                                              ; preds = %88
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* @MAXPATHLEN, align 4
  %123 = call i32 @strlcat(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* @MAXPATHLEN, align 4
  %128 = call i32 @strlcat(i8* %125, i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %35
  %130 = load i8*, i8** %9, align 8
  %131 = call i8* @strrchr(i8* %130, i8 signext 47)
  store i8* %131, i8** %8, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %139 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load i8*, i8** %8, align 8
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %137, %133, %129
  %142 = load i8*, i8** %9, align 8
  %143 = call %struct.pf_ruleset* @pf_find_or_create_ruleset(i8* %142)
  store %struct.pf_ruleset* %143, %struct.pf_ruleset** %10, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @rs_free(i8* %144)
  %146 = load %struct.pf_ruleset*, %struct.pf_ruleset** %10, align 8
  %147 = icmp eq %struct.pf_ruleset* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %141
  %149 = load %struct.pf_ruleset*, %struct.pf_ruleset** %10, align 8
  %150 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = icmp eq %struct.TYPE_2__* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %148, %141
  %154 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %167

155:                                              ; preds = %148
  %156 = load %struct.pf_ruleset*, %struct.pf_ruleset** %10, align 8
  %157 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %160 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %159, i32 0, i32 2
  store %struct.TYPE_2__* %158, %struct.TYPE_2__** %160, align 8
  %161 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %162 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %155, %153, %95, %28, %21
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @rs_malloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rs_free(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.pf_ruleset* @pf_find_or_create_ruleset(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
