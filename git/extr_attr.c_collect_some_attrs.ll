; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_collect_some_attrs.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_collect_some_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.attr_check = type { i32, i32, i32 }

@g_attr_hashmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i8*, %struct.attr_check*)* @collect_some_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_some_attrs(%struct.index_state* %0, i8* %1, %struct.attr_check* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.attr_check*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.attr_check* %2, %struct.attr_check** %6, align 8
  store i8* null, i8** %11, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %11, align 8
  br label %31

31:                                               ; preds = %29, %23, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %59

58:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.index_state*, %struct.index_state** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %64 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %63, i32 0, i32 2
  %65 = call i32 @prepare_attr_stack(%struct.index_state* %60, i8* %61, i32 %62, i32* %64)
  %66 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %67 = call i32 @all_attrs_init(i32* @g_attr_hashmap, %struct.attr_check* %66)
  %68 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %69 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %72 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @determine_macros(i32 %70, i32 %73)
  %75 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %76 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %82 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.attr_check*, %struct.attr_check** %6, align 8
  %85 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @fill(i8* %78, i32 %79, i32 %80, i32 %83, i32 %86, i32 %87)
  ret void
}

declare dso_local i32 @prepare_attr_stack(%struct.index_state*, i8*, i32, i32*) #1

declare dso_local i32 @all_attrs_init(i32*, %struct.attr_check*) #1

declare dso_local i32 @determine_macros(i32, i32) #1

declare dso_local i32 @fill(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
