; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailinfo.c_cmd_mailinfo.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailinfo.c_cmd_mailinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i8*, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"--message-id\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"--encoding=\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--scissors\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"--no-scissors\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"--no-inbody-headers\00", align 1
@mailinfo_usage = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_mailinfo(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mailinfo, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = call i32 @setup_mailinfo(%struct.mailinfo* %8)
  %13 = call i8* (...) @get_commit_output_encoding()
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %123, %3
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 1, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br label %27

27:                                               ; preds = %19, %16
  %28 = phi i1 [ false, %16 ], [ %26, %19 ]
  br i1 %28, label %29, label %128

29:                                               ; preds = %27
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 1
  store i32 1, i32* %36, align 8
  br label %123

37:                                               ; preds = %29
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %122

45:                                               ; preds = %37
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51, %45
  %58 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 3
  store i32 1, i32* %58, align 8
  br label %121

59:                                               ; preds = %51
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  br label %120

68:                                               ; preds = %59
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 0
  store i8* null, i8** %75, align 8
  br label %119

76:                                               ; preds = %68
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @starts_with(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 11
  %87 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 0
  store i8* %86, i8** %87, align 8
  br label %118

88:                                               ; preds = %76
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 4
  store i32 1, i32* %95, align 4
  br label %117

96:                                               ; preds = %88
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 4
  store i32 0, i32* %103, align 4
  br label %116

104:                                              ; preds = %96
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 7
  store i64 0, i64* %111, align 8
  br label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @mailinfo_usage, align 4
  %114 = call i32 @usage(i32 %113)
  br label %115

115:                                              ; preds = %112, %110
  br label %116

116:                                              ; preds = %115, %102
  br label %117

117:                                              ; preds = %116, %94
  br label %118

118:                                              ; preds = %117, %82
  br label %119

119:                                              ; preds = %118, %74
  br label %120

120:                                              ; preds = %119, %65
  br label %121

121:                                              ; preds = %120, %57
  br label %122

122:                                              ; preds = %121, %43
  br label %123

123:                                              ; preds = %122, %35
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %4, align 4
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %127, i8*** %5, align 8
  br label %16

128:                                              ; preds = %27
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 3
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @mailinfo_usage, align 4
  %133 = call i32 @usage(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @stdin, align 4
  %136 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 6
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* @stdout, align 4
  %138 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 5
  store i32 %137, i32* %138, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @prefix_filename(i8* %139, i8* %142)
  store i8* %143, i8** %10, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @prefix_filename(i8* %144, i8* %147)
  store i8* %148, i8** %11, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @mailinfo(%struct.mailinfo* %8, i8* %149, i8* %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %9, align 4
  %156 = call i32 @clear_mailinfo(%struct.mailinfo* %8)
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @free(i8* %159)
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local i32 @setup_mailinfo(%struct.mailinfo*) #1

declare dso_local i8* @get_commit_output_encoding(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

declare dso_local i32 @mailinfo(%struct.mailinfo*, i8*, i8*) #1

declare dso_local i32 @clear_mailinfo(%struct.mailinfo*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
