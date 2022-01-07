; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_get_remote_heads.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_get_remote_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32, i32 }
%struct.ref = type { i32 }
%struct.oid_array = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"invalid packet\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"protocol error: unexpected '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref** @get_remote_heads(%struct.packet_reader* %0, %struct.ref** %1, i32 %2, %struct.oid_array* %3, %struct.oid_array* %4) #0 {
  %6 = alloca %struct.packet_reader*, align 8
  %7 = alloca %struct.ref**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.oid_array*, align 8
  %10 = alloca %struct.oid_array*, align 8
  %11 = alloca %struct.ref**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.packet_reader* %0, %struct.packet_reader** %6, align 8
  store %struct.ref** %1, %struct.ref*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.oid_array* %3, %struct.oid_array** %9, align 8
  store %struct.oid_array* %4, %struct.oid_array** %10, align 8
  %14 = load %struct.ref**, %struct.ref*** %7, align 8
  store %struct.ref** %14, %struct.ref*** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 134, i32* %13, align 4
  %15 = load %struct.ref**, %struct.ref*** %7, align 8
  store %struct.ref* null, %struct.ref** %15, align 8
  br label %16

16:                                               ; preds = %73, %5
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 135
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  %20 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %21 = call i32 @packet_reader_read(%struct.packet_reader* %20)
  switch i32 %21, label %32 [
    i32 130, label %22
    i32 128, label %24
    i32 129, label %28
    i32 131, label %29
  ]

22:                                               ; preds = %19
  %23 = call i32 @die_initial_contact(i32 1)
  br label %24

24:                                               ; preds = %19, %22
  %25 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %26 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  br label %32

28:                                               ; preds = %19
  store i32 135, i32* %13, align 4
  br label %32

29:                                               ; preds = %19
  %30 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i32, ...) @die(i32 %30)
  br label %32

32:                                               ; preds = %29, %19, %28, %24
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %73 [
    i32 134, label %34
    i32 133, label %46
    i32 132, label %57
    i32 135, label %72
  ]

34:                                               ; preds = %32
  %35 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %36 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @process_capabilities(i32 %37, i32* %12)
  %39 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %40 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @process_dummy_ref(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 132, i32* %13, align 4
  br label %73

45:                                               ; preds = %34
  store i32 133, i32* %13, align 4
  br label %46

46:                                               ; preds = %32, %45
  %47 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %48 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.oid_array*, %struct.oid_array** %9, align 8
  %53 = call i32 @process_ref(i32 %49, i32 %50, %struct.ref*** %7, i32 %51, %struct.oid_array* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %73

56:                                               ; preds = %46
  store i32 132, i32* %13, align 4
  br label %57

57:                                               ; preds = %32, %56
  %58 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %59 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.oid_array*, %struct.oid_array** %10, align 8
  %63 = call i32 @process_shallow(i32 %60, i32 %61, %struct.oid_array* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %73

66:                                               ; preds = %57
  %67 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %69 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, ...) @die(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %32, %66
  br label %73

73:                                               ; preds = %32, %72, %65, %55, %44
  br label %16

74:                                               ; preds = %16
  %75 = load %struct.ref**, %struct.ref*** %11, align 8
  %76 = load %struct.ref*, %struct.ref** %75, align 8
  %77 = call i32 @annotate_refs_with_symref_info(%struct.ref* %76)
  %78 = load %struct.ref**, %struct.ref*** %7, align 8
  ret %struct.ref** %78
}

declare dso_local i32 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @die_initial_contact(i32) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @process_capabilities(i32, i32*) #1

declare dso_local i32 @process_dummy_ref(i32) #1

declare dso_local i32 @process_ref(i32, i32, %struct.ref***, i32, %struct.oid_array*) #1

declare dso_local i32 @process_shallow(i32, i32, %struct.oid_array*) #1

declare dso_local i32 @annotate_refs_with_symref_info(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
