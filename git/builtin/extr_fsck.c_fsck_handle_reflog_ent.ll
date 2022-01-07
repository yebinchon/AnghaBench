; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_handle_reflog_ent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_handle_reflog_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Checking reflog %s->%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* @fsck_handle_reflog_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_handle_reflog_ent(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i8*, i8** %14, align 8
  store i8* %16, i8** %15, align 8
  %17 = load i64, i64* @verbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.object_id*, %struct.object_id** %8, align 8
  %23 = call i32 @oid_to_hex(%struct.object_id* %22)
  %24 = load %struct.object_id*, %struct.object_id** %9, align 8
  %25 = call i32 @oid_to_hex(%struct.object_id* %24)
  %26 = call i32 @fprintf_ln(i32 %20, i32 %21, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %19, %7
  %28 = load i8*, i8** %15, align 8
  %29 = load %struct.object_id*, %struct.object_id** %8, align 8
  %30 = call i32 @fsck_handle_reflog_oid(i8* %28, %struct.object_id* %29, i32 0)
  %31 = load i8*, i8** %15, align 8
  %32 = load %struct.object_id*, %struct.object_id** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @fsck_handle_reflog_oid(i8* %31, %struct.object_id* %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @fprintf_ln(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @fsck_handle_reflog_oid(i8*, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
