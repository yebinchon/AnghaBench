; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm.c_scope_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm.c_scope_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unable to malloc scope object\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@scope_stack = common dso_local global i32 0, align 4
@scope_links = common dso_local global i32 0, align 4
@scope_stack_links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @scope_alloc() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call i64 @malloc(i32 4)
  %3 = inttoptr i64 %2 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %1, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %5 = icmp eq %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @EX_SOFTWARE, align 4
  %8 = call i32 @stop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 4)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @TAILQ_INIT(i32* %13)
  %15 = call %struct.TYPE_8__* @SLIST_FIRST(i32* @scope_stack)
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = call %struct.TYPE_8__* @SLIST_FIRST(i32* @scope_stack)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %21 = load i32, i32* @scope_links, align 4
  %22 = call i32 @TAILQ_INSERT_TAIL(i32* %19, %struct.TYPE_7__* %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %9
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = load i32, i32* @scope_stack_links, align 4
  %26 = call i32 @SLIST_INSERT_HEAD(i32* @scope_stack, %struct.TYPE_7__* %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %27
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stop(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.TYPE_8__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
