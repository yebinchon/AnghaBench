; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_edit.c_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_edit.c_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"re-edit the password file? \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fgetln()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @edit(i8* %0, %struct.passwd* %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.passwd*, %struct.passwd** %5, align 8
  %11 = call i32 @display(i8* %9, %struct.passwd* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %55

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %54, %14
  %16 = call i32 @pw_edit(i32 1)
  switch i32 %16, label %21 [
    i32 -1, label %17
    i32 0, label %18
  ]

17:                                               ; preds = %15
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %55

18:                                               ; preds = %15
  %19 = load %struct.passwd*, %struct.passwd** %5, align 8
  %20 = call %struct.passwd* @pw_dup(%struct.passwd* %19)
  store %struct.passwd* %20, %struct.passwd** %3, align 8
  br label %55

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.passwd*, %struct.passwd** %5, align 8
  %25 = call %struct.passwd* @verify(i8* %23, %struct.passwd* %24)
  store %struct.passwd* %25, %struct.passwd** %6, align 8
  %26 = icmp ne %struct.passwd* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load %struct.passwd*, %struct.passwd** %6, align 8
  store %struct.passwd* %28, %struct.passwd** %3, align 8
  br label %55

29:                                               ; preds = %22
  %30 = load %struct.passwd*, %struct.passwd** %6, align 8
  %31 = call i32 @free(%struct.passwd* %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  %35 = load i32, i32* @stdin, align 4
  %36 = call i8* @fgetln(i32 %35, i64* %8)
  store i8* %36, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %55

40:                                               ; preds = %29
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 78
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 110
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %55

54:                                               ; preds = %48, %40
  br label %15

55:                                               ; preds = %53, %38, %27, %18, %17, %13
  %56 = load %struct.passwd*, %struct.passwd** %3, align 8
  ret %struct.passwd* %56
}

declare dso_local i32 @display(i8*, %struct.passwd*) #1

declare dso_local i32 @pw_edit(i32) #1

declare dso_local %struct.passwd* @pw_dup(%struct.passwd*) #1

declare dso_local %struct.passwd* @verify(i8*, %struct.passwd*) #1

declare dso_local i32 @free(%struct.passwd*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgetln(i32, i64*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
