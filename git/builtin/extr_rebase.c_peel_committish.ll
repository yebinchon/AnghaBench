; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_peel_committish.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_peel_committish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.object = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (i8*)* @peel_committish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @peel_committish(i8* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.object_id, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @get_oid(i8* %6, %struct.object_id* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @the_repository, align 4
  %12 = call %struct.object* @parse_object(i32 %11, %struct.object_id* %5)
  store %struct.object* %12, %struct.object** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.object*, %struct.object** %4, align 8
  %15 = load i32, i32* @OBJ_COMMIT, align 4
  %16 = call i64 @peel_to_type(i8* %13, i32 0, %struct.object* %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.commit*
  store %struct.commit* %17, %struct.commit** %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %19
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @peel_to_type(i8*, i32, %struct.object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
