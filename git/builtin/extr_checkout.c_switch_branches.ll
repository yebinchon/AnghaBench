; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_switch_branches.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_switch_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i64, i64, i64 }
%struct.branch_info = type { i8*, i64, i32* }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@the_repository = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"'switch --orphan' should never accept a commit as starting point\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(empty)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"You are on a branch yet to be born\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.checkout_opts*, %struct.branch_info*)* @switch_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_branches(%struct.checkout_opts* %0, %struct.branch_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.checkout_opts*, align 8
  %5 = alloca %struct.branch_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.branch_info, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.checkout_opts* %0, %struct.checkout_opts** %4, align 8
  store %struct.branch_info* %1, %struct.branch_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %13 = call i32 @trace2_cmd_mode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @memset(%struct.branch_info* %7, i32 0, i32 24)
  %15 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.object_id* %9, i32* %10)
  store i8* %15, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 2
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @the_repository, align 4
  %23 = call i32* @lookup_commit_reference_gently(i32 %22, %struct.object_id* %9, i32 1)
  %24 = ptrtoint i32* %23 to i64
  %25 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @REF_ISSYMREF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 0
  %41 = call i32 @skip_prefix(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %44 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %49 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %54 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @BUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %61 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %63 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 8
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %47, %42
  %65 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %66 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %64
  %70 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %71 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %71, align 8
  %72 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %75 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %77 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @die(i32 %81)
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %85 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @parse_commit_or_die(i32* %87)
  %89 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %90 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %100 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %101 = call i32 @merge_working_tree(%struct.checkout_opts* %99, %struct.branch_info* %7, %struct.branch_info* %100, i32* %11)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %156

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %95
  %110 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %111 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %136, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %136, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %124 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %133 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @orphaned_commit_warning(i64 %131, i64 %134)
  br label %136

136:                                              ; preds = %129, %122, %118, %114, %109
  %137 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %138 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %139 = call i32 @update_refs_for_switch(%struct.checkout_opts* %137, %struct.branch_info* %7, %struct.branch_info* %138)
  %140 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %7, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %143 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @post_checkout_hook(i64 %141, i64 %144, i32 1)
  store i32 %145, i32* %6, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %136
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %150, %136
  %154 = phi i1 [ true, %136 ], [ %152, %150 ]
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %153, %104
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @trace2_cmd_mode(i8*) #1

declare dso_local i32 @memset(%struct.branch_info*, i32, i32) #1

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @skip_prefix(i32*, i8*, i8**) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_commit_or_die(i32*) #1

declare dso_local i32 @merge_working_tree(%struct.checkout_opts*, %struct.branch_info*, %struct.branch_info*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @orphaned_commit_warning(i64, i64) #1

declare dso_local i32 @update_refs_for_switch(%struct.checkout_opts*, %struct.branch_info*, %struct.branch_info*) #1

declare dso_local i32 @post_checkout_hook(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
