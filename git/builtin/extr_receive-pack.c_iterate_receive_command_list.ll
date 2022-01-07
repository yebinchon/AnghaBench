; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_iterate_receive_command_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_iterate_receive_command_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.iterate_data = type { %struct.TYPE_2__*, %struct.command* }
%struct.TYPE_2__ = type { i64* }
%struct.command = type { i64, %struct.command*, i32, i32 }

@shallow_update = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*)* @iterate_receive_command_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_receive_command_list(i8* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.iterate_data*, align 8
  %7 = alloca %struct.command**, align 8
  %8 = alloca %struct.command*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iterate_data*
  store %struct.iterate_data* %10, %struct.iterate_data** %6, align 8
  %11 = load %struct.iterate_data*, %struct.iterate_data** %6, align 8
  %12 = getelementptr inbounds %struct.iterate_data, %struct.iterate_data* %11, i32 0, i32 1
  store %struct.command** %12, %struct.command*** %7, align 8
  %13 = load %struct.command**, %struct.command*** %7, align 8
  %14 = load %struct.command*, %struct.command** %13, align 8
  store %struct.command* %14, %struct.command** %8, align 8
  br label %15

15:                                               ; preds = %54, %2
  %16 = load %struct.command*, %struct.command** %8, align 8
  %17 = icmp ne %struct.command* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load i64, i64* @shallow_update, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.iterate_data*, %struct.iterate_data** %6, align 8
  %23 = getelementptr inbounds %struct.iterate_data, %struct.iterate_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.command*, %struct.command** %8, align 8
  %28 = getelementptr inbounds %struct.command, %struct.command* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %54

34:                                               ; preds = %21, %18
  %35 = load %struct.command*, %struct.command** %8, align 8
  %36 = getelementptr inbounds %struct.command, %struct.command* %35, i32 0, i32 2
  %37 = call i32 @is_null_oid(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.command*, %struct.command** %8, align 8
  %41 = getelementptr inbounds %struct.command, %struct.command* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.object_id*, %struct.object_id** %5, align 8
  %46 = load %struct.command*, %struct.command** %8, align 8
  %47 = getelementptr inbounds %struct.command, %struct.command* %46, i32 0, i32 2
  %48 = call i32 @oidcpy(%struct.object_id* %45, i32* %47)
  %49 = load %struct.command*, %struct.command** %8, align 8
  %50 = getelementptr inbounds %struct.command, %struct.command* %49, i32 0, i32 1
  %51 = load %struct.command*, %struct.command** %50, align 8
  %52 = load %struct.command**, %struct.command*** %7, align 8
  store %struct.command* %51, %struct.command** %52, align 8
  store i32 0, i32* %3, align 4
  br label %60

53:                                               ; preds = %39, %34
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.command*, %struct.command** %8, align 8
  %56 = getelementptr inbounds %struct.command, %struct.command* %55, i32 0, i32 1
  %57 = load %struct.command*, %struct.command** %56, align 8
  store %struct.command* %57, %struct.command** %8, align 8
  br label %15

58:                                               ; preds = %15
  %59 = load %struct.command**, %struct.command*** %7, align 8
  store %struct.command* null, %struct.command** %59, align 8
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %44
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
