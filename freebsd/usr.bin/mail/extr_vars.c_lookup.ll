; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_vars.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_vars.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var = type { i8*, %struct.var* }

@variables = common dso_local global %struct.var** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.var* @lookup(i8* %0) #0 {
  %2 = alloca %struct.var*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.var*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.var**, %struct.var*** @variables, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @hash(i8* %6)
  %8 = getelementptr inbounds %struct.var*, %struct.var** %5, i64 %7
  %9 = load %struct.var*, %struct.var** %8, align 8
  store %struct.var* %9, %struct.var** %4, align 8
  br label %10

10:                                               ; preds = %33, %1
  %11 = load %struct.var*, %struct.var** %4, align 8
  %12 = icmp ne %struct.var* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.var*, %struct.var** %4, align 8
  %15 = getelementptr inbounds %struct.var, %struct.var* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.var*, %struct.var** %4, align 8
  %25 = getelementptr inbounds %struct.var, %struct.var* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @equal(i8* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.var*, %struct.var** %4, align 8
  store %struct.var* %31, %struct.var** %2, align 8
  br label %38

32:                                               ; preds = %23, %13
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.var*, %struct.var** %4, align 8
  %35 = getelementptr inbounds %struct.var, %struct.var* %34, i32 0, i32 1
  %36 = load %struct.var*, %struct.var** %35, align 8
  store %struct.var* %36, %struct.var** %4, align 8
  br label %10

37:                                               ; preds = %10
  store %struct.var* null, %struct.var** %2, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.var*, %struct.var** %2, align 8
  ret %struct.var* %39
}

declare dso_local i64 @hash(i8*) #1

declare dso_local i64 @equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
