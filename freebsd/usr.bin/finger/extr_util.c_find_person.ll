; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_find_person.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_find_person.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.passwd = type { i32 }

@db = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_person(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @db, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.passwd* @getpwnam(i8* %12)
  store %struct.passwd* %13, %struct.passwd** %4, align 8
  %14 = icmp ne %struct.passwd* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.passwd*, %struct.passwd** %4, align 8
  %17 = call i64 @hide(%struct.passwd* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %38

20:                                               ; preds = %15, %11
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @db, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)** %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @db, align 8
  %30 = call i64 %28(%struct.TYPE_7__* %29, %struct.TYPE_6__* %6, %struct.TYPE_6__* %5, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32* null, i32** %2, align 8
  br label %38

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @memmove(i32** %7, i8* %35, i32 8)
  %37 = load i32*, i32** %7, align 8
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %33, %32, %19, %10
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @hide(%struct.passwd*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i32**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
