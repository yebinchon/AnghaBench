; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var = type { i32, %struct.var* }

@BUFSIZ = common dso_local global i32 0, align 4
@HSHSIZE = common dso_local global i32 0, align 4
@variables = common dso_local global %struct.var** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Non-null variable name required\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.var*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to i8**
  store i8** %17, i8*** %4, align 8
  %18 = load i32, i32* @BUFSIZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %107

25:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @HSHSIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load %struct.var**, %struct.var*** @variables, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.var*, %struct.var** %31, i64 %33
  %35 = load %struct.var*, %struct.var** %34, align 8
  store %struct.var* %35, %struct.var** %5, align 8
  br label %36

36:                                               ; preds = %42, %30
  %37 = load %struct.var*, %struct.var** %5, align 8
  %38 = icmp ne %struct.var* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load %struct.var*, %struct.var** %5, align 8
  %44 = getelementptr inbounds %struct.var, %struct.var* %43, i32 0, i32 1
  %45 = load %struct.var*, %struct.var** %44, align 8
  store %struct.var* %45, %struct.var** %5, align 8
  br label %36

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @salloc(i32 %54)
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %10, align 8
  store i32 0, i32* %13, align 4
  %57 = load i8**, i8*** %10, align 8
  store i8** %57, i8*** %11, align 8
  br label %58

58:                                               ; preds = %84, %50
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @HSHSIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load %struct.var**, %struct.var*** @variables, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.var*, %struct.var** %63, i64 %65
  %67 = load %struct.var*, %struct.var** %66, align 8
  store %struct.var* %67, %struct.var** %5, align 8
  br label %68

68:                                               ; preds = %79, %62
  %69 = load %struct.var*, %struct.var** %5, align 8
  %70 = icmp ne %struct.var* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.var*, %struct.var** %5, align 8
  %73 = getelementptr inbounds %struct.var, %struct.var* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8**, i8*** %11, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %11, align 8
  store i8* %76, i8** %77, align 8
  br label %79

79:                                               ; preds = %71
  %80 = load %struct.var*, %struct.var** %5, align 8
  %81 = getelementptr inbounds %struct.var, %struct.var* %80, i32 0, i32 1
  %82 = load %struct.var*, %struct.var** %81, align 8
  store %struct.var* %82, %struct.var** %5, align 8
  br label %68

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %58

87:                                               ; preds = %58
  %88 = load i8**, i8*** %11, align 8
  store i8* null, i8** %88, align 8
  %89 = load i8**, i8*** %10, align 8
  %90 = call i32 @sort(i8** %89)
  %91 = load i8**, i8*** %10, align 8
  store i8** %91, i8*** %11, align 8
  br label %92

92:                                               ; preds = %103, %87
  %93 = load i8**, i8*** %11, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i8**, i8*** %11, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %11, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @value(i8* %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i8**, i8*** %11, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %11, align 8
  br label %92

106:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %164

107:                                              ; preds = %1
  store i32 0, i32* %12, align 4
  %108 = load i8**, i8*** %4, align 8
  store i8** %108, i8*** %10, align 8
  br label %109

109:                                              ; preds = %159, %107
  %110 = load i8**, i8*** %10, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %162

113:                                              ; preds = %109
  %114 = load i8**, i8*** %10, align 8
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  br label %116

116:                                              ; preds = %133, %113
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %21, i64 %19
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = icmp ult i8* %117, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 61
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br label %131

131:                                              ; preds = %126, %121, %116
  %132 = phi i1 [ false, %121 ], [ false, %116 ], [ %130, %126 ]
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  %136 = load i8, i8* %134, align 1
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %7, align 8
  store i8 %136, i8* %137, align 1
  br label %116

139:                                              ; preds = %131
  %140 = load i8*, i8** %7, align 8
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %149

146:                                              ; preds = %139
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %6, align 8
  br label %149

149:                                              ; preds = %146, %145
  %150 = call i64 @equal(i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %159

156:                                              ; preds = %149
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @assign(i8* %21, i8* %157)
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i8**, i8*** %10, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %10, align 8
  br label %109

162:                                              ; preds = %109
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %164

164:                                              ; preds = %162, %106
  %165 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @salloc(i32) #2

declare dso_local i32 @sort(i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @value(i8*) #2

declare dso_local i64 @equal(i8*, i8*) #2

declare dso_local i32 @assign(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
