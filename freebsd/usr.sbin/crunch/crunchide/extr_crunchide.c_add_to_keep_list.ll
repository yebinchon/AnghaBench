; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_add_to_keep_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_add_to_keep_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keep = type { %struct.keep*, i32* }

@keep_list = common dso_local global %struct.keep* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: out of memory for keep list\0A\00", align 1
@pname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_keep_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.keep*, align 8
  %4 = alloca %struct.keep*, align 8
  %5 = alloca %struct.keep*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.keep*, %struct.keep** @keep_list, align 8
  store %struct.keep* %7, %struct.keep** %5, align 8
  store %struct.keep* null, %struct.keep** %4, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.keep*, %struct.keep** %5, align 8
  %10 = icmp ne %struct.keep* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.keep*, %struct.keep** %5, align 8
  %14 = getelementptr inbounds %struct.keep, %struct.keep* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @strcmp(i8* %12, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %25

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.keep*, %struct.keep** %5, align 8
  store %struct.keep* %21, %struct.keep** %4, align 8
  %22 = load %struct.keep*, %struct.keep** %5, align 8
  %23 = getelementptr inbounds %struct.keep, %struct.keep* %22, i32 0, i32 0
  %24 = load %struct.keep*, %struct.keep** %23, align 8
  store %struct.keep* %24, %struct.keep** %5, align 8
  br label %8

25:                                               ; preds = %18, %8
  %26 = load %struct.keep*, %struct.keep** %5, align 8
  %27 = icmp ne %struct.keep* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %67

32:                                               ; preds = %28, %25
  %33 = call i64 @malloc(i32 16)
  %34 = inttoptr i64 %33 to %struct.keep*
  store %struct.keep* %34, %struct.keep** %3, align 8
  %35 = load %struct.keep*, %struct.keep** %3, align 8
  %36 = icmp ne %struct.keep* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %2, align 8
  %39 = call i32* @strdup(i8* %38)
  %40 = load %struct.keep*, %struct.keep** %3, align 8
  %41 = getelementptr inbounds %struct.keep, %struct.keep* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.keep*, %struct.keep** %3, align 8
  %44 = icmp eq %struct.keep* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.keep*, %struct.keep** %3, align 8
  %47 = getelementptr inbounds %struct.keep, %struct.keep* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @pname, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %45
  %56 = load %struct.keep*, %struct.keep** %5, align 8
  %57 = load %struct.keep*, %struct.keep** %3, align 8
  %58 = getelementptr inbounds %struct.keep, %struct.keep* %57, i32 0, i32 0
  store %struct.keep* %56, %struct.keep** %58, align 8
  %59 = load %struct.keep*, %struct.keep** %4, align 8
  %60 = icmp ne %struct.keep* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.keep*, %struct.keep** %3, align 8
  %63 = load %struct.keep*, %struct.keep** %4, align 8
  %64 = getelementptr inbounds %struct.keep, %struct.keep* %63, i32 0, i32 0
  store %struct.keep* %62, %struct.keep** %64, align 8
  br label %67

65:                                               ; preds = %55
  %66 = load %struct.keep*, %struct.keep** %3, align 8
  store %struct.keep* %66, %struct.keep** @keep_list, align 8
  br label %67

67:                                               ; preds = %31, %65, %61
  ret void
}

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
