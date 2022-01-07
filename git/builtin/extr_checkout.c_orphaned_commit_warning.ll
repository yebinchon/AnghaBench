; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_orphaned_commit_warning.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_orphaned_commit_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.object }
%struct.object = type { i32, i32 }
%struct.rev_info = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@add_pending_uninteresting_ref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"internal error in revision walk\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Previous HEAD position was\00", align 1
@ALL_REV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit*)* @orphaned_commit_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orphaned_commit_warning(%struct.commit* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.rev_info, align 4
  %6 = alloca %struct.object*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %7 = load %struct.commit*, %struct.commit** %3, align 8
  %8 = getelementptr inbounds %struct.commit, %struct.commit* %7, i32 0, i32 0
  store %struct.object* %8, %struct.object** %6, align 8
  %9 = load i32, i32* @the_repository, align 4
  %10 = call i32 @repo_init_revisions(i32 %9, %struct.rev_info* %5, i32* null)
  %11 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %5, i32* null)
  %12 = load i32, i32* @UNINTERESTING, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.object*, %struct.object** %6, align 8
  %15 = getelementptr inbounds %struct.object, %struct.object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = load %struct.object*, %struct.object** %6, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 1
  %21 = call i32 @oid_to_hex(i32* %20)
  %22 = call i32 @add_pending_object(%struct.rev_info* %5, %struct.object* %18, i32 %21)
  %23 = load i32, i32* @add_pending_uninteresting_ref, align 4
  %24 = call i32 @for_each_ref(i32 %23, %struct.rev_info* %5)
  %25 = load %struct.commit*, %struct.commit** %4, align 8
  %26 = icmp ne %struct.commit* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.commit*, %struct.commit** %4, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 1
  %31 = load i32, i32* @UNINTERESTING, align 4
  %32 = call i32 @add_pending_oid(%struct.rev_info* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  %34 = call i64 @prepare_revision_walk(%struct.rev_info* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @die(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.commit*, %struct.commit** %3, align 8
  %41 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UNINTERESTING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load %struct.commit*, %struct.commit** %3, align 8
  %49 = call i32 @suggest_reattach(%struct.commit* %48, %struct.rev_info* %5)
  br label %54

50:                                               ; preds = %39
  %51 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.commit*, %struct.commit** %3, align 8
  %53 = call i32 @describe_detached_head(i32 %51, %struct.commit* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @ALL_REV_FLAGS, align 4
  %56 = call i32 @clear_commit_marks_all(i32 %55)
  ret void
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @for_each_ref(i32, %struct.rev_info*) #1

declare dso_local i32 @add_pending_oid(%struct.rev_info*, i8*, i32*, i32) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @suggest_reattach(%struct.commit*, %struct.rev_info*) #1

declare dso_local i32 @describe_detached_head(i32, %struct.commit*) #1

declare dso_local i32 @clear_commit_marks_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
