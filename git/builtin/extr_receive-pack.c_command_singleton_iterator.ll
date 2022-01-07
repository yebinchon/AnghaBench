; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_command_singleton_iterator.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_command_singleton_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.command = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*)* @command_singleton_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_singleton_iterator(i8* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.command**, align 8
  %7 = alloca %struct.command*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.command**
  store %struct.command** %9, %struct.command*** %6, align 8
  %10 = load %struct.command**, %struct.command*** %6, align 8
  %11 = load %struct.command*, %struct.command** %10, align 8
  store %struct.command* %11, %struct.command** %7, align 8
  %12 = load %struct.command*, %struct.command** %7, align 8
  %13 = icmp ne %struct.command* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.command*, %struct.command** %7, align 8
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 0
  %17 = call i64 @is_null_oid(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 -1, i32* %3, align 4
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.command**, %struct.command*** %6, align 8
  store %struct.command* null, %struct.command** %21, align 8
  %22 = load %struct.object_id*, %struct.object_id** %5, align 8
  %23 = load %struct.command*, %struct.command** %7, align 8
  %24 = getelementptr inbounds %struct.command, %struct.command* %23, i32 0, i32 0
  %25 = call i32 @oidcpy(%struct.object_id* %22, i32* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
