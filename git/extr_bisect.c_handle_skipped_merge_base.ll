; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_handle_skipped_merge_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_handle_skipped_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@current_bad_oid = common dso_local global %struct.object_id* null, align 8
@good_revs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [135 x i8] c"the merge base between %s and [%s] must be skipped.\0ASo we cannot be sure the first %s commit is between %s and %s.\0AWe continue anyway.\00", align 1
@term_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @handle_skipped_merge_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_skipped_merge_base(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %6 = load %struct.object_id*, %struct.object_id** %2, align 8
  %7 = call i8* @oid_to_hex(%struct.object_id* %6)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.object_id*, %struct.object_id** @current_bad_oid, align 8
  %9 = call i8* @oid_to_hex(%struct.object_id* %8)
  store i8* %9, i8** %4, align 8
  %10 = call i8* @join_sha1_array_hex(i32* @good_revs, i8 signext 32)
  store i8* %10, i8** %5, align 8
  %11 = call i32 @_(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @term_bad, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @warning(i32 %11, i8* %12, i8* %13, i32 %14, i8* %15, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @free(i8* %18)
  ret void
}

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @join_sha1_array_hex(i32*, i8 signext) #1

declare dso_local i32 @warning(i32, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
