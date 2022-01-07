; ModuleID = '/home/carl/AnghaBench/git/extr_branch.c_install_branch_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_branch.c_install_branch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Not setting branch %s as its own upstream.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"branch.%s.merge\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"branch.%s.rebase\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@BRANCH_CONFIG_VERBOSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"Branch '%s' set up to track remote branch '%s' from '%s' by rebasing.\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Branch '%s' set up to track remote branch '%s' from '%s'.\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Branch '%s' set up to track local branch '%s' by rebasing.\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Branch '%s' set up to track local branch '%s'.\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Branch '%s' set up to track remote ref '%s' by rebasing.\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Branch '%s' set up to track remote ref '%s'.\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Branch '%s' set up to track local ref '%s' by rebasing.\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Branch '%s' set up to track local ref '%s'.\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Unable to write upstream branch configuration\00", align 1
@tracking_advice = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_branch_config(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @should_setup_rebase(i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @skip_prefix(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @strcmp(i8* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @warning(i32 %28, i8* %29)
  store i32 0, i32* %5, align 4
  br label %163

31:                                               ; preds = %24, %19, %4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %40 ]
  %43 = call i64 @git_config_set_gently(i32 %35, i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %137

46:                                               ; preds = %41
  %47 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @git_config_set_gently(i32 %51, i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %137

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @git_config_set_gently(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %137

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %56
  %70 = call i32 @strbuf_release(%struct.strbuf* %11)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @BRANCH_CONFIG_VERBOSE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %136

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  br label %88

86:                                               ; preds = %81
  %87 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 (i32, i8*, i8*, ...) @printf_ln(i32 %89, i8* %90, i8* %91, i8* %92)
  br label %106

94:                                               ; preds = %78
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  br label %101

99:                                               ; preds = %94
  %100 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @printf_ln(i32 %102, i8* %103, i8* %104)
  br label %106

106:                                              ; preds = %101, %88
  br label %135

107:                                              ; preds = %75
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  br label %117

115:                                              ; preds = %110
  %116 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i32, i8*, i8*, ...) @printf_ln(i32 %118, i8* %119, i8* %120)
  br label %134

122:                                              ; preds = %107
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %129

127:                                              ; preds = %122
  %128 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 (i32, i8*, i8*, ...) @printf_ln(i32 %130, i8* %131, i8* %132)
  br label %134

134:                                              ; preds = %129, %117
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %69
  store i32 0, i32* %5, align 4
  br label %163

137:                                              ; preds = %67, %55, %45
  %138 = call i32 @strbuf_release(%struct.strbuf* %11)
  %139 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  %140 = call i32 @error(i32 %139)
  %141 = load i8*, i8** @tracking_advice, align 8
  %142 = call i32 @_(i8* %141)
  %143 = load i8*, i8** %8, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i8*, i8** %8, align 8
  br label %148

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i8* [ %146, %145 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %147 ]
  %150 = load i8*, i8** %8, align 8
  %151 = icmp ne i8* %150, null
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %154 = load i8*, i8** %10, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i8*, i8** %10, align 8
  br label %160

158:                                              ; preds = %148
  %159 = load i8*, i8** %9, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i8* [ %157, %156 ], [ %159, %158 ]
  %162 = call i32 @advise(i32 %142, i8* %149, i8* %153, i8* %161)
  store i32 -1, i32* %5, align 4
  br label %163

163:                                              ; preds = %160, %136, %27
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @should_setup_rebase(i8*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @warning(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @git_config_set_gently(i32, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @printf_ln(i32, i8*, i8*, ...) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @advise(i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
