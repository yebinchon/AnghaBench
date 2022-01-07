; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_get_strategy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_get_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.cmdname** }
%struct.cmdname = type { i8*, i64 }
%struct.strategy = type { i32, i32* }

@get_strategy.main_cmds = internal global %struct.cmdnames zeroinitializer, align 8
@get_strategy.other_cmds = internal global %struct.cmdnames zeroinitializer, align 8
@get_strategy.loaded = internal global i32 0, align 4
@all_strategy = common dso_local global %struct.strategy* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"git-merge-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not find merge strategy '%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Available strategies are:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Available custom strategies are:\00", align 1
@NO_TRIVIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strategy* (i8*)* @get_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strategy* @get_strategy(i8* %0) #0 {
  %2 = alloca %struct.strategy*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strategy*, align 8
  %6 = alloca %struct.cmdnames, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmdname*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.strategy* null, %struct.strategy** %2, align 8
  br label %183

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.strategy*, %struct.strategy** @all_strategy, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.strategy* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.strategy*, %struct.strategy** @all_strategy, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.strategy, %struct.strategy* %21, i64 %23
  %25 = getelementptr inbounds %struct.strategy, %struct.strategy* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @strcmp(i8* %20, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load %struct.strategy*, %struct.strategy** @all_strategy, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.strategy, %struct.strategy* %30, i64 %32
  store %struct.strategy* %33, %struct.strategy** %2, align 8
  br label %183

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @get_strategy.loaded, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %109, label %41

41:                                               ; preds = %38
  store i32 1, i32* @get_strategy.loaded, align 4
  %42 = call i32 @memset(%struct.cmdnames* %6, i32 0, i32 16)
  %43 = call i32 @load_command_list(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.cmdnames* @get_strategy.main_cmds, %struct.cmdnames* @get_strategy.other_cmds)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %104, %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.main_cmds, i32 0, i32 0), align 8
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  %49 = load %struct.cmdname**, %struct.cmdname*** getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.main_cmds, i32 0, i32 1), align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cmdname*, %struct.cmdname** %49, i64 %51
  %53 = load %struct.cmdname*, %struct.cmdname** %52, align 8
  store %struct.cmdname* %53, %struct.cmdname** %9, align 8
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %89, %48
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.strategy*, %struct.strategy** @all_strategy, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.strategy* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load %struct.cmdname*, %struct.cmdname** %9, align 8
  %61 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.strategy*, %struct.strategy** @all_strategy, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.strategy, %struct.strategy* %63, i64 %65
  %67 = getelementptr inbounds %struct.strategy, %struct.strategy* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.cmdname*, %struct.cmdname** %9, align 8
  %70 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @strncmp(i8* %62, i32* %68, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %59
  %75 = load %struct.strategy*, %struct.strategy** @all_strategy, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.strategy, %struct.strategy* %75, i64 %77
  %79 = getelementptr inbounds %struct.strategy, %struct.strategy* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.cmdname*, %struct.cmdname** %9, align 8
  %82 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %74, %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load %struct.cmdname*, %struct.cmdname** %9, align 8
  %97 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.cmdname*, %struct.cmdname** %9, align 8
  %100 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @add_cmdname(%struct.cmdnames* %6, i8* %98, i64 %101)
  br label %103

103:                                              ; preds = %95, %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %44

107:                                              ; preds = %44
  %108 = call i32 @exclude_cmds(%struct.cmdnames* @get_strategy.main_cmds, %struct.cmdnames* %6)
  br label %109

109:                                              ; preds = %107, %38
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @is_in_cmdlist(%struct.cmdnames* @get_strategy.main_cmds, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %173, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @is_in_cmdlist(%struct.cmdnames* @get_strategy.other_cmds, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %173, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @stderr, align 4
  %119 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* %119, i8* %120)
  %122 = load i32, i32* @stderr, align 4
  %123 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %139, %117
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.main_cmds, i32 0, i32 0), align 8
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i32, i32* @stderr, align 4
  %131 = load %struct.cmdname**, %struct.cmdname*** getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.main_cmds, i32 0, i32 1), align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cmdname*, %struct.cmdname** %131, i64 %133
  %135 = load %struct.cmdname*, %struct.cmdname** %134, align 8
  %136 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.other_cmds, i32 0, i32 0), align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %142
  %148 = load i32, i32* @stderr, align 4
  %149 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* %149)
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %165, %147
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.other_cmds, i32 0, i32 0), align 8
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load i32, i32* @stderr, align 4
  %157 = load %struct.cmdname**, %struct.cmdname*** getelementptr inbounds (%struct.cmdnames, %struct.cmdnames* @get_strategy.other_cmds, i32 0, i32 1), align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cmdname*, %struct.cmdname** %157, i64 %159
  %161 = load %struct.cmdname*, %struct.cmdname** %160, align 8
  %162 = getelementptr inbounds %struct.cmdname, %struct.cmdname* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %151

168:                                              ; preds = %151
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %142
  %172 = call i32 @exit(i32 1) #3
  unreachable

173:                                              ; preds = %113, %109
  %174 = call %struct.strategy* @xcalloc(i32 1, i32 16)
  store %struct.strategy* %174, %struct.strategy** %5, align 8
  %175 = load i8*, i8** %3, align 8
  %176 = call i32* @xstrdup(i8* %175)
  %177 = load %struct.strategy*, %struct.strategy** %5, align 8
  %178 = getelementptr inbounds %struct.strategy, %struct.strategy* %177, i32 0, i32 1
  store i32* %176, i32** %178, align 8
  %179 = load i32, i32* @NO_TRIVIAL, align 4
  %180 = load %struct.strategy*, %struct.strategy** %5, align 8
  %181 = getelementptr inbounds %struct.strategy, %struct.strategy* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.strategy*, %struct.strategy** %5, align 8
  store %struct.strategy* %182, %struct.strategy** %2, align 8
  br label %183

183:                                              ; preds = %173, %29, %12
  %184 = load %struct.strategy*, %struct.strategy** %2, align 8
  ret %struct.strategy* %184
}

declare dso_local i32 @ARRAY_SIZE(%struct.strategy*) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @memset(%struct.cmdnames*, i32, i32) #1

declare dso_local i32 @load_command_list(i8*, %struct.cmdnames*, %struct.cmdnames*) #1

declare dso_local i32 @strncmp(i8*, i32*, i64) #1

declare dso_local i32 @add_cmdname(%struct.cmdnames*, i8*, i64) #1

declare dso_local i32 @exclude_cmds(%struct.cmdnames*, %struct.cmdnames*) #1

declare dso_local i32 @is_in_cmdlist(%struct.cmdnames*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.strategy* @xcalloc(i32, i32) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
