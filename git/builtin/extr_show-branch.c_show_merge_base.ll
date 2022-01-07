; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_show_merge_base.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_show_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@REV_SHIFT = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_list*, i32)* @show_merge_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_merge_base(%struct.commit_list* %0, i32 %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @REV_SHIFT, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %10, %11
  %13 = shl i32 1, %12
  %14 = sub i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @REV_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = sub i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %54, %2
  %22 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %23 = icmp ne %struct.commit_list* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = call %struct.commit* @pop_commit(%struct.commit_list** %3)
  store %struct.commit* %25, %struct.commit** %8, align 8
  %26 = load %struct.commit*, %struct.commit** %8, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @UNINTERESTING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.commit*, %struct.commit** %8, align 8
  %44 = getelementptr inbounds %struct.commit, %struct.commit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @oid_to_hex(i32* %45)
  %47 = call i32 @puts(i32 %46)
  store i32 0, i32* %7, align 4
  %48 = load i32, i32* @UNINTERESTING, align 4
  %49 = load %struct.commit*, %struct.commit** %8, align 8
  %50 = getelementptr inbounds %struct.commit, %struct.commit* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %42, %36, %24
  br label %21

55:                                               ; preds = %21
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
