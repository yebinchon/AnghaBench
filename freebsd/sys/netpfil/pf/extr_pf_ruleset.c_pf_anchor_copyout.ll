; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ruleset.c_pf_anchor_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ruleset.c_pf_anchor_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.pf_rule = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.pfioc_rule = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"pf_anchor_copyout: '%s' '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_anchor_copyout(%struct.pf_ruleset* %0, %struct.pf_rule* %1, %struct.pfioc_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_ruleset*, align 8
  %6 = alloca %struct.pf_rule*, align 8
  %7 = alloca %struct.pfioc_rule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pf_ruleset* %0, %struct.pf_ruleset** %5, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %6, align 8
  store %struct.pfioc_rule* %2, %struct.pfioc_rule** %7, align 8
  %11 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %12 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %16 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %162

20:                                               ; preds = %3
  %21 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %22 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %27 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 8)
  %30 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %31 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %34 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlcat(i8* %32, i8* %37, i32 8)
  br label %142

39:                                               ; preds = %20
  %40 = load i32, i32* @MAXPATHLEN, align 4
  %41 = call i64 @rs_malloc(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %162

46:                                               ; preds = %39
  %47 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %48 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp eq %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  br label %63

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %57 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @MAXPATHLEN, align 4
  %62 = call i32 @strlcpy(i8* %55, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %51
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %67 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @strrchr(i8* %71, i8 signext 47)
  store i8* %72, i8** %9, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i8*, i8** %9, align 8
  store i8 0, i8* %77, align 1
  %78 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %79 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlcat(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %88 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = call i64 @strncmp(i8* %86, i8* %91, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %99 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @rs_free(i8* %104)
  store i32 1, i32* %4, align 4
  br label %162

106:                                              ; preds = %85
  %107 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %108 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = icmp sgt i64 %112, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %106
  %117 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %118 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %121 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %116
  %131 = load i8*, i8** %8, align 8
  %132 = call i64 @strlen(i8* %131)
  %133 = add nsw i64 %132, 1
  br label %135

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %130
  %136 = phi i64 [ %133, %130 ], [ 0, %134 ]
  %137 = getelementptr inbounds i8, i8* %124, i64 %136
  %138 = call i32 @strlcat(i8* %119, i8* %137, i32 8)
  br label %139

139:                                              ; preds = %135, %106
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @rs_free(i8* %140)
  br label %142

142:                                              ; preds = %139, %25
  %143 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %144 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %149 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %152 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %160 = call i32 @strlcat(i8* %150, i8* %159, i32 8)
  br label %161

161:                                              ; preds = %147, %142
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %96, %45, %19
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @rs_malloc(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @rs_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
