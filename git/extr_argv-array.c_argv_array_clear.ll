; ModuleID = '/home/carl/AnghaBench/git/extr_argv-array.c_argv_array_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_argv-array.c_argv_array_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i8*, i32 }

@empty_argv = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argv_array_clear(%struct.argv_array* %0) #0 {
  %2 = alloca %struct.argv_array*, align 8
  %3 = alloca i32, align 4
  store %struct.argv_array* %0, %struct.argv_array** %2, align 8
  %4 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %5 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** @empty_argv, align 8
  %8 = icmp ne i8* %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %13 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %18 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %32 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %37 = call i32 @argv_array_init(%struct.argv_array* %36)
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @argv_array_init(%struct.argv_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
