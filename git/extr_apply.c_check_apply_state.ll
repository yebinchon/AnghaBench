; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_apply_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_apply_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.apply_state = type { i32, i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"--reject and --3way cannot be used together.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"--cached and --3way cannot be used together.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"--3way outside a repository\00", align 1
@verbosity_normal = common dso_local global i64 0, align 8
@verbosity_verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"--index outside a repository\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"--cached outside a repository\00", align 1
@verbosity_silent = common dso_local global i64 0, align 8
@mute_routine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_apply_state(%struct.apply_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %14 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %13, i32 0, i32 13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @error(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %168

25:                                               ; preds = %17, %2
  %26 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %27 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %32 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %31, i32 0, i32 14
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @error(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %168

38:                                               ; preds = %30, %25
  %39 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %40 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %39, i32 0, i32 14
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @error(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %168

49:                                               ; preds = %43
  %50 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %51 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %54 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %59 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %61 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @verbosity_normal, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i64, i64* @verbosity_verbose, align 8
  %67 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %68 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %57
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %70
  %74 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %75 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %74, i32 0, i32 12
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %80 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %79, i32 0, i32 11
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %85 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %84, i32 0, i32 10
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %90 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %95 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %88, %83, %78, %73
  %99 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %100 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %93, %70
  %102 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %103 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @error(i32 %110)
  store i32 %111, i32* %3, align 4
  br label %168

112:                                              ; preds = %106, %101
  %113 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %114 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %122 = call i32 @error(i32 %121)
  store i32 %122, i32* %3, align 4
  br label %168

123:                                              ; preds = %117
  %124 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %125 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %112
  %127 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %128 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %133 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136, %131
  %140 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %141 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %140, i32 0, i32 6
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %136, %126
  %143 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %144 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %149 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %148, i32 0, i32 5
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %152 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @verbosity_silent, align 8
  %155 = icmp sle i64 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = call i32 (...) @get_error_routine()
  %158 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %159 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = call i32 (...) @get_warn_routine()
  %161 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %162 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @mute_routine, align 4
  %164 = call i32 @set_error_routine(i32 %163)
  %165 = load i32, i32* @mute_routine, align 4
  %166 = call i32 @set_warn_routine(i32 %165)
  br label %167

167:                                              ; preds = %156, %150
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %120, %109, %46, %35, %22
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @get_error_routine(...) #1

declare dso_local i32 @get_warn_routine(...) #1

declare dso_local i32 @set_error_routine(i32) #1

declare dso_local i32 @set_warn_routine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
