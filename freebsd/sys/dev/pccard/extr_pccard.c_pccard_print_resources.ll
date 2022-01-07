; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_print_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_print_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_list*, i8*, i32, i32, i8*)* @pccard_print_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pccard_print_resources(%struct.resource_list* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.resource_list_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.resource_list* %0, %struct.resource_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %69, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %19, i32 %20, i32 %21)
  store %struct.resource_list_entry* %22, %struct.resource_list_entry** %11, align 8
  %23 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %24 = icmp ne %struct.resource_list_entry* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %42 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* %40, i8* %43)
  %45 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %46 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %53 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %56 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = call i32 (i8*, ...) @printf(i8* %51, i8* %60)
  br label %62

62:                                               ; preds = %49, %37
  br label %68

63:                                               ; preds = %18
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %72

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %14

72:                                               ; preds = %66, %14
  ret void
}

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
