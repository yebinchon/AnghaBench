; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/wtap/vis_map/extr_vis_map.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/wtap/vis_map/extr_vis_map.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"/dev/visctl\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@dev = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"error opening visctl cdev\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"wtap ioctl: unknown command '%c'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.link, align 8
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @usage(i8** %11)
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i64 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i64 %16, i64* @dev, align 8
  %17 = load i64, i64* @dev, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %14
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %7, align 1
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %73 [
    i32 111, label %29
    i32 99, label %31
    i32 97, label %33
    i32 100, label %53
  ]

29:                                               ; preds = %22
  %30 = call i32 @toggle_medium(i32 1)
  br label %81

31:                                               ; preds = %22
  %32 = call i32 @toggle_medium(i32 0)
  br label %81

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @usage(i8** %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @atoi(i8* %44)
  %46 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @atoi(i8* %49)
  %51 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = call i32 @link_op(%struct.link* %6)
  br label %81

53:                                               ; preds = %22
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @usage(i8** %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @atoi(i8* %64)
  %66 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @atoi(i8* %69)
  %71 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = call i32 @link_op(%struct.link* %6)
  br label %81

73:                                               ; preds = %22
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %60, %40, %31, %29
  %82 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @usage(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @toggle_medium(i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @link_op(%struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
