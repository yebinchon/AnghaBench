; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_process_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_process_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"shallow \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"protocol error: expected shallow sha-1, got '%s'\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"repository on the other end cannot be shallow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.oid_array*)* @process_shallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_shallow(i8* %0, i32 %1, %struct.oid_array* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oid_array*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.oid_array* %2, %struct.oid_array** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @skip_prefix(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @get_oid_hex(i8* %15, %struct.object_id* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i32, ...) @die(i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %24 = icmp ne %struct.oid_array* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 (i32, ...) @die(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %30 = call i32 @oid_array_append(%struct.oid_array* %29, %struct.object_id* %9)
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @check_no_capabilities(i8* %31, i32 %32)
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local i32 @check_no_capabilities(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
