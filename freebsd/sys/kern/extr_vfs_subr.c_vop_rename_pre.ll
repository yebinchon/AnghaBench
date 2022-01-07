; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vop_rename_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vop_rename_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rename_args = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vop_rename_pre(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vop_rename_args*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vop_rename_args*
  store %struct.vop_rename_args* %5, %struct.vop_rename_args** %3, align 8
  %6 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @vhold(%struct.TYPE_5__* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @vhold(%struct.TYPE_5__* %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @vhold(%struct.TYPE_5__* %34)
  %36 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @vhold(%struct.TYPE_5__* %43)
  br label %45

45:                                               ; preds = %40, %31
  ret void
}

declare dso_local i32 @vhold(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
