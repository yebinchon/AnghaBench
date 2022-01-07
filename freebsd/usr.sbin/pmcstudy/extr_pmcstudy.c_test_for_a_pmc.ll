; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_test_for_a_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_test_for_a_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"/usr/sbin/pmcstat -w .25 -c 0 -s %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed -- popen fails\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed -- no output from pmstat\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Failed %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed -- no second output from pmstat\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed -- '%s' not '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @test_for_a_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_for_a_pmc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 50
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 50, %18
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %26, %17
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  br label %20

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %2
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %35 = call i32* @my_popen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %164

40:                                               ; preds = %30
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @fgets(i8* %44, i32 1024, i32* %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %160

50:                                               ; preds = %40
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %50
  store i32 2, i32* %12, align 4
  br label %68

68:                                               ; preds = %153, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %156

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %76
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  br label %160

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %85
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @strncmp(i8* %86, i8* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %151

91:                                               ; preds = %83
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %93 = load i32*, i32** %5, align 8
  %94 = call i32* @fgets(i8* %92, i32 1024, i32* %93)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %160

98:                                               ; preds = %91
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %100 = call i32 @strlen(i8* %99)
  store i32 %100, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %117, %98
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %116

115:                                              ; preds = %105
  br label %120

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %101

120:                                              ; preds = %115, %101
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %123
  %125 = call i32 @strlen(i8* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 20
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %136, %128
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 20, %131
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %129

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %120
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %145
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %146)
  br label %150

148:                                              ; preds = %140
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  br label %160

151:                                              ; preds = %83
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %68

156:                                              ; preds = %68
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %157, i8* %158)
  br label %160

160:                                              ; preds = %156, %150, %96, %80, %48
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @my_pclose(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %38
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @my_popen(i8*, i8*, i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @my_pclose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
