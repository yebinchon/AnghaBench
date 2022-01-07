; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_setup_default_push_refspecs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_setup_default_push_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32 }
%struct.branch = type { i32 }

@push_default = common dso_local global i32 0, align 4
@rs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"You didn't specify any refspecs to push, and push.default is \22nothing\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*)* @setup_default_push_refspecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_default_push_refspecs(%struct.remote* %0) #0 {
  %2 = alloca %struct.remote*, align 8
  %3 = alloca %struct.branch*, align 8
  %4 = alloca i32, align 4
  store %struct.remote* %0, %struct.remote** %2, align 8
  %5 = call %struct.branch* @branch_get(i32* null)
  store %struct.branch* %5, %struct.branch** %3, align 8
  %6 = load %struct.remote*, %struct.remote** %2, align 8
  %7 = call i32 @is_workflow_triangular(%struct.remote* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @push_default, align 4
  switch i32 %8, label %9 [
    i32 132, label %10
    i32 129, label %12
    i32 130, label %12
    i32 128, label %25
    i32 133, label %30
    i32 131, label %34
  ]

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9
  %11 = call i32 @refspec_append(i32* @rs, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %37

12:                                               ; preds = %1, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.remote*, %struct.remote** %2, align 8
  %17 = load %struct.branch*, %struct.branch** %3, align 8
  %18 = call i32 @setup_push_current(%struct.remote* %16, %struct.branch* %17)
  br label %24

19:                                               ; preds = %12
  %20 = load %struct.remote*, %struct.remote** %2, align 8
  %21 = load %struct.branch*, %struct.branch** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @setup_push_upstream(%struct.remote* %20, %struct.branch* %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %15
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.remote*, %struct.remote** %2, align 8
  %27 = load %struct.branch*, %struct.branch** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @setup_push_upstream(%struct.remote* %26, %struct.branch* %27, i32 %28, i32 0)
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.remote*, %struct.remote** %2, align 8
  %32 = load %struct.branch*, %struct.branch** %3, align 8
  %33 = call i32 @setup_push_current(%struct.remote* %31, %struct.branch* %32)
  br label %37

34:                                               ; preds = %1
  %35 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @die(i32 %35)
  br label %37

37:                                               ; preds = %34, %30, %25, %24, %10
  ret void
}

declare dso_local %struct.branch* @branch_get(i32*) #1

declare dso_local i32 @is_workflow_triangular(%struct.remote*) #1

declare dso_local i32 @refspec_append(i32*, i8*) #1

declare dso_local i32 @setup_push_current(%struct.remote*, %struct.branch*) #1

declare dso_local i32 @setup_push_upstream(%struct.remote*, %struct.branch*, i32, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
