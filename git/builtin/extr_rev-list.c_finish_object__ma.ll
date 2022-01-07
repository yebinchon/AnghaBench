; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-list.c_finish_object__ma.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-list.c_finish_object__ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i32 }

@arg_missing_action = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing %s object '%s'\00", align 1
@missing_objects = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected missing %s object '%s'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unhandled missing_action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*)* @finish_object__ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_object__ma(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %3 = load i32, i32* @arg_missing_action, align 4
  switch i32 %3, label %33 [
    i32 129, label %4
    i32 131, label %13
    i32 128, label %14
    i32 130, label %18
  ]

4:                                                ; preds = %1
  %5 = load %struct.object*, %struct.object** %2, align 8
  %6 = getelementptr inbounds %struct.object, %struct.object* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @type_name(i32 %7)
  %9 = load %struct.object*, %struct.object** %2, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 0
  %11 = call i32 @oid_to_hex(i32* %10)
  %12 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  br label %35

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.object*, %struct.object** %2, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = call i32 @oidset_insert(i32* @missing_objects, i32* %16)
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.object*, %struct.object** %2, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 0
  %21 = call i32 @is_promisor_object(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.object*, %struct.object** %2, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @type_name(i32 %27)
  %29 = load %struct.object*, %struct.object** %2, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 0
  %31 = call i32 @oid_to_hex(i32* %30)
  %32 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31)
  br label %35

33:                                               ; preds = %1
  %34 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %24, %23, %14, %13, %4
  ret void
}

declare dso_local i32 @die(i8*, i32, i32) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @oidset_insert(i32*, i32*) #1

declare dso_local i32 @is_promisor_object(i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
