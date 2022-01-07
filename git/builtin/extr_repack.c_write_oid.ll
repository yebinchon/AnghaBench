; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_repack.c_write_oid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_repack.c_write_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.child_process = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"could not start pack-objects to repack promisor objects\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.packed_git*, i32, i8*)* @write_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_oid(%struct.object_id* %0, %struct.packed_git* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.child_process*, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.packed_git* %1, %struct.packed_git** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.child_process*
  store %struct.child_process* %11, %struct.child_process** %9, align 8
  %12 = load %struct.child_process*, %struct.child_process** %9, align 8
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.child_process*, %struct.child_process** %9, align 8
  %18 = call i64 @start_command(%struct.child_process* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @die(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.child_process*, %struct.child_process** %9, align 8
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.object_id*, %struct.object_id** %5, align 8
  %29 = call i8* @oid_to_hex(%struct.object_id* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xwrite(i32 %27, i8* %29, i32 %32)
  %34 = load %struct.child_process*, %struct.child_process** %9, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xwrite(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  ret i32 0
}

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xwrite(i32, i8*, i32) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
