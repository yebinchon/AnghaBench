; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_check_aliased_updates.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_check_aliased_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.command = type { i32, %struct.command*, i32 }
%struct.string_list_item = type { i8* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*)* @check_aliased_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_aliased_updates(%struct.command* %0) #0 {
  %2 = alloca %struct.command*, align 8
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.string_list, align 4
  %5 = alloca %struct.string_list_item*, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  %6 = bitcast %struct.string_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %7 = load %struct.command*, %struct.command** %2, align 8
  store %struct.command* %7, %struct.command** %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.command*, %struct.command** %3, align 8
  %10 = icmp ne %struct.command* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.command*, %struct.command** %3, align 8
  %13 = getelementptr inbounds %struct.command, %struct.command* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.string_list_item* @string_list_append(%struct.string_list* %4, i32 %14)
  store %struct.string_list_item* %15, %struct.string_list_item** %5, align 8
  %16 = load %struct.command*, %struct.command** %3, align 8
  %17 = bitcast %struct.command* %16 to i8*
  %18 = load %struct.string_list_item*, %struct.string_list_item** %5, align 8
  %19 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %11
  %21 = load %struct.command*, %struct.command** %3, align 8
  %22 = getelementptr inbounds %struct.command, %struct.command* %21, i32 0, i32 1
  %23 = load %struct.command*, %struct.command** %22, align 8
  store %struct.command* %23, %struct.command** %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = call i32 @string_list_sort(%struct.string_list* %4)
  %26 = load %struct.command*, %struct.command** %2, align 8
  store %struct.command* %26, %struct.command** %3, align 8
  br label %27

27:                                               ; preds = %39, %24
  %28 = load %struct.command*, %struct.command** %3, align 8
  %29 = icmp ne %struct.command* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.command*, %struct.command** %3, align 8
  %32 = getelementptr inbounds %struct.command, %struct.command* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.command*, %struct.command** %3, align 8
  %37 = call i32 @check_aliased_update(%struct.command* %36, %struct.string_list* %4)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.command*, %struct.command** %3, align 8
  %41 = getelementptr inbounds %struct.command, %struct.command* %40, i32 0, i32 1
  %42 = load %struct.command*, %struct.command** %41, align 8
  store %struct.command* %42, %struct.command** %3, align 8
  br label %27

43:                                               ; preds = %27
  %44 = call i32 @string_list_clear(%struct.string_list* %4, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.string_list_item* @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @check_aliased_update(%struct.command*, %struct.string_list*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
