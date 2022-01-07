; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_ProcessArgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_ProcessArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switches = type { i32, i32, i32, i32, i32 }

@PHYS_INTERACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s is deprecated\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"-unit: Expected unit number\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@PHYS_FOREGROUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"You may specify only one mode.\0A\00", align 1
@EX_START = common dso_local global i32 0, align 4
@PHYS_AUTO = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"A system must be specified in auto mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.switches*)* @ProcessArgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessArgs(i32 %0, i8** %1, %struct.switches* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.switches*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.switches* %2, %struct.switches** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.switches*, %struct.switches** %6, align 8
  %12 = call i32 @memset(%struct.switches* %11, i8 signext 0, i32 20)
  %13 = load i32, i32* @PHYS_INTERACTIVE, align 4
  %14 = load %struct.switches*, %struct.switches** %6, align 8
  %15 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.switches*, %struct.switches** %6, align 8
  %17 = getelementptr inbounds %struct.switches, %struct.switches* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %146, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br label %31

31:                                               ; preds = %22, %18
  %32 = phi i1 [ false, %18 ], [ %30, %22 ]
  br i1 %32, label %33, label %151

33:                                               ; preds = %31
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @Nam2mode(i8* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %134 [
    i32 128, label %43
    i32 129, label %132
  ]

43:                                               ; preds = %33
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.switches*, %struct.switches** %6, align 8
  %49 = getelementptr inbounds %struct.switches, %struct.switches* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %131

52:                                               ; preds = %43
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32, i32* @LogWARN, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @log_Printf(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load %struct.switches*, %struct.switches** %6, align 8
  %72 = getelementptr inbounds %struct.switches, %struct.switches* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  br label %130

75:                                               ; preds = %52
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 (...) @Usage()
  br label %108

98:                                               ; preds = %87
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @atoi(i8* %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.switches*, %struct.switches** %6, align 8
  %107 = getelementptr inbounds %struct.switches, %struct.switches* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %94
  br label %116

109:                                              ; preds = %79
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 4
  %112 = call i8* @atoi(i8* %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.switches*, %struct.switches** %6, align 8
  %115 = getelementptr inbounds %struct.switches, %struct.switches* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %108
  br label %129

117:                                              ; preds = %75
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.switches*, %struct.switches** %6, align 8
  %123 = getelementptr inbounds %struct.switches, %struct.switches* %122, i32 0, i32 3
  store i32 1, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %7, align 4
  br label %128

126:                                              ; preds = %117
  %127 = call i32 (...) @Usage()
  br label %128

128:                                              ; preds = %126, %121
  br label %129

129:                                              ; preds = %128, %116
  br label %130

130:                                              ; preds = %129, %56
  br label %131

131:                                              ; preds = %130, %47
  br label %145

132:                                              ; preds = %33
  %133 = call i32 (...) @Usage()
  br label %145

134:                                              ; preds = %33
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.switches*, %struct.switches** %6, align 8
  %137 = getelementptr inbounds %struct.switches, %struct.switches* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @PHYS_FOREGROUND, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load %struct.switches*, %struct.switches** %6, align 8
  %143 = getelementptr inbounds %struct.switches, %struct.switches* %142, i32 0, i32 4
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %134
  br label %145

145:                                              ; preds = %144, %132, %131
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %18

151:                                              ; preds = %31
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %157 = load i32, i32* @EX_START, align 4
  %158 = call i32 @exit(i32 %157) #3
  unreachable

159:                                              ; preds = %151
  %160 = load %struct.switches*, %struct.switches** %6, align 8
  %161 = getelementptr inbounds %struct.switches, %struct.switches* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @PHYS_AUTO, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %159
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* @stderr, align 4
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i32, i32* @EX_START, align 4
  %174 = call i32 @exit(i32 %173) #3
  unreachable

175:                                              ; preds = %166, %159
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local i32 @memset(%struct.switches*, i8 signext, i32) #1

declare dso_local i32 @Nam2mode(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i8* @atoi(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
