; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/showmount/extr_showmount.c_print_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/showmount/extr_showmount.c_print_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountlist = type { i8*, i8*, %struct.mountlist*, %struct.mountlist* }

@type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_dump(%struct.mountlist* %0) #0 {
  %2 = alloca %struct.mountlist*, align 8
  store %struct.mountlist* %0, %struct.mountlist** %2, align 8
  %3 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %4 = icmp eq %struct.mountlist* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %44

6:                                                ; preds = %1
  %7 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %8 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %7, i32 0, i32 3
  %9 = load %struct.mountlist*, %struct.mountlist** %8, align 8
  %10 = icmp ne %struct.mountlist* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %13 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %12, i32 0, i32 3
  %14 = load %struct.mountlist*, %struct.mountlist** %13, align 8
  call void @print_dump(%struct.mountlist* %14)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load i32, i32* @type, align 4
  switch i32 %16, label %30 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %15
  %18 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %19 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %22 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  br label %35

25:                                               ; preds = %15
  %26 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %27 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %35

30:                                               ; preds = %15
  %31 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %32 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %25, %17
  %36 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %37 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %36, i32 0, i32 2
  %38 = load %struct.mountlist*, %struct.mountlist** %37, align 8
  %39 = icmp ne %struct.mountlist* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.mountlist*, %struct.mountlist** %2, align 8
  %42 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %41, i32 0, i32 2
  %43 = load %struct.mountlist*, %struct.mountlist** %42, align 8
  call void @print_dump(%struct.mountlist* %43)
  br label %44

44:                                               ; preds = %5, %40, %35
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
