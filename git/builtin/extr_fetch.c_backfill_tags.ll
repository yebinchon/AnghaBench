; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_backfill_tags.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_backfill_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.transport = type { i32, i32 }
%struct.ref = type { i32 }

@deepen_since = common dso_local global i64 0, align 8
@deepen_not = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gsecondary = common dso_local global %struct.transport* null, align 8
@TRANS_OPT_FOLLOWTAGS = common dso_local global i32 0, align 4
@TRANS_OPT_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@TRANS_OPT_DEEPEN_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transport*, %struct.ref*)* @backfill_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backfill_tags(%struct.transport* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  %6 = load %struct.transport*, %struct.transport** %3, align 8
  %7 = getelementptr inbounds %struct.transport, %struct.transport* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @deepen_since, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deepen_not, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %10, %2
  %17 = phi i1 [ true, %10 ], [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.transport*, %struct.transport** %3, align 8
  %23 = getelementptr inbounds %struct.transport, %struct.transport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.transport* @prepare_transport(i32 %24, i32 0)
  store %struct.transport* %25, %struct.transport** @gsecondary, align 8
  %26 = load %struct.transport*, %struct.transport** @gsecondary, align 8
  store %struct.transport* %26, %struct.transport** %3, align 8
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.transport*, %struct.transport** %3, align 8
  %29 = load i32, i32* @TRANS_OPT_FOLLOWTAGS, align 4
  %30 = call i32 @transport_set_option(%struct.transport* %28, i32 %29, i8* null)
  %31 = load %struct.transport*, %struct.transport** %3, align 8
  %32 = load i32, i32* @TRANS_OPT_DEPTH, align 4
  %33 = call i32 @transport_set_option(%struct.transport* %31, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.transport*, %struct.transport** %3, align 8
  %35 = load i32, i32* @TRANS_OPT_DEEPEN_RELATIVE, align 4
  %36 = call i32 @transport_set_option(%struct.transport* %34, i32 %35, i8* null)
  %37 = load %struct.transport*, %struct.transport** %3, align 8
  %38 = load %struct.ref*, %struct.ref** %4, align 8
  %39 = call i32 @fetch_refs(%struct.transport* %37, %struct.ref* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %27
  %42 = load %struct.transport*, %struct.transport** %3, align 8
  %43 = load %struct.ref*, %struct.ref** %4, align 8
  %44 = call i32 @consume_refs(%struct.transport* %42, %struct.ref* %43)
  br label %45

45:                                               ; preds = %41, %27
  %46 = load %struct.transport*, %struct.transport** @gsecondary, align 8
  %47 = icmp ne %struct.transport* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.transport*, %struct.transport** @gsecondary, align 8
  %50 = call i32 @transport_disconnect(%struct.transport* %49)
  store %struct.transport* null, %struct.transport** @gsecondary, align 8
  br label %51

51:                                               ; preds = %48, %45
  ret void
}

declare dso_local %struct.transport* @prepare_transport(i32, i32) #1

declare dso_local i32 @transport_set_option(%struct.transport*, i32, i8*) #1

declare dso_local i32 @fetch_refs(%struct.transport*, %struct.ref*) #1

declare dso_local i32 @consume_refs(%struct.transport*, %struct.ref*) #1

declare dso_local i32 @transport_disconnect(%struct.transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
