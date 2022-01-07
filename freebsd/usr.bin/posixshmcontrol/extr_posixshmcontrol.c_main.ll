; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opmode = type { i32 (i32, i8**)*, i32 }

@opmodes = common dso_local global %struct.opmode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.opmode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.opmode* null, %struct.opmode** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  %13 = call i32 @exit(i32 2) #3
  unreachable

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.opmode*, %struct.opmode** @opmodes, align 8
  %18 = call i64 @nitems(%struct.opmode* %17)
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.opmode*, %struct.opmode** @opmodes, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.opmode, %struct.opmode* %25, i64 %27
  %29 = getelementptr inbounds %struct.opmode, %struct.opmode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i8* %24, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.opmode*, %struct.opmode** @opmodes, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.opmode, %struct.opmode* %34, i64 %36
  store %struct.opmode* %37, %struct.opmode** %6, align 8
  br label %42

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %15

42:                                               ; preds = %33, %15
  %43 = load %struct.opmode*, %struct.opmode** %6, align 8
  %44 = icmp eq %struct.opmode* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 (...) @usage()
  %47 = call i32 @exit(i32 2) #3
  unreachable

48:                                               ; preds = %42
  %49 = load %struct.opmode*, %struct.opmode** %6, align 8
  %50 = getelementptr inbounds %struct.opmode, %struct.opmode* %49, i32 0, i32 0
  %51 = load i32 (i32, i8**)*, i32 (i32, i8**)** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = call i32 %51(i32 %53, i8** %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @exit(i32 %57) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @nitems(%struct.opmode*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
