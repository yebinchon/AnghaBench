; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_replace_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_replace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_name = type { i32, %struct.tag*, %struct.object_id }
%struct.tag = type { i64 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_name*, i32, %struct.object_id*, %struct.tag**)* @replace_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_name(%struct.commit_name* %0, i32 %1, %struct.object_id* %2, %struct.tag** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit_name*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.tag**, align 8
  %10 = alloca %struct.tag*, align 8
  store %struct.commit_name* %0, %struct.commit_name** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.tag** %3, %struct.tag*** %9, align 8
  %11 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %12 = icmp ne %struct.commit_name* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %15 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %4
  store i32 1, i32* %5, align 4
  br label %75

20:                                               ; preds = %13
  %21 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %22 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %74

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %74

28:                                               ; preds = %25
  %29 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %30 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %29, i32 0, i32 1
  %31 = load %struct.tag*, %struct.tag** %30, align 8
  %32 = icmp ne %struct.tag* %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @the_repository, align 4
  %35 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %36 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %35, i32 0, i32 2
  %37 = call %struct.tag* @lookup_tag(i32 %34, %struct.object_id* %36)
  store %struct.tag* %37, %struct.tag** %10, align 8
  %38 = load %struct.tag*, %struct.tag** %10, align 8
  %39 = icmp ne %struct.tag* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.tag*, %struct.tag** %10, align 8
  %42 = call i64 @parse_tag(%struct.tag* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %33
  store i32 1, i32* %5, align 4
  br label %75

45:                                               ; preds = %40
  %46 = load %struct.tag*, %struct.tag** %10, align 8
  %47 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %48 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %47, i32 0, i32 1
  store %struct.tag* %46, %struct.tag** %48, align 8
  br label %49

49:                                               ; preds = %45, %28
  %50 = load i32, i32* @the_repository, align 4
  %51 = load %struct.object_id*, %struct.object_id** %8, align 8
  %52 = call %struct.tag* @lookup_tag(i32 %50, %struct.object_id* %51)
  store %struct.tag* %52, %struct.tag** %10, align 8
  %53 = load %struct.tag*, %struct.tag** %10, align 8
  %54 = icmp ne %struct.tag* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.tag*, %struct.tag** %10, align 8
  %57 = call i64 @parse_tag(%struct.tag* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %49
  store i32 0, i32* %5, align 4
  br label %75

60:                                               ; preds = %55
  %61 = load %struct.tag*, %struct.tag** %10, align 8
  %62 = load %struct.tag**, %struct.tag*** %9, align 8
  store %struct.tag* %61, %struct.tag** %62, align 8
  %63 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %64 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %63, i32 0, i32 1
  %65 = load %struct.tag*, %struct.tag** %64, align 8
  %66 = getelementptr inbounds %struct.tag, %struct.tag* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tag*, %struct.tag** %10, align 8
  %69 = getelementptr inbounds %struct.tag, %struct.tag* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %75

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %25, %20
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %72, %59, %44, %19
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.tag* @lookup_tag(i32, %struct.object_id*) #1

declare dso_local i64 @parse_tag(%struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
