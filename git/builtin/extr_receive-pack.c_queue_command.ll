; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_queue_command.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { %struct.command*, i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"protocol error: expected old/new/ref, got '%s'\00", align 1
@ref_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command** (%struct.command**, i8*, i32)* @queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command** @queue_command(%struct.command** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.command**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.command*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.command** %0, %struct.command*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @parse_oid_hex(i8* %13, %struct.object_id* %7, i8** %12)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %12, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %12, align 8
  %24 = call i64 @parse_oid_hex(i8* %23, %struct.object_id* %8, i8** %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %12, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %22, %16, %3
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i8*, i8** %12, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sub nsw i64 %38, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load %struct.command*, %struct.command** %9, align 8
  %47 = load i32, i32* @ref_name, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @FLEX_ALLOC_MEM(%struct.command* %46, i32 %47, i8* %48, i32 %49)
  %51 = load %struct.command*, %struct.command** %9, align 8
  %52 = getelementptr inbounds %struct.command, %struct.command* %51, i32 0, i32 2
  %53 = call i32 @oidcpy(i32* %52, %struct.object_id* %7)
  %54 = load %struct.command*, %struct.command** %9, align 8
  %55 = getelementptr inbounds %struct.command, %struct.command* %54, i32 0, i32 1
  %56 = call i32 @oidcpy(i32* %55, %struct.object_id* %8)
  %57 = load %struct.command*, %struct.command** %9, align 8
  %58 = load %struct.command**, %struct.command*** %4, align 8
  store %struct.command* %57, %struct.command** %58, align 8
  %59 = load %struct.command*, %struct.command** %9, align 8
  %60 = getelementptr inbounds %struct.command, %struct.command* %59, i32 0, i32 0
  ret %struct.command** %60
}

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.command*, i32, i8*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
