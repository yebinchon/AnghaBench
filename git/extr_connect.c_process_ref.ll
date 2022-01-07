; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_process_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_process_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.ref*, i32 }
%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".have\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"capabilities^{}\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"protocol error: unexpected capabilities^{}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.ref***, i32, %struct.oid_array*)* @process_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ref(i8* %0, i32 %1, %struct.ref*** %2, i32 %3, %struct.oid_array* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref***, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.oid_array*, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ref*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ref*** %2, %struct.ref**** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.oid_array* %4, %struct.oid_array** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @parse_oid_hex(i8* %15, %struct.object_id* %12, i8** %13)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %67

19:                                               ; preds = %5
  %20 = load i8*, i8** %13, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %67

25:                                               ; preds = %19
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %13, align 8
  %28 = load %struct.oid_array*, %struct.oid_array** %11, align 8
  %29 = icmp ne %struct.oid_array* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.oid_array*, %struct.oid_array** %11, align 8
  %36 = call i32 @oid_array_append(%struct.oid_array* %35, %struct.object_id* %12)
  br label %63

37:                                               ; preds = %30, %25
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @die(i32 %42)
  br label %62

44:                                               ; preds = %37
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @check_ref(i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i8*, i8** %13, align 8
  %51 = call %struct.ref* @alloc_ref(i8* %50)
  store %struct.ref* %51, %struct.ref** %14, align 8
  %52 = load %struct.ref*, %struct.ref** %14, align 8
  %53 = getelementptr inbounds %struct.ref, %struct.ref* %52, i32 0, i32 1
  %54 = call i32 @oidcpy(i32* %53, %struct.object_id* %12)
  %55 = load %struct.ref*, %struct.ref** %14, align 8
  %56 = load %struct.ref***, %struct.ref**** %9, align 8
  %57 = load %struct.ref**, %struct.ref*** %56, align 8
  store %struct.ref* %55, %struct.ref** %57, align 8
  %58 = load %struct.ref*, %struct.ref** %14, align 8
  %59 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 0
  %60 = load %struct.ref***, %struct.ref**** %9, align 8
  store %struct.ref** %59, %struct.ref*** %60, align 8
  br label %61

61:                                               ; preds = %49, %44
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @check_no_capabilities(i8* %64, i32 %65)
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %24, %18
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @check_ref(i8*, i32) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @check_no_capabilities(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
