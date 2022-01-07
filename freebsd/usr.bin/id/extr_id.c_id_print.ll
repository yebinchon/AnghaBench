; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_id_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_id_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i8* }
%struct.group = type { i8* }

@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uid=%u(%s)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" gid=%u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" euid=%u\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" egid=%u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" groups=%u\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, i32, i32, i32)* @id_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @id_print(%struct.passwd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.passwd*, %struct.passwd** %5, align 8
  %21 = icmp ne %struct.passwd* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.passwd*, %struct.passwd** %5, align 8
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.passwd*, %struct.passwd** %5, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %4
  %30 = call i32 (...) @getuid()
  store i32 %30, i32* %13, align 4
  %31 = call i32 (...) @getgid()
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %34 = call i32 @sysconf(i32 %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32* @malloc(i32 %39)
  store i32* %40, i32** %18, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.passwd*, %struct.passwd** %5, align 8
  %49 = icmp ne %struct.passwd* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i64, i64* %17, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = load %struct.passwd*, %struct.passwd** %5, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = call i32 @getgrouplist(i8* %55, i32 %56, i32* %57, i32* %16)
  br label %63

59:                                               ; preds = %47, %44
  %60 = load i64, i64* %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @getgroups(i64 %60, i32* %61)
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = load %struct.passwd*, %struct.passwd** %5, align 8
  %65 = icmp ne %struct.passwd* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.passwd*, %struct.passwd** %5, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %67, i8* %70)
  br label %75

72:                                               ; preds = %63
  %73 = call i32 (...) @getuid()
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.group* @getgrgid(i32 %78)
  store %struct.group* %79, %struct.group** %9, align 8
  %80 = icmp ne %struct.group* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.group*, %struct.group** %9, align 8
  %83 = getelementptr inbounds %struct.group, %struct.group* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %81, %75
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = call i32 (...) @geteuid()
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32, i32* %14, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = call %struct.passwd* @getpwuid(i32 %96)
  store %struct.passwd* %97, %struct.passwd** %5, align 8
  %98 = icmp ne %struct.passwd* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.passwd*, %struct.passwd** %5, align 8
  %101 = getelementptr inbounds %struct.passwd, %struct.passwd* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %89, %86
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = call i32 (...) @getegid()
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call %struct.group* @getgrgid(i32 %115)
  store %struct.group* %116, %struct.group** %9, align 8
  %117 = icmp ne %struct.group* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.group*, %struct.group** %9, align 8
  %120 = getelementptr inbounds %struct.group, %struct.group* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %118, %112
  br label %124

124:                                              ; preds = %123, %108, %105
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %152, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  %136 = icmp eq i32 %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %152

138:                                              ; preds = %129
  %139 = load i8*, i8** %19, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 (i8*, ...) @printf(i8* %139, i32 %140)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call %struct.group* @getgrgid(i32 %142)
  store %struct.group* %143, %struct.group** %9, align 8
  %144 = icmp ne %struct.group* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.group*, %struct.group** %9, align 8
  %147 = getelementptr inbounds %struct.group, %struct.group* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %145, %138
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %150, %137
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %125

155:                                              ; preds = %125
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32*, i32** %18, align 8
  %158 = call i32 @free(i32* %157)
  ret void
}

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getgrouplist(i8*, i32, i32*, i32*) #1

declare dso_local i32 @getgroups(i64, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
