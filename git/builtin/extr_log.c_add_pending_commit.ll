; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_add_pending_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_add_pending_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rev_info*, i32)* @add_pending_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pending_commit(i8* %0, %struct.rev_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.commit*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.rev_info* %1, %struct.rev_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @get_oid(i8* %10, %struct.object_id* %8)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i32, i32* @the_repository, align 4
  %15 = call %struct.commit* @lookup_commit_reference(i32 %14, %struct.object_id* %8)
  store %struct.commit* %15, %struct.commit** %9, align 8
  %16 = load %struct.commit*, %struct.commit** %9, align 8
  %17 = icmp ne %struct.commit* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.commit*, %struct.commit** %9, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %26 = load %struct.commit*, %struct.commit** %9, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @add_pending_object(%struct.rev_info* %25, %struct.TYPE_2__* %27, i8* %28)
  store i32 0, i32* %4, align 4
  br label %32

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %3
  store i32 -1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
